package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.demo.mem.service.Member;

@Controller
@SessionAttributes({"ctx", "mem", "cmm", "prdt"})
public class HomeController {
	@Autowired HttpSession session;
	@Autowired HttpServletRequest request;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home(HttpSession session, HttpServletRequest request) {
		logger.info("ctx");
		String ctx = request.getContextPath();
		session.setAttribute("ctx", ctx);
		session.setAttribute("mem", ctx+"/resources/mem");
		session.setAttribute("cmm", ctx+"/resources/cmm");
		session.setAttribute("prdt", ctx + "/resources/prd");
		return "index";
	}
		
	@GetMapping("/move/{dir}/{page}")
	public String move(@PathVariable String dir, @PathVariable String page) {
		logger.info("이동한 경로: " + dir + "/" + page);
		return String.format("views:%s/%s", dir, page);
	}
}