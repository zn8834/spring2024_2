package com.example.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.Criteria;
import com.example.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.example.config.RootConfig.class} )
@Log4j
public class ReplyMapperTests {

	//데스트전에 해당 번호에 게시물이 존재하는지 반드시 확인할 것
	private Long[] bnoArr = {509L, 508L, 500L, 504L, 505L };
	
	@Setter(onMethod_ = @Autowired)
	private  ReplyMapper mapper;
	
//	@Test
	public void testCreate() {
		
		IntStream.rangeClosed(1, 10).forEach(i -> {
			
			ReplyVO vo = new ReplyVO();
			
			//게시물의 번호
			vo.setBno(bnoArr[i % 5]);
			vo.setReply("댓글 테스트" + i);
			vo.setReplyer("replyer" + i);
			vo.setNickname("닉" + i);
			
			mapper.insert(vo);
		});
	}
	
//	@Test
	public void testRead() {
		Long targetRno = 12L;
		ReplyVO vo = mapper.read(targetRno);
		log.info(vo);
	
	}
	
//	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
//	@Test
	public void testDelete() {
		Long targetRno = 20L;
		mapper.delete(targetRno);
	}
	
//	@Test
	public void testUpdate() {
		Long targetRno = 19L;
		ReplyVO vo = mapper.read(targetRno);
		vo.setReply("Update Reply");
		int count = mapper.update(vo);
		log.info("UPDATE COUNT: " + count);
	}
	
//	@Test
	public void testList() {
		Criteria cri = new Criteria();
		
		//7L
//		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 500L);
		replies.forEach(reply -> log.info(reply));
	}
	
//	@Test
	public void testList2() {
		
		Criteria cri  = new Criteria(1,5);
		
		//7
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 500L);
		
		replies.forEach(reply -> log.info(reply));
	}
}
