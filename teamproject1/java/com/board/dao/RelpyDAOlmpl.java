package com.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.domain.ReplyVO;
//
//@Repository
//public class RelpyDAOlmpl implements ReplyDAO {
//	
//	@Inject
//	private SqlSession sql;
//
//	private static String namespace = "com.board.mappers.reply";
//
//	// 댓글 조회
//	@Override
//	public List<ReplyVO> get(int bno) throws Exception {
//	    return sql.selectList(namespace + ".replyList", bno);
//	}
//
//	// 댓글 작성
//	@Override
//	public void register(ReplyVO vo) throws Exception {
//	    sql.insert(namespace + ".replyWrite", vo);
//	}
//
//	// 댓글 수정
//	@Override
//	public void modify(ReplyVO vo) throws Exception {
//	    sql.update(namespace + ".replyModify", vo);
//	}
//
//	// 댓글 삭제
//	@Override
//	public void remove(ReplyVO vo) throws Exception {
//	    sql.delete(namespace + ".replyDelete", vo);
//	}
//}
