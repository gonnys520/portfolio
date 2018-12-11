package org.gonnys.service;

import java.util.List;

import org.gonnys.domain.BoardVO;


public interface BoardService {

	//getList
	public List<BoardVO> getList();
	
	//register
	public int register(BoardVO board);
	
	//read
	public BoardVO read(int bno);
	
	//remove
	public int remove(BoardVO board);
	
	//modify
	public int modify(BoardVO board);
	
	
	
}
