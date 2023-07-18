package com.spring.boot.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.boot.model.BoardDto;
import com.spring.boot.model.BoardVo;
import com.spring.boot.service.dao.BoardMapper;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	public Map<String, Object> selectPageList() {
		
		Map<String, Object> data = new HashMap<>();
		List<BoardDto> dataList = boardMapper.selectListPageBoardSearch();
		
		data.put("dataList", dataList);
		data.put("pageInfo", null);
		
		return data;
		
	}
	
	public Map<String, Object> registBoard(BoardDto dto){
		
		Map<String, Object> data = new HashMap<>();
		
		BoardVo vo = new BoardVo();
		vo.setBrdContent(dto.getBrdContent());
		vo.setBrdTitle(dto.getBrdTitle());
		vo.setBrdNo(2);;

		boardMapper.insertBoard(vo);
		
		return data;
	}

}
