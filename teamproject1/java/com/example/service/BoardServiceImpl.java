package com.example.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.domain.BoardVO;
import com.example.domain.Criteria;
import com.example.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	//@Setter(onMethod_ = @Autowired) 대신 -> @AllArgsConstructor
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {
		log.info("register......." + board);
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(Long bno) {
		log.info("get...." + bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("modify........" + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		log.info("remove....." + bno);
		return mapper.delete(bno) == 1;
	}

//	@Override
//	public List<BoardVO> getList() {
//		log.info("getList............");
//		return mapper.getList();
//	}
	
	@Override
	public List<BoardVO> getList(Criteria cri) {
		
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
//	조회수
	@Override
	public void hit(int bno, HttpSession session) throws Exception{
		long update_time = 0;
		if(session.getAttribute("update_time_" + bno) != null) {
			update_time = (long)session.getAttribute("update_time_" + bno);
		}
		
		long current_time = System.currentTimeMillis();
		if(current_time - update_time > 5*1000) {
			session.setAttribute("update_time_" + bno, current_time);
		}
	}
}
