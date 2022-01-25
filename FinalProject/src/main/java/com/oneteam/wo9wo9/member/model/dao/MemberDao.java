package com.oneteam.wo9wo9.member.model.dao;

import com.oneteam.wo9wo9.member.model.vo.Member;

public interface MemberDao {

	//추상메소드 틀 정의
	
	//로그인 기능 메소드 틀
	Member login(Member member);
	
	// 아이디 중복 체크 메소드
	Member idCheck(Member member);
	
	// 회원가입
	int join(Member member);
	
	// 아이디 찾기
	Member findId(Member member);


	// 비밀번호 찾기
	Member findPwd(Member member);
	
	// 이메일 중복 체크
	int emailCheck(String email);
	
	
}
s