package com.ylzb.nursing.tools;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import com.ylzb.nursing.domain.NursingLevel;
import com.ylzb.nursing.domain.NursingPlan;
import com.ylzb.nursing.domain.NursingProject;
import com.ylzb.nursing.domain.vo.NursingLevelVo;
import com.ylzb.nursing.domain.vo.NursingProjectPlanVo;
import com.ylzb.nursing.mapper.NursingLevelMapper;
import com.ylzb.nursing.mapper.NursingPlanMapper;
import com.ylzb.nursing.mapper.NursingProjectMapper;
import com.ylzb.nursing.mapper.NursingProjectPlanMapper;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.ai.tool.annotation.ToolParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 护理业务查询工具集：供大模型在对话中按需调用，
 * 让 AI 能回答"有哪些护理计划/等级、价格多少、某等级/计划包含哪些护理项"等业务数据问题。
 */
@Component
public class NursingTools {

    @Autowired
    private NursingPlanMapper nursingPlanMapper;
    @Autowired
    private NursingLevelMapper nursingLevelMapper;
    @Autowired
    private NursingProjectPlanMapper nursingProjectPlanMapper;
    @Autowired
    private NursingProjectMapper nursingProjectMapper;

    /**
     * 护理项明细（计划-项目关联 + 项目基础信息合并后的扁平结构，便于模型直接读取）
     */
    public record PlanItemInfo(
            Long planId,
            Long projectId,
            String projectName,
            String unit,
            BigDecimal price,
            String nursingRequirement,
            String executeTime,
            Integer executeCycle,
            Integer executeFrequency
    ) {}

    @Tool(description = "查询养老院所有的护理计划列表，返回每个计划的id、名称、排序号、启用状态。用于用户询问'有哪些护理计划'、'护理计划是什么'、'列出护理计划'等。")
    public List<NursingPlan> listNursingPlans() {
        return nursingPlanMapper.selectNursingPlanList(new NursingPlan());
    }

    @Tool(description = "按护理计划ID查询该计划包含的所有护理项明细，返回每项的名称、单位、单价、护理要求及执行时间/周期/频次。用于用户询问'某个护理计划里有哪些护理项'、'这个计划包含什么服务'。参数planId可先调用 listNursingPlans 获取。")
    public List<PlanItemInfo> listProjectsByPlan(
            @ToolParam(description = "护理计划ID，可先调用 listNursingPlans 获取") Long planId) {
        List<NursingProjectPlanVo> planVos = nursingProjectPlanMapper.selectByPlanId(planId);
        return enrichItems(planVos);
    }

    @Tool(description = "查询养老院所有的护理等级，返回每个等级的名称、护理费用(fee)、绑定的护理计划名称(planName)与计划ID(lplanId)、等级说明(description)、启用状态。用于用户询问'有哪些护理等级'、'等级价格多少'、'各等级收费多少'、'等级说明'等。")
    public List<NursingLevelVo> listNursingLevels() {
        return nursingLevelMapper.selectNursingLevelList(new NursingLevel());
    }

    @Tool(description = "按护理等级ID查询该等级对应的护理项明细。会先根据等级绑定的护理计划ID(lplanId)查找该计划下的所有护理项。用于用户询问'某个等级包含哪些护理项'、'特级护理有什么服务'、'这个等级具体做什么'。参数levelId可先调用 listNursingLevels 获取。")
    public List<PlanItemInfo> listProjectsByLevel(
            @ToolParam(description = "护理等级ID，可先调用 listNursingLevels 获取") Long levelId) {
        NursingLevel level = nursingLevelMapper.selectNursingLevelById(levelId);
        if (level == null || level.getLplanId() == null) {
            return List.of();
        }
        List<NursingProjectPlanVo> planVos = nursingProjectPlanMapper.selectByPlanId(level.getLplanId());
        return enrichItems(planVos);
    }

    /**
     * 将 计划-项目关联记录 与 项目基础信息 合并为扁平的 PlanItemInfo 列表
     */
    private List<PlanItemInfo> enrichItems(List<NursingProjectPlanVo> planVos) {
        if (planVos == null || planVos.isEmpty()) {
            return List.of();
        }
        // 收集所有 projectId，批量查询项目基础信息，避免逐条查询
        List<Long> projectIds = planVos.stream()
                .map(NursingProjectPlanVo::getProjectId)
                .filter(Objects::nonNull)
                .map(NursingTools::parseLong)
                .filter(Objects::nonNull)
                .distinct()
                .collect(Collectors.toList());
        Map<Long, NursingProject> projectMap = projectIds.isEmpty()
                ? Map.of()
                : nursingProjectMapper.selectBatchIds(projectIds).stream()
                        .collect(Collectors.toMap(NursingProject::getId, p -> p, (a, b) -> a));
        return planVos.stream().map(vo -> {
            Long pid = parseLong(vo.getProjectId());
            NursingProject proj = pid == null ? null : projectMap.get(pid);
            return new PlanItemInfo(
                    vo.getPlanId(),
                    pid,
                    proj == null ? null : proj.getName(),
                    proj == null ? null : proj.getUnit(),
                    proj == null ? null : proj.getPrice(),
                    proj == null ? null : proj.getNursingRequirement(),
                    vo.getExecuteTime(),
                    vo.getExecuteCycle(),
                    vo.getExecuteFrequency()
            );
        }).collect(Collectors.toList());
    }

    private static Long parseLong(String s) {
        if (s == null || s.isBlank()) {
            return null;
        }
        try {
            return Long.parseLong(s.trim());
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
