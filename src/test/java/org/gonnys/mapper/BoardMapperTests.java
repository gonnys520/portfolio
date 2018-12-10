package org.gonnys.mapper;

import org.gonnys.domain.BoardVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	
	@Test
	public void testGetList() {
		
		log.info(mapper.getList());
		mapper.getList().forEach(board -> log.info(board));
	}
	
	
	@Test
	public void testRegister() {
		
		BoardVO board = new BoardVO();
		board.setTitle("Mapper register Test");
		board.setContent("Mapper register Test");
		board.setWriter("gonnys");
		
		mapper.register(board);
		
		log.info(board);
	}
	
	
	@Test
	public void testRead() {
		
		BoardVO board = mapper.read(2);
		log.info(board);
	}
	

	@Test
	public void testRemove() {
		
	Integer result = mapper.remove(1);
		log.info("SUCCESS DELETE CNT: " + result);
	}
	
	@Test
	public void testModify() {
		
		BoardVO board = new BoardVO();
		board.setBno(4);
		board.setTitle("Mapper modify Test");
		board.setContent("Mapper modify Test");
		
		Integer count = mapper.modify(board);
		log.info("UPDATE COUNT: " + count);
	
	}
	
	
}