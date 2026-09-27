package com.ylzb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 启动程序
 * 
 * @author ruoyi
 */
@SpringBootApplication
public class YlzbApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(com.ylzb.YlzbApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  养老智伴启动成功   ლ(´ڡ`ლ)ﾞ ");
    }
}
