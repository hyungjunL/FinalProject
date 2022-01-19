package com.oneteam.wo9wo9.member.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oneteam.wo9wo9.member.model.service.MemberService;
import com.oneteam.wo9wo9.member.model.vo.Member;

@Controller
@RequestMapping("/member")
public class memberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/join.do")
	public String join() {
		return "member/memberJoin";
	}
	
	@PostMapping("/join.do")
	public String join(
			@ModelAttribute Member member,
			HttpSession session) {
		
		// INSERT 문 => 처리된 행의 갯
		int result = memberService.join(member);
		
		// 결과에 따라서 응답뷰 지정
		if(result >0 ) { //로그인 성공
			
			session.setAttribute("alertMsg", "회원가입 성공  ><");
			
			return "member/memberJoinOk";
		}
		else {
			
			session.setAttribute("alertMsg", "아이디가 중복되어 회원가입에 실패하였습니다. OTL");
			
			return "redirect:join.do?error";
		}
	}
	
	@GetMapping("/joinSuccess.do")
	public String joinSuccess() {
		return "member/joinSuccess";
	}
	
	// 로그인
	@GetMapping("/login.do")
	public String login() {
		return "member/memberLogin";
	}
	
	@PostMapping("/login.do")
	public String login(
			@ModelAttribute Member member,
			HttpSession session) {
		
		// VO로 가공까지는 @ModelAttribute가 해서 전달해줌(완제품)
		// VO 객체(Member member) 를 Service 단으로 토스
		Member loginUser = memberService.login(member);
		
		System.out.print(loginUser);
		
		// 결과에 따른 응답뷰 지정
		if(loginUser == null) {  //로그인 실패
			
			session.setAttribute("alertMsg", "로그인 실패");
			
			return "redirect:/member/login.do";
			
		}
		else {
			session.setAttribute("alertMsg", "로그인 성공");
			
			// session 에 로그인한 회원의 저보 담기
			session.setAttribute("loginUser", loginUser);
			
			return "redirect:/customercenter/notice.do";
		}
	}
	
	@GetMapping("findId.do")
	public String findId() {
		return "member/memberFindId";
	}

	@PostMapping("findId.do")
	public String findId(
			@ModelAttribute Member member,
			HttpSession session,
			Model model) {

		Member findUserId = memberService.findId(member);
		
		System.out.println("findUserId.getId -" + findUserId.getMemberId());
		
		// 결과에 따른 응답뷰 지정
		if(findUserId==null){ 
			
			
			session.setAttribute("alertMsg", "아이디 찾기 실패");
			
		}
		else {
			
			//model.addAttribute("id", findUserId.getMemberId());
			session.setAttribute("id", findUserId.getMemberId());
			
			
			
		}
		return "redirect:/member/findId.do";
		
	}
	
	@GetMapping("/findIdSuccess.do")
	public String memberIdResult() {
		return "member/memberIdResult";
	}
	
	@GetMapping("findPwd.do")
	public String findPwd() {
		return "member/memberFindPwd";
	}
	
	@PostMapping("findPwd.do")
	public String findPwd(
			@ModelAttribute Member member,
			HttpSession session,
			Model model) {

		Member findUserPwd = memberService.findPwd(member);

		// 결과에 따른 응답뷰 지정
		if(findUserPwd == null) {  //로그인 실패
			
			session.setAttribute("alertMsg", "비밀번호 찾기 실패");
			
		}
		else {
			
			model.addAttribute("pwd", findUserPwd.getMemberPwd());
			
			session.setAttribute("pwd", findUserPwd.getMemberPwd());
			
		}
		
		return "redirect:/member/findPwd.do";
		
	}

	

}