package com.example.demo.mem.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	MemberRepository memberRepository;
	
	public int join(Member m) {
		return memberRepository.insert(m);
	}
	public Map<?,?> login(Member m) {
		return memberRepository.selectById(m);
	}

}
