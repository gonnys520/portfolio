package org.gonnys.service;

import java.util.List;

import org.gonnys.domain.BoardVO;
import org.gonnys.mapper.BoardMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Service
@Log4j
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;
		
	@Override
	public List<BoardVO> getList() {
		log.info("get List........");
		return mapper.getList();
	}

	@Override
	public int register(BoardVO board) {
		log.info("Register.........." + board);
		return mapper.register(board);
	}

	@Override
	public BoardVO read(int bno) {
		log.info("read...............");
		return mapper.read(bno);
	}

	@Override
	public int remove(int bno) {
		log.info("remove........" + bno);
		return mapper.remove(bno);
	}

	@Override
	public int modify(BoardVO board) {
		log.info("modify..............." + board);
		return mapper.modify(board);
	}

}
