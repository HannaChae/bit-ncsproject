package com.example.demo.mem.service;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberRepository {

	public int insert(Member m);
	public Member selectById(Member m);

}
