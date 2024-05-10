package com.example.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.MemberVO;
import com.example.service.MemberService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping(value = "/member")
@AllArgsConstructor

public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	MemberService memberservice;
	
	//마이페이지 이동
	@GetMapping("mypage")
	public String mypage(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) {
		
		HttpSession session = request.getSession();
		String memberId = "test1";
		session.setAttribute("memberId", memberId);
    
        
        return "member/mypage";
    }
	
}
