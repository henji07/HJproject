package com.spring.boot.web;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.boot.model.BoardDto;
import com.spring.boot.model.MemberDto;
import com.spring.boot.service.BoardService;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	/* 메인 */
	@GetMapping("/")
    public String mainForm() {

        return "index";
    }
	
	/* 구만에 대하여 */
	@GetMapping("/about-qman")
    public String aboutForm() {

        return "about_qman";
    }
	
	/* 구만에 대하여 - 앨범 소개 */
	@GetMapping("/about-qman/album")
    public String albumForm() {

        return "about_qman_album";
    }
	
	/* 구만에 대하여 - 유튜브 */
	@GetMapping("/about-qman/youtube")
    public String youtubeForm() {

        return "about_qman_youtube";
    }
	
	/* 구만에게 - 게시판 목록 */
	@GetMapping("/board/list")
    public String boardList(Model model) {
		
		Map<String, Object> data = boardService.selectPageList();
		
		model.addAttribute("dataList", data.get("dataList"));

        return "board_list";
    }
	
	/* 구만에게 - 게시판 글쓰기 화면 */
	@GetMapping("/board/write")
    public String boardWrite(HttpSession session) {
		
		if (session.getAttribute("member") == null) {
	        // 로그인하지 않은 사용자를 로그인 페이지로 리다이렉트
	        return "redirect:/login";
	    }

        return "board_write";
    }
	
	/* 구만에게 - 게시판 글쓰기 */
	@PostMapping("/board/write")
    @ResponseBody
	public Map<String,Object> writeBoardWrite(@RequestBody BoardDto dto, HttpSession session){
		
		Map<String,Object> data = null;
		
		data = boardService.registBoard(dto, session);
		
		System.out.println("컨트롤러"+data);

		return data;
	}
	
	/* 구만에게 - 글 조회 */
	@GetMapping("/board/{brdNo}")
    public String boardDetail(@PathVariable("brdNo") int brdNo, Model model, HttpSession session) {
		
		System.out.println("brdNo" + brdNo);
		
		boardService.updateBoardCnt(brdNo);
		
		BoardDto data = boardService.selectBoard(brdNo);
		Map<String, Object> memberInfo = (Map<String, Object>) session.getAttribute("member");
		MemberDto member = null;
		
		if (memberInfo != null && memberInfo.containsKey("memberInfo")) {
	        member = (MemberDto) memberInfo.get("memberInfo");
	        System.out.println("컨트롤러"+member);
	    } else {
	        System.err.println("컨트롤러"+"세션 정보 또는 멤버 정보가 존재하지 않습니다!");
	    }

	    model.addAttribute("boardData", data);
	    model.addAttribute("brdNo", brdNo);

	    if(member != null){
	        model.addAttribute("loginMmbrNm", member.getMmbrNm());
	    }

        return "board_view";
    }
	
	/* 구만에게 - 글 수정 화면으로 */
	@GetMapping("/board/{brdNo}/update")
	public String showUpdateBoardForm(@PathVariable("brdNo") int brdNo, Model model) {
		
	    BoardDto board = boardService.selectBoard(brdNo);
	    
	    model.addAttribute("boardData", board);
	    
	    return "board_modify";
	}
	
	/* 구만에게 - 글 수정 */
	@PostMapping("/board/{brdNo}/update")
	@ResponseBody
	public Map<String, Object> updateBoard(@PathVariable("brdNo") int brdNo, @RequestBody Map<String,Object> data) {

	    String title = (String) data.get("title");
	    String content = (String) data.get("content");

	    BoardDto boardDto = new BoardDto();
	    boardDto.setBrdNo(brdNo);
	    boardDto.setBrdTitle(title);
	    boardDto.setBrdContent(content);

	    Map<String, Object> result = boardService.updateBoard(boardDto);
	    
	    return result;
	}
	
	/* 구만에게 - 글 삭제 */
	@PostMapping("/board/delete")
	@ResponseBody
	public Map<String, Object> deleteBoard(@RequestBody Map<String,Object> data) {

		String b = (String) data.get("brdNo");
		int brdNo = Integer.parseInt(b);
		 
	//	System.out.println("brdNo="+brdNo);
		
		Map<String, Object> map = boardService.deleteBoard(brdNo);
		
		return map;
	    
	}
}
