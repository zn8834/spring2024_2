import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import junit.framework.Test;

@Repository
public class TestDAO {
	@Autowired
	private SqlSession sqlSession;

	public void write(Test testDTO) {
		sqlSession.insert("test.write", testDTO);
	}

	public Test detail(int bno) {
		return sqlSession.selectOne("test.detail", bno);
	}

	public void delete(int bno) {
		sqlSession.delete("test.delete", bno);
	}

	public void update(Test testDTO) {
		sqlSession.update("test.update", testDTO);
	}
}
