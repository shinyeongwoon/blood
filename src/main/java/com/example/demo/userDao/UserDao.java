package com.example.demo.userDao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Mapper.UserMapper;

@Component
public class UserDao {

	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public List<Users> getUsers() {

		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		List<Users> users = mapper.getUsers();
		session.close();
		return users;
		
	}

	public void insertUser(Map params) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		 mapper.insertUser(params);
		 session.close();
	}

	public Users login(String id, String pw) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		Users loginedUser = mapper.login(id,pw);
		session.close();
		return loginedUser;
	}

	public Users getUser(String receiver) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		Users user = mapper.getUser(receiver);
		session.close();
		return user;
	}

	public int getDonationCnt(Users user) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		int doCnt = mapper.getDonationCnt(user);
		session.close();
		return doCnt;
	}

	public void addDoCnt(int addDoCnt, String userid) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		mapper.addDoCnt(addDoCnt,userid);
		session.close();
		
	}

	public List<Users> getBestGiver() {
		
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		List<Users> bestgiver = mapper.getBestGiver();
		session.close();
		
		return bestgiver;
	}

	public List<Users> getAllcardcnt() {
		
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		List<Users> cardcnt = mapper.getAllcardcnt();
		session.close();
		return cardcnt;
	}

	public void updateUserimpo(Users user) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		mapper.updateUserimpo(user);
		session.close();
	}

	public List<Users> getdonationlevel() {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		List<Users> getdonationlevel = mapper.getdonationlevel();
		session.close();
		return getdonationlevel;
	}

	public void updateloandata(int year, int loancnt,String userid) {
		SqlSession session = sqlSessionFactory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		
		mapper.updateloandata(year,loancnt,userid);
		session.close();
		
	}





}
