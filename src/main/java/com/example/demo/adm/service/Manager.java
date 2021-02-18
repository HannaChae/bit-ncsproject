package com.example.demo.adm.service;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Component @Lazy @Data
@NoArgsConstructor @AllArgsConstructor
public class Manager {
	private String email, password;
}
