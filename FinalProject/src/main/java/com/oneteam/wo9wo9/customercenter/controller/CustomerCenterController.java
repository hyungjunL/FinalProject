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
import com.oneteam.wo9wo9.customercenter.model.vo.PageInfo;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;

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
		int result = customerCenterService.viewCount(noticeNo);
		System.out.println(notice.getCount());
		
		
		
		if(result > 0) {
		
			model.addAttribute("notice", notice);
			model.addAttribute("nextNotice", nextNotice);
			model.addAttribute("beforeNotice", beforeNotice);
			
			//응답뷰 지정
			return "customercenter/noticedetail";
		}
		else {
			// 실패 했다면
			return "redirect:notice.do";
		}
		
		
	}
	
	@GetMapping("/notice.do")
	public String notice(
			@RequestParam int currentPage
			,Model model) {
		int listCount; 
		int pageLimit; 
		int boardLimit; 
		
		int maxPage; 
		int startPage; 
		int endPage; 
		
		listCount = customerCenterService.selectAllListCount();
		System.out.println("리스트 카운트 : " + listCount);
		
		pageLimit = 10;

		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		List<Notice> list = customerCenterService.notice(pi); 
		System.out.println(list);
		System.out.println(pi.getCurrentPage());
		System.out.println(listCount);
		System.out.println(pi.getPageLimit());
		System.out.println(pi.getBoardLimit());
		System.out.println(pi.getMaxPage());
		System.out.println(pi.getStartPage());
		System.out.println(pi.getEndPage());
		
		model.addAttribute("currentPage", pi.getCurrentPage());
		model.addAttribute("listCount", listCount);
		model.addAttribute("pageLimit", pi.getPageLimit());
		model.addAttribute("boardLimit", pi.getBoardLimit());
		model.addAttribute("maxPage", pi.getMaxPage());
		model.addAttribute("startPage", pi.getStartPage());
		model.addAttribute("endPage", pi.getEndPage());
		
		model.addAttribute("list", list);
		
		return "customercenter/notice";
	}
	
	@GetMapping("/faq.do")
	public String faq() {
		return "customercenter/faq";
	}
	
	@GetMapping("/onevsone.do")
	public String onevsone(
			@RequestParam int currentPage,
			Model model) {
		
		int listCount; 
		int pageLimit; 
		int boardLimit; 
		
		int maxPage; 
		int startPage; 
		int endPage;
		
		listCount = customerCenterService.questionListCount();
		System.out.println("리스트 카운트 1:1 문의 : " + listCount);
		
		pageLimit = 10;

		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		
		List<Question> list = customerCenterService.questionList(pi);
		System.out.println(list);
		System.out.println(pi.getCurrentPage());
		System.out.println(listCount);
		System.out.println(pi.getPageLimit());
		System.out.println(pi.getBoardLimit());
		System.out.println(pi.getMaxPage());
		System.out.println(pi.getStartPage());
		System.out.println(pi.getEndPage());
		
		model.addAttribute("currentPage", pi.getCurrentPage());
		model.addAttribute("listCount", listCount);
		model.addAttribute("pageLimit", pi.getPageLimit());
		model.addAttribute("boardLimit", pi.getBoardLimit());
		model.addAttribute("maxPage", pi.getMaxPage());
		model.addAttribute("startPage", pi.getStartPage());
		model.addAttribute("endPage", pi.getEndPage());
		
		
		model.addAttribute("list", list);
		
		return "customercenter/onevsone";
	}
	
	@GetMapping("/onedetail.do")
	public String onedetail() {
		return "customercenter/onevsonedetail";
	}
	
	@GetMapping("/search.do")
	public String search(
			@RequestParam String keyword,
			@RequestParam int currentPage,
			Model model) {
		
		int listCount; 
		int pageLimit; 
		int boardLimit; 
		
		int maxPage; 
		int startPage; 
		int endPage; 
		
		listCount = customerCenterService.selectSearchListCount(keyword);
		System.out.println("리스트 카운트 : " + listCount);
		
		pageLimit = 10;

		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		List<Notice> list = customerCenterService.search(keyword,pi); 
		
		System.out.println(currentPage);
		model.addAttribute("currentPage", pi.getCurrentPage());
		model.addAttribute("listCount", listCount);
		model.addAttribute("pageLimit", pi.getPageLimit());
		model.addAttribute("boardLimit", pi.getBoardLimit());
		model.addAttribute("maxPage", pi.getMaxPage());
		model.addAttribute("startPage", pi.getStartPage());
		model.addAttribute("endPage", pi.getEndPage());
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("list",list);
		
		
		return "customercenter/notice";
	}
	
}
