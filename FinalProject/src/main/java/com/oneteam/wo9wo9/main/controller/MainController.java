package com.oneteam.wo9wo9.main.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oneteam.wo9wo9.main.model.service.MainService;
import com.oneteam.wo9wo9.main.model.vo.Main;

@Controller
@RequestMapping("main")
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	// 메인화면 띄움 + 베스트 반찬 추천
	@GetMapping("/main.do")
	public String main(
			Model model) {
		
		//List<Main> list =  mainService.sideBest();
		
		//model.addAttribute("list", list);
		
		//System.out.println(list);
		
		// 반찬 베스트 3
		List<Main> bestSelfImg = mainService.bestSelfImg();
		
		model.addAttribute("bestSelfImg", bestSelfImg);
		System.out.println("bset : "+ bestSelfImg );
		// 패키지 베스트
		List<Main> bestPackage = mainService.bestPackage();
		
		model.addAttribute("bestPackage", bestPackage);
		
		//System.out.println("bestPackage" + bestPackage);
		
		// 밥 베스트 1
		List<Main> bestRice = mainService.bestRice();
		
		model.addAttribute("bestRice", bestRice);
		
		//System.out.println("bestRice" + bestRice);
		
		// 국 베스트
		List<Main> bestSoup = mainService.bestSoup();
		
		model.addAttribute("bestSoup", bestSoup);
		
		//MD 추천
		List<Main> mdPick = mainService.mdPick();
		
		model.addAttribute("mdPick", mdPick);
		
		
		
		
		
		return "common/main";
	}
	
	// 반찬 검색
	@GetMapping("/sideSearch.mi")
	public String sideSearch(
			@RequestParam String keyword,
			Model model) {
		
		//System.out.println(keyword);
		
        List<Main> list = mainService.sideSearch(keyword);
        
        //System.out.println(list);
        
        model.addAttribute("list", list);
        
        
		
		return "common/sideSearch";
	}
	
	
	
}
