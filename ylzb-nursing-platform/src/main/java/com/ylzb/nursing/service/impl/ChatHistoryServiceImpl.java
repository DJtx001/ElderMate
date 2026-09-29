package com.ylzb.nursing.service.impl;

import com.ylzb.common.utils.SecurityUtils;
import com.ylzb.nursing.service.ChatHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.Set;


@Service
public class ChatHistoryServiceImpl implements ChatHistoryService {


    @Autowired
    private RedisTemplate<String,String> redisTemplate;

    private static final String CHAT_HISTORY_PREFIX = "chat:history:";

    /**
     * 保存聊天历史
     * @param userId
     * @param chatId
     */
    @Override
    public void save(String userId, String chatId) {
        redisTemplate.opsForSet().add(CHAT_HISTORY_PREFIX+userId,chatId);
    }

    /**
     * 获取聊天历史
     * @param userId
     * @return
     */
    @Override
    public List<String> getChatIds(Long userId) {

        Set<String> chatIds = redisTemplate.opsForSet().members(CHAT_HISTORY_PREFIX + userId);
        if(chatIds == null || chatIds.isEmpty()){
            return List.of();
        }
        //最好排个序
        List<String> list = chatIds.stream().sorted(Comparator.comparing(String::toString)).toList();

        return list;
    }

    /**
     * 删除聊天历史
     *
     * @param chatId
     */
    @Override
    public void delChatHistory(String chatId) {
        redisTemplate.opsForSet().remove(CHAT_HISTORY_PREFIX + SecurityUtils.getUserId(),chatId);
    }
}