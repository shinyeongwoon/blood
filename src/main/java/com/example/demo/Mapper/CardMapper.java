package com.example.demo.Mapper;

import java.util.List;
import java.util.Map;

import com.example.demo.cardDao.Card;
import com.example.demo.userDao.Users;

public interface CardMapper {

	void insertCard(Map addparams);

	List<Card> getCards(String userId);

	int getCardCnt(String userId);

	Card getCard(int cardid);

	void giveCard(int cardid, String giver, String receiver);

	int getAllCardCnt();

	int getPossivleCnt();

	int getLoanCnt();

	int getUserLoanCnt(String userid);

	void loanCardSend(String userid, int loancnt);

	int getLaonOutCnt(String userId);



}
