package com.example.demo.loanDao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Mapper.CardMapper;
import com.example.demo.Mapper.LoanMapper;

@Component
public class LoanDao {
	
	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public void insertCard(Map addparams) {
		
		SqlSession session = sqlSessionFactory.openSession();
		LoanMapper mapper = session.getMapper(LoanMapper.class);

		
		session.close();

	}

	

}
