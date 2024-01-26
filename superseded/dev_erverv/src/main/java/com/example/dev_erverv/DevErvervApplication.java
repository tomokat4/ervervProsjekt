package com.example.dev_erverv;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DevErvervApplication {

	public static void main(String[] args) {
		SpringApplication.run(DevErvervApplication.class, args);
	}

	@GetMapping
	public String hello(){
		return "Hello world";
	}

}

@Entity
@Table
public class Forbund{

}
