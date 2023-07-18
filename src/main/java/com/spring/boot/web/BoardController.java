package com.spring.boot.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.boot.model.BoardDto;
import com.spring.boot.service.BoardService;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/main")
    public String mainForm() {

        return "index";
    }
	
	@GetMapping("/about-qman")
    public String aboutForm() {

        return "about_qman";
    }
	
	@GetMapping("/about-qman/album")
    public String albumForm() {

        return "about_qman_album";
    }
	
	@GetMapping("/about-qman/youtube")
    public String youtubeForm() {

        return "about_qman_youtube";
    }
	
	@GetMapping("/board/list")
    public String boardList(Model model) {
		
		Map<String, Object> data = boardService.selectPageList();
		
		model.addAttribute("dataList", data.get("dataList"));

        return "board_list";
    }
	
	@GetMapping("/board/write")
    public String boardWrite() {

        return "board_write";
    }
	
	@PostMapping("/board/writeProc")
    @ResponseBody
	public Map<String,Object> writeBoardWriteProc(@RequestBody BoardDto dto){
		
		Map<String,Object> data = null;
		
		try {
			data = boardService.registBoard(dto);
		}
		catch(Exception e) {
			 System.out.println(e.getMessage());
		}
		return data;
	}

}
