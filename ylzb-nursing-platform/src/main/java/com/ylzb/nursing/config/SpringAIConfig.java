package com.ylzb.nursing.config;

import com.ylzb.nursing.constans.SystemConstants;
import com.ylzb.nursing.tools.WeatherTools;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.openai.OpenAiChatModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SpringAIConfig {

    /**
     * 创建并返回一个ChatClient的Spring Bean实例。
     * @param openAiChatModel
     * @return
     */
    @Bean
    public ChatClient chatClient(OpenAiChatModel openAiChatModel, WeatherTools weatherTools) {
        return ChatClient
                .builder(openAiChatModel)
                .defaultSystem(SystemConstants.prompt)
                .defaultTools(weatherTools)
                .build();
    }
}