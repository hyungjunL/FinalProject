package com.kh.spring03.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/multi") //공용주소 맵핑
public class MultiController {
	
	//항상 컨트롤러의 메소드 위에다가
	//Get 이라던지 Post 던지 간에 url 주소를 맵핑해야한다.
	//화면을 띄울 땐 @GetMapping을 쓴다. (굳이 민감정보가 들어갈 일이 없으니까)
	
	@GetMapping("/test.do")
	public String test() {
		
		//응답뷰 띄우기
		return "test"; // "/WEB-INF/views/test.jsp"
		
	}
	
	@PostMapping("/test.do")
	public String test(
					   @RequestParam(required = false) ArrayList<String> fruit,
					   Model model) {
		// Spring 에서는 체크박스의 경우String[] 형태뿐만 아니라
		// ArrayList<String> 형식으로도 받을 수 있다.
		
		//체크박스의 경우 @RequestParam String[] 키값 형태로 매개변수로써 값을 전달 받을 수 있다.
		// 키값이랑 매개변수명은 반드시 동일해야한다.
		// 아무것도 체크 안하고 넘길경우 fruit = null;
		// 향상된 for문
		//required 속성 false하면 아무것도 체크 안해도 오류가 안뜸 만약 속성을 추가 안하고 아무것도 체크안하면 400오류뜸
		
		if(fruit != null) {
			for(String f : fruit) {
				System.out.println(f);
			}
		}
		//VO 객체로 가공 => Service 단으로 토스 => 결과값(다 했다라는 가정 하에)
		
		//수화물 붙이기 : request.setAttribute("키", "벨류") 
		//Model 이라는 객체를 이용(매개변수로 전달받아서) => Spring방식
		//사용되는 메ㅗㅅ드 : model.addAttribute("키", "밸류");
		model.addAttribute("fruit",fruit);
		
		//화면이 넘어가지 않고 기존 화면으로 재요청(redirect)
		return "testResult";
	}
	
}
