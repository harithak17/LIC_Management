package com.insurence;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

import com.insurence.controller.PageController;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
public class SmartprotectPortalApplication {

	public static void main(String[] args) {
		new File(PageController.uploadDirectory).mkdir();
		SpringApplication.run(SmartprotectPortalApplication.class, args);
	}

}
