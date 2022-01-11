package com.kh.spring03.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.spring03.model.vo.Member;

@Controller
@RequestMapping("/member") // 공용 주소로 맵핑한다. => 권장사항
public class MemberController {
	
	// 기존) 요청1개 (url 맴핑주소 1개) == 1개의 서블릿(클래스)
	// Spring) 요청1개 (url 맵핑주소 1개) == 1개의 메소드
	
	// 회원가입 폼을 띄어주는 요청(== GET 방식으로 지정해서 요청할 수 있음)
	//@RequestMapping("/join.do") //join.do로 요청(get / post 방식이든 다 받아침)
	
	//join.do 라는 요청이 들어왔을 떄 처리를 할 컨트롤러인데 그중에서도 get방식의 요청만받겠다.
	//(서블릿으로 따지면 doGet() 메소드와 동일한 역할)
	//@RequestMapping(value="/join.do", method=RequestMethod.GET)
	@GetMapping("/join.do") //위와 같은 의미 , Spring 4 버전부터 지원하는 어노테이션
	public String join() {
		
		return "join"; //view resolver 설정으로 인하여 접두어, 접미어 생략된 형태
		//view resolver가 없으면 "/WEB-INF/views/join.jsp"로 적어야한다.
	}
	// 회원가입 처리를 해주는 요청(== POST 방식으로 지정해서 요청을 받겠다고 어노테이션 추가)
	// join.do 라는 요청이 들어왔을 때 처리를 컨트롤러인데 그중에서도 POST 방식의 요청만 받겠다.
	// (서블릿으로 따지면 doPost() 메소드와 동일한 역할)
	//@RequestMapping(value="/join.do", method=RequestMethod.POST)
//	@PostMapping("/join.do")
//	public String joinSuccess(HttpServletRequest request) {
//		
//		// 값을 뽑고
//		String userId = request.getParameter("userId");
//		String userPwd = request.getParameter("userPwd");
//		String nickName = request.getParameter("nickName");
//		
//		System.out.println(userId);
//		System.out.println(userPwd);
//		System.out.println(nickName);
//		
//		// vo 객체로 가공
//		
//		// service로 토스
//		
//		// 결과값에 따라서 수화물 붙이고
//		
//		// 응답뷰 지정
//		
//		return "joinSuccess";
//	}
	//값을 뽑아오는 방식2 : @RequestParam 어노테이션을 이용하는 방식
//	@PostMapping("/join.do")
//	public String joinSuccess(@RequestParam String userId,
//							  @RequestParam String userPwd,
//							  @RequestParam(required = false) String nickName) {
//		//주의사항(룰) : 키값과 매개변수명이 반드시 일치해야 한다.
//		//=> 어노테이션에 옵션을 부여할 수 있다.
//		// required 옵션: 필수 입력사항이 아닌경우 required = false 속성을 부여할 수 있다.
//		//(다시 확인)
//		//단점 : 너무 많으면 가독성이 떨어진다.
//		
//		//값 뽑고
//		System.out.println(userId);
//		System.out.println(userPwd);
//		System.out.println(nickName);
//		//vo 객체로 가공
//		
//		// Service단으로 토스
//		
//		//결과값에 따라서 수하물 먼저 붙이고
//		
//		//응답뷰 지정
//		
//		return "joinSuccess";
//		
//	}
	// join.do 라는 동일한 주소로 GET, POST의 연속된 처리를 할 수 있다.
	@PostMapping("/join.do")
	public String joinSuccess(@ModelAttribute Member m, Model model) {
		//주의 사항(룰) : 키값과 해당vo객체의 필드명이 동일해야만 함
		// 값 뽑기
		
		// VO 객체로 가공
		//=> 한큐에 묶어서 처리해주겠다.
		//=> 필요한 값이 있다면 해당 객체의 getter 메소드로 필드값을 뽑아서 쓴다!
		System.out.println(m.getUserId());
		System.out.println(m.getUserPwd());
		System.out.println(m.getNickName());
		
		// Service 단으로 토스
		
		// 결과에 따라서 수하물 먼저 붙이고
		model.addAttribute("m",m);
		//응답뷰 지정
		
		return "joinSuccess";
	}
}






