package com.example.demo.cardDao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Mapper.CardMapper;
import com.example.demo.userDao.Users;

@Component
public class CardDao {
	
	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public void insertCard(Map addparams) {
		
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		mapper.insertCard(addparams);
		session.close();

	}

	public List<Card> getCards(String userId) {
		
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		List<Card> cards = mapper.getCards(userId);
		session.close();
		
		return cards;
	}

	public int getCardCnt(String userId) {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		int cardCnt = mapper.getCardCnt(userId);
		session.close();
		return cardCnt;
	}

	public Card getCard(int cardid) {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		Card card = mapper.getCard(cardid);
		session.close();
		return card;
	}

	public void giveCard(int cardid, String giver, String receiver) {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		mapper.giveCard(cardid,giver,receiver);
		session.close();
	}

	public int getAllCardCnt() {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		int cardCnt = mapper.getAllCardCnt();
		session.close();
		return cardCnt;
	}

	public int getPossivleCnt() {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		int PossivleCnt = mapper.getPossivleCnt();
		session.close();
		return PossivleCnt;
	}

	public int getLoanCnt() {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		int loanCnt = mapper.getLoanCnt();
		session.close();
		return loanCnt;
	}

	public int getUserLoanCnt(String userid) {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		int loanCnt = mapper.getUserLoanCnt(userid);
		session.close();
		return loanCnt;
	}

	public void loanCardSend(String userid, int loancnt) {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		mapper.loanCardSend(userid, loancnt);
		session.close();
		
	}

	public int getLaonOutCnt(String userId) {
		SqlSession session = sqlSessionFactory.openSession();
		CardMapper mapper = session.getMapper(CardMapper.class);

		int loanOutCnt = mapper.getLaonOutCnt(userId);
		session.close();
		return loanOutCnt;
	}



}
