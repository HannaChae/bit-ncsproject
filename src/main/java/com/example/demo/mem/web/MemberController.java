package com.example.demo.mem.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.demo.mem.service.Member;
import com.example.demo.mem.service.MemberRepository;
import com.example.demo.mem.service.MemberService;



@RestController
@SessionAttributes("result")
@RequestMapping(value = "/members", method = {RequestMethod.GET, RequestMethod.POST})
public class MemberController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired MemberRepository memberRepository;
	@Autowired MemberService memberService;
	
	@PostMapping("/join")
	public Map<?,?> join(@RequestBody Member m) {
		var map = new HashMap<>();
        map.put("message", (memberService.join(m) == 1) ? "SUCCESS" : "FAILURE");
		return map;
	}
	
	@PostMapping("/login")
	public Map<?,?> login(@RequestBody Member m, Model model){
		var map = new HashMap<>();
        Member result = memberService.login(m);
        map.put("message", result != null ? "SUCCESS" : "FAILURE");
        map.put("sessionMember", result);
        model.addAttribute("result", result);
		logger.info("로그인: "+ m.toString());
        return map;
	}
	@PutMapping("/modify")
	public Map<?,?> modify(@RequestBody Member m){
		var map = new HashMap<>();
		logger.info("정보 수정: "+ m.toString());
		map.put("message", (memberService.modify(m) == 1? "SUCCESS" : "FAILURE"));
		return map;
	}
	@DeleteMapping("/withdrawal")
	public Map<?,?> withdrawal(@SessionAttribute("result") Member m){
		var map = new HashMap<>();
		logger.info("탈퇴: "+ m.toString());
		map.put("message", (memberService.withdrawal(m) == 1? "SUCCESS" : "FAILURE"));
		return map;
	}
}
