package com.example.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class TestService {
	@Autowired
	private TestDAO testDAO;

	public void write(TestDTO testDTO) {
		testDAO.write(testDTO);
	}

	public TestDTO detail(int bno) {
		return testDAO.detail(bno);
	}

	public void delete(int bno) {
		testDAO.delete(bno);
	}

	public void update(TestDTO testDTO) {
		testDAO.update(testDTO);
	}
}
