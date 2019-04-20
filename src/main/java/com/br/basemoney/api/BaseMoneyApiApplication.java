package com.br.basemoney.api;

import com.br.basemoney.api.config.property.BaseMoneyApiProperty;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties(BaseMoneyApiProperty.class)
public class BaseMoneyApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(BaseMoneyApiApplication.class, args);
    }

}
