package com.ylzb.nursing.service;

import java.util.List;

public interface ChatHistoryService {


    /**
     * 保存聊天历史
     * @param userId
     * @param chatId
     */
    public void save(String userId,String chatId);

    /**
     * 获取聊天历史
     * @param userId
     * @return
     */
    List<String> getChatIds(Long userId);

    /**
     * 删除聊天历史
     * @param chatId
     */
    void delChatHistory(String chatId);

}