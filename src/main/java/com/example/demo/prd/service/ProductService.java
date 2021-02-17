package com.example.demo.prd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	@Autowired ProductRepository productRepository;
	public int add(Product prd) {return productRepository.insert(prd);}
	public int update(Product prd) {return productRepository.update(prd);}
	public int delete(Product prd) {return productRepository.delete(prd);}
}
