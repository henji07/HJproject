package com.spring.boot.service.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.boot.model.BoardDto;
import com.spring.boot.model.BoardVo;

@Mapper
public interface BoardMapper {
	
	public List<BoardDto> selectListPageBoardSearch();

	public void insertBoard(BoardVo vo);
	
	public BoardDto selectBoard(int brdNo); 
	
	public int updateBoard(BoardVo vo);
	
	public void updateBoardCnt(int brdNo);

	public int deleteBoard(BoardDto dto);

}
