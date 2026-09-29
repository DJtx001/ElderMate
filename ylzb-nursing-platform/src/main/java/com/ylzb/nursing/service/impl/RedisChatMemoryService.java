package com.ylzb.nursing.service.impl;

import cn.hutool.json.JSONUtil;
import com.ylzb.common.utils.StringUtils;
import com.ylzb.nursing.domain.vo.Msg;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.messages.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

@Component
public class RedisChatMemoryService implements ChatMemory {

    @Autowired
    private RedisTemplate<String,String> redisTemplate;

    private static final String PREFIX = "chat:memory:";

    /**
     *
     * @param conversationId    会话id
     * @param messages   消息数组
     */
    @Override
    public void add(String conversationId, List<Message> messages) {
        if(messages == null || messages.isEmpty()){
            return;
        }
        //把message集合中的数据转换为Msg
        List<String> msgList = new ArrayList<>();
        for (Message message : messages) {
            Msg msg = new Msg(message);
            msgList.add(JSONUtil.toJsonStr(msg));
        }

        //存储到redis中
        redisTemplate.opsForList().leftPushAll(PREFIX+conversationId,msgList);

    }

    @Override
    public List<Message> get(String conversationId) {
        //从redis中获取数据
        List<String> resultList = redisTemplate.opsForList().range(PREFIX + conversationId, 0, Integer.MAX_VALUE);
        if(null == resultList || resultList.isEmpty()){
            return List.of();
        }
        //排序并转换
        return resultList.stream()
                .map(s -> JSONUtil.toBean(s, Msg.class))
                .sorted(Comparator.comparing(Msg::getCreateTime))
                .map(Msg::toMessage)
                .toList();
    }

    @Override
    public void clear(String conversationId) {
        redisTemplate.delete(PREFIX+conversationId);
    }
}