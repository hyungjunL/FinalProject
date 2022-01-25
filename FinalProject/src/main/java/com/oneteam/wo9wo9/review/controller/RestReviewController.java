package com.oneteam.wo9wo9.review.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.oneteam.wo9wo9.review.Service.reviewService;
import com.oneteam.wo9wo9.review.vo.Review;



@RestController
@RequestMapping("/reply")
public class RestReviewController { 
	
	@Autowired
	private reviewService ReviewService;
	
	@GetMapping("/list.do")
	public List<Review> reviewList() {
		
		List<Review> list = ReviewService.reviewList();
		System.out.println("list는? " + list);
		return list;
		
	}
	
	
	@PostMapping("/insert.do")
	public int insertList(@RequestParam String content,
			  @RequestParam String memberName,
			  @RequestParam int point) {
		
		
		Map<Object,Object> param = new HashMap<>();
		param.put("memberName", memberName);
		param.put("content", content);
		param.put("point", point);
		System.out.println("이름: " + memberName);
		int result = ReviewService.insertList(param);
		System.out.println("아이작스 리절트 : " + result);
		return result;
		
	}
	
}
