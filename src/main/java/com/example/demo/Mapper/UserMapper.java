package com.example.demo.Mapper;

import java.util.List;
import java.util.Map;

import com.example.demo.userDao.Users;

public interface UserMapper {

	List<Users> getUsers();

	void insertUser(Map params);

	Users login(String id, String pw);

	Users getUser(String receiver);

	int getDonationCnt(Users user);

	void addDoCnt(int addDoCnt, String userid);

	List<Users> getBestGiver();

	List<Users> getAllcardcnt();

	void updateUserimpo(Users user);

	List<Users> getdonationlevel();

	List<String> getCardCnt();

	void updateloandata(int year, int loancnt,String userid);	

	
	
}
