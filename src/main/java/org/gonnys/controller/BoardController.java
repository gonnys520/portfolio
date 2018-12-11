package org.gonnys.controller;

import org.gonnys.domain.BoardVO;
import org.gonnys.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	//Get List
	@GetMapping("/list")
	public void getList(Model model) {
		
		log.info("get List..............");
		model.addAttribute("list", service.getList());
	}
	
	//Get Register
	@GetMapping("/register")
	public void registerGET() {
		
		log.info("get register............");
		
	}
	
	//Post Register
	@PostMapping("/register")
	public String registerPOST(BoardVO board, RedirectAttributes redirect) {
		
		
		redirect.addFlashAttribute("result", service.register(board));
		
		log.info("POST REGISTER : " + service.register(board));
		
		return "redirect:/board/list";
		

	}
	
	//Get Read, modify
	@GetMapping({"/read", "/modify"})
	public void read(@RequestParam("bno") int bno, Model model) {
		log.info( service.read(bno));
		log.info( "get read or modify");
		model.addAttribute("board", service.read(bno));
	}
	
	//Post Modify
	@PostMapping("/modify")
	public String modifyPOST(BoardVO board, RedirectAttributes redirect) {
		
		log.info("post modify............");
		redirect.addFlashAttribute("result", service.modify(board));
		
		return "redirect:/board/read?bno=" + board.getBno();
	}
	
	//Post Remove
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") int bno, RedirectAttributes redirect) {
		 
		int count = service.remove(bno);
		redirect.addFlashAttribute("result", count ==1? "success" : "fail");
		
		log.info("POST REMOVE");
		
		return "redirect:/board/list";
	}
		


}
