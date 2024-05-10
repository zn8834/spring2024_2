package com.example.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.MemberVO;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.example.config.RootConfig.class} )
public class MemberMapperTests {

	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper membermapper;
	
//	@Test
//	public void memberJoin() {
//		MemberVO member = new MemberVO();
//		
//		member.setMemberId("spring_test1");
//		member.setMemberPw("spring_test");
//		member.setMemberName("spring_test");
//		member.setMemberNick("spring_test");
//		member.setMemberMail("spring_test");
//		member.setMemberMail1("spring_test");
//		member.setMemberAddr1("spring_test");
//		member.setMemberAddr2("spring_test");
//		member.setMemberAddr3("spring_test");
//		
//		membermapper.memberJoin(member);
//		
//	}
	
	/* 로그인 쿼리 mapper 메서드 테스트 */
    @Test
    public void memberLogin() {
        
        MemberVO member = new MemberVO();    // MemberVO 변수 선언 및 초기화
//        
//        /* 올바른 아이디 비번 입력경우 */
//        member.setMemberId("test1");
//        member.setMemberPw("test1");
        
        /* 올바른 않은 아이디 비번 입력경우 */
        member.setMemberId("test1123");
        member.setMemberPw("test1321321");
        
        membermapper.memberLogin(member);
        System.out.println("결과 값 : " + membermapper.memberLogin(member));
        
    }
}
