package com.example.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.userDao.UserDao;
import com.example.demo.userDao.Users;

@Component
public class UserService {

	@Autowired
	UserDao dao;

	public List<Users> getUsers() {
		return dao.getUsers();
	}

	public void dojoin(Map params) {
		dao.insertUser(params);
	}

	public Users dologin(String id, String pw) {
		return dao.login(id,pw);
	}

	public Users getUser(String receiver) {
		return dao.getUser(receiver);
	}

	public int getDonationCnt(Users user) {
		return dao.getDonationCnt(user);
	}

	public void addDoCnt(int addDoCnt, String userid) {
		dao.addDoCnt(addDoCnt,userid);
		
	}

	public List<Users> getBestGiver() {
		return dao.getBestGiver();
	}

	public List<Users> getAllcardcnt() {
		return dao.getAllcardcnt();
	}

	public void updateUserimpo(Users user) {
		dao.updateUserimpo(user);
		
	}

	public List<Users> getdonationlevel() {
		return dao.getdonationlevel();
	}

	public void updateloandata(int year, int loancnt,String userid) {
		dao.updateloandata(year,loancnt,userid);
		
	}


	


	
}
