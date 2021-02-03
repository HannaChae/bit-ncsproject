package com.example.demo.mem.web;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.cmm.enm.Messenger;
import com.example.demo.mem.service.Member;
import com.example.demo.mem.service.MemberRepository;
import com.example.demo.mem.service.MemberService;



@RestController
@RequestMapping(value = "/members", method = {RequestMethod.GET, RequestMethod.POST})
public class MemberController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired MemberRepository memberRepository;
	@Autowired MemberService memberService;
	
	@PostMapping("")
	public Map<?,?> join(@RequestBody Member m) {
		var map = new HashMap<>();
        logger.info("회원 정보: " + m.toString());
        map.put("message", (memberService.join(m) == 1) ? "SUCCESS" : "FAILURE");
		return map;
	}
	
	@PostMapping("/login")
	public Map<?,?> login(@RequestBody Member m){
		var map = new HashMap<>();
        logger.info("회원 정보: " + m.toString());
        Member result = memberService.login(m);
        map.put("message", result != null ? "SUCCESS" : "FAILURE");
        map.put("sessionMember", result);
        return map;
	}
}
