package org.gonnys.service;

import java.util.List;

import org.gonnys.domain.BoardVO;


public interface BoardService {

	//getList
	public List<BoardVO> getList();
	
	//register
	public void register(BoardVO board);
	
	//read
	public BoardVO read(int bno);
	
	//remove
	public int remove(int bno);
	
	//modify
	public int modify(BoardVO board);
	
	
	
}
