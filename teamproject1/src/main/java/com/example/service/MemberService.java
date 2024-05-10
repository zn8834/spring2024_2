package com.example.service;

import com.example.domain.MemberVO;

public interface MemberService {
	
	//회원가입
	public void memberJoin(MemberVO member);
	
	//아이디 중복체크
	public int idCheck(String memberId);
	
	//로그인
	public MemberVO memberLogin(MemberVO member);
	
	//회원정보 수정
//	public void memberUpdate(MemberVO member);
	
}
