package com.oneteam.wo9wo9.customercenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oneteam.wo9wo9.customercenter.model.service.CustomerCenterService;
import com.oneteam.wo9wo9.customercenter.model.vo.Notice;

@Controller
@RequestMapping("/customercenter")
public class CustomerCenterController {
	
	@Autowired
	private CustomerCenterService customerCenterService; 
	
	@GetMapping("/maincenter.do")
	public String maincenter() {
		
		return "customercenter/maincenter";
	}
	
	@GetMapping("/write.do")
	public String write() {
		
		return "customercenter/write";
	}
	
	@GetMapping("/detail.do")
	public String detail(
			@RequestParam int noticeNo,
			Model model) {
		
		Notice notice = customerCenterService.detail(noticeNo);
		Notice nextNotice = customerCenterService.nextDetail(noticeNo);
		Notice beforeNotice = customerCenterService.beforeDetail(noticeNo);
		
		System.out.println(notice.getNoticeNo());
		
		model.addAttribute("notice", notice);
		model.addAttribute("nextNotice", nextNotice);
		model.addAttribute("beforeNotice", beforeNotice);
		
		
		return "customercenter/noticedetail";
	}
	
	@GetMapping("/notice.do")
	public String notice(Model model) {
		
		List<Notice> list = customerCenterService.notice(); 
		
		System.out.println(list);
		
		model.addAttribute("list", list);
		
		return "customercenter/notice";
	}
	
	@GetMapping("/faq.do")
	public String faq() {
		return "customercenter/faq";
	}
	
	@GetMapping("/onevsone.do")
	public String onevsone() {
		return "customercenter/onevsone";
	}
	
	@GetMapping("/onedetail.do")
	public String onedetail() {
		return "customercenter/onevsonedetail";
	}
	
	
	
//	@GetMapping("/detail.do")
//	public String detail(
//			@RequestParam int boardNo,
//			Model model) {
//		
//		// 게시글 조회 FLOW
//		// => 조회수 증가 먼저, 성공했다면 SELECT 문을 실행
//		
//		// 조회수 증가
//		int result = customerCenterService.increaseCount(boardNo);
//		
//		if(result > 0) {
//			// 조회수 증가가 성공했다면
//			Notice notice = customerCenterService.content(boardNo);
//			// 수하물 붙이기
//			model.addAttribute("notice",notice);
//			
//			//응답뷰 지정
//			return "customercenter/noticedetail";
//		}
//		else {
//			// 실패 했다면
//			return "redirect:union.do";
//		}
//		
//	}
}
