package com.example.demo.mem.web;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.cmm.enm.Messenger;
import com.example.demo.mem.service.Member;
import com.example.demo.mem.service.MemberRepository;
import com.example.demo.mem.service.MemberService;



@RestController
@RequestMapping("/members")
public class MemberController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired MemberRepository memberRepository;
	@Autowired MemberService memberService;
	
	@PostMapping("")
	public Messenger join(@RequestBody Member m) {
        logger.info("컨트롤러에 들어옴");
		return (memberService.join(m) == 1) ? Messenger.SUCCESS : Messenger.FAILURE;
	}
	
	@PostMapping("/login")
	public Map<?,?> login(@RequestBody Member m){
		return memberRepository.selectById(m);
	}
}
