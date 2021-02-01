package com.example.demo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@GetMapping("/")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
		
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@GetMapping("/mem/{page}")
	public String member(@PathVariable String page) {
        logger.info("이동 파일: " + page);
        return String.format("mem:%s", page);
	}
	
	@GetMapping("/cmm/{page}")
	public String common(@PathVariable String page) {
        logger.info("이동 파일: " + page);
        return String.format("cmm:%s", page);
	}
}
