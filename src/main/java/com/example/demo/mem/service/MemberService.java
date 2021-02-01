package com.example.demo.mem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	MemberRepository memberRepository;
	
	public int join(Member member) {
		return memberRepository.insert(member);
	}

}
