package com.example.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.cardDao.Card;
import com.example.demo.cardDao.CardDao;
import com.example.demo.userDao.Users;

@Component
public class CardService {

	@Autowired
	CardDao dao;

	public void insertCard(Map addparams) {
		dao.insertCard(addparams);
	}

	public List<Card> getCards(String userId) {
		return dao.getCards(userId);
	}

	public int getCardCnt(String userId) {
		return dao.getCardCnt(userId);
	}

	public Card getCard(int cardid) {
		return dao.getCard(cardid);
	}

	public void giveCard(int cardid, String giver, String receiver) {
		dao.giveCard(cardid,giver,receiver);
	}

	public int getAllCardCnt() {
		return dao.getAllCardCnt();
	}

	public int getPossivleCnt() {
		return dao.getPossivleCnt();
	}

	public int getLoanCnt() {
		return dao.getLoanCnt();
	}

	public int getUserLoanCnt(String userid) {
		return dao.getUserLoanCnt(userid);
	}

	public void loanCardSend(String userid, int loancnt) {
		dao.loanCardSend(userid,loancnt);
	}

	public int getLoanOutCnt(String userId) {
		return dao.getLaonOutCnt(userId);
	}

	
	
	
}
