package com.spring.boot.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.boot.model.BoardDto;
import com.spring.boot.model.BoardVo;
import com.spring.boot.model.MemberDto;
import com.spring.boot.service.dao.BoardMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	/* 글 목록 조회 */
	public Map<String, Object> selectPageList() {
		
		Map<String, Object> data = new HashMap<>();
		List<BoardDto> dataList = boardMapper.selectListPageBoardSearch();
		
		data.put("dataList", dataList);
		data.put("pageInfo", null);
		
		return data;
		
	}
	
	/* 글 등록 */
	public Map<String, Object> registBoard(BoardDto dto, HttpSession session){
		
		Map<String, Object> data = new HashMap<>();
		
		BoardVo vo = new BoardVo();
		vo.setBrdContent(dto.getBrdContent());
		vo.setBrdTitle(dto.getBrdTitle());

		//세션에서 멤버 정보 가져오기 
		Map<String, Object> memberInfo = (Map<String, Object>) session.getAttribute("member");
		if (memberInfo != null && memberInfo.containsKey("memberInfo")) {
	        MemberDto memberDto = (MemberDto) memberInfo.get("memberInfo");
	        int mmbrNo = memberDto.getMmbrNo();
	        vo.setWrtMmbrNo(mmbrNo);
	    } else {
	        System.err.println("세션 정보 또는 멤버 번호가 존재하지 않습니다!");
	    }

		boardMapper.insertBoard(vo);
		
		data.put("vo", vo);
		
		System.out.println("서비스"+data);
		
		return data;
	}

	/* 글 조회 */
	public BoardDto selectBoard(int brdNo){
		
		BoardDto dto = boardMapper.selectBoard(brdNo);
		
		System.out.println("서비스"+ dto);
		
		return dto;
	}
	
	/* 글 수정 */
	public Map<String, Object> updateBoard(BoardDto dto) {
		
		Map<String, Object> result = new HashMap<>();
		
		String flag = "fail";
	    
	    BoardVo vo = new BoardVo();
	    vo.setBrdNo(dto.getBrdNo());
	    vo.setBrdContent(dto.getBrdContent());
	    vo.setBrdTitle(dto.getBrdTitle());
	    vo.setUdtrId("admin");
	    vo.setUdtrDt(dto.getUdtrDt());
	    
	    // 게시물 수정
	    int count = boardMapper.updateBoard(vo);

	    if(count > 0) {
	        flag = "success";
	    }

	    // 게시물 수정 성공 여부를 Map에 저장
	    result.put("flag", flag);

	    // 결과 반환
	    return result;
	}


	
	/* 글 삭제 */
	public Map<String, Object> deleteBoard(int brdNo) {
		
		Map<String, Object> result = new HashMap<>();
		
		String flag = "fail";
		
		BoardDto dto = new BoardDto();
		dto.setBrdNo(brdNo);
		dto.setDlMmbrNo(0);
		dto.setUdtrId("admin");
	    
	    // 게시물 삭제
	    int count = boardMapper.deleteBoard(dto);
	    
	  //  log.debug("count={}", count);
	    
	    if(count > 0) {
	    	flag = "success";
	    }
	    
	    result.put("flag", flag);
	     
	    return result;
	}
	
	/* 조회수 증가 */
	public void updateBoardCnt(int brdNo) {
		boardMapper.updateBoardCnt(brdNo);
		
		System.out.println(brdNo);
	}

}
