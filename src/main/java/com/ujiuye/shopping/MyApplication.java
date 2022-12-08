package com.ujiuye.shopping;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

/**
 * Created by IBM on 2020/8/28.
 */
@SpringBootApplication
@ServletComponentScan
public class MyApplication {

    public static void main(String[] args) {

        SpringApplication.run(MyApplication.class);
    }
}
