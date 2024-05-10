package com.example.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.MemberVO;
import com.example.service.MemberService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping(value = "/member")
@AllArgsConstructor
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	private MemberService memberservice;
	
		//회원가입 페이지 이동
		@GetMapping("join")
		public void loginGET() {
			
			logger.info("회원가입 페이지 진입");
			
		}
		
		
		
		//회원가입
		@PostMapping("/join")
		public String joinPOST(MemberVO member) {
			
			logger.info("join 진입");
			
			// 회원가입 서비스 실행
			memberservice.memberJoin(member);
			
			logger.info("join Service 성공");
			
			return "redirect:/main/mainPage";
			
		}
		
		@PostMapping("/memberIdChk")
		@ResponseBody
		public String memberIdChkPOST(String memberId) {
			
			logger.info("memberIdChk() 진입");
			
			int result = memberservice.idCheck(memberId);
			
			logger.info("결과값 = " + result);
			
			if(result != 0) {
				
				return "fail";	// 중복 아이디가 존재
				
			} else {
				
				return "success";	// 중복 아이디 x
				
			}	
			
		}
		
		@GetMapping("/logout.do")
	    public String logoutMainGET(HttpServletRequest request) {
	        
			logger.info("logoutMainGET메서드 진입");
	        
	        HttpSession session = request.getSession();
	        
	        session.invalidate();
	        
	        return "redirect:/main/mainPage";    
	    	
	    }
		
		
		

}
