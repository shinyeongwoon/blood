package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.cardDao.Card;
import com.example.demo.service.CardService;
import com.example.demo.service.UserService;
import com.example.demo.userDao.Users;

@Controller
@RequestMapping("/card/*")
public class CardController {

	@Autowired
	CardService service;
	@Autowired
	HttpSession session;
	@Autowired
	ServletContext application;

	@Autowired
	UserService uservice;

	@RequestMapping("/add")
	public String add() {
		return "add";
	}

	// cardno=1&userid=shin&cbg=O&location=chungju&bdate=202011014
	@RequestMapping("/doadd")
	public String doadd(@RequestParam Map addparams, Model model) {

		service.insertCard(addparams);

		Users user = (Users) session.getAttribute("loginedUser");

		String userId = user.getUserid();

		List<Card> cards = service.getCards(userId);

		int cardCnt = service.getCardCnt(userId);

		model.addAttribute("cards", cards);
		model.addAttribute("cardCnt", cardCnt);

		return "cards";
	}

	@RequestMapping("/cards")
	public String cards(Model model, HttpServletRequest req) {

		// HttpSession session = req.getSession();

		// String userId = req.getParameter("loginedUser");

		Users user = (Users) session.getAttribute("loginedUser");

		String userId = user.getUserid();

		List<Card> cards = service.getCards(userId);

		int cardCnt = service.getCardCnt(userId);
		
		int loanOutCnt = service.getLoanOutCnt(userId);
		
		model.addAttribute("loanOutCnt", loanOutCnt);
		model.addAttribute("cards", cards);
		application.setAttribute("cardCnt", cardCnt);
		return "cards";
	}
	// http://localhost:8099/card/cardview

	@RequestMapping("/cardview")
	public String cardview(HttpServletRequest req, Model model) {

		int cardid = Integer.parseInt(req.getParameter("cardid"));
		Card card = service.getCard(cardid);

		model.addAttribute("card", card);

		return "cardview";
	}

	// http://localhost:8099/card/give?giver=shin&receiver=ham
	@RequestMapping("/give")
	public String give(HttpServletRequest req, Model model) {

		// ServletContext application = req.getServletContext();

		String giverId = req.getParameter("giver");
		String receiverId = req.getParameter("receiver");
		application.setAttribute("giverId", giverId);
		application.setAttribute("receiverId", receiverId);

		List<Card> cards = service.getCards(giverId);

		// int cardCnt = service.getCardCnt(giverId);

		model.addAttribute("cards", cards);
		// model.addAttribute("cardCnt", cardCnt);

		return "givecards";
	}

	@RequestMapping("/dogive")
	public String dogive(HttpServletRequest req, String giver, String receiver, Model model) {

		String[] checkbox = req.getParameterValues("checkbox");

		List<Card> checkCards = new ArrayList<>();
		Users user = uservice.getUser(receiver);
		Users loinedUsers = (Users) session.getAttribute("loginedUser");

		String openname = req.getParameter("openname");

		for (String c : checkbox) {
			int cardid = Integer.parseInt(c);

			Card card = service.getCard(cardid);

			checkCards.add(card);

			service.giveCard(cardid, giver, receiver);
		}

		if (openname == null) {
			List<Card> donacard = new ArrayList<>();
			for (Card c : checkCards) {

				if (!c.getBname().equals(user.getName())) {
					donacard.add(c);
				}
			}

			int donationCardCnt = donacard.size();

			int doCnt = uservice.getDonationCnt(loinedUsers);

			int addDoCnt = doCnt + donationCardCnt;

			uservice.addDoCnt(addDoCnt, loinedUsers.getUserid());

			application.setAttribute("donationCardCnt", donationCardCnt);
		} else {

		}

		Users loginedUser = (Users) session.getAttribute("loginedUser");

		String userId = loginedUser.getUserid();

		List<Card> cards = service.getCards(userId);

		// int cardCnt = service.getCardCnt(userId);

		model.addAttribute("cards", cards);

		// model.addAttribute("cardCnt", cardCnt);

		return "cards";
	}
	
	@RequestMapping("/status")
	public String status(Model model) {
		
		int allCardCnt = service.getAllCardCnt();
		model.addAttribute("allCardCnt", allCardCnt);
		
		int possibleCnt = service.getPossivleCnt();
		
		int loanCnt = service.getLoanCnt();
		model.addAttribute("loanCnt", loanCnt);
		
		int possCnt = possibleCnt - loanCnt;
		
		model.addAttribute("possCnt", possCnt);
		
		Users logineduser =  (Users) session.getAttribute("loginedUser");		
		
		Users u = uservice.getUser(logineduser.getUserid());
		
		int userLoanCnt = u.getLoancnt();
		int userLoanbackCnt = u.getLoanbackcnt();
		String userLoanDate = u.getLoandate();
		
		application.setAttribute("userLoanCnt", userLoanCnt);
		application.setAttribute("userLoanbackCnt", userLoanbackCnt);
		application.setAttribute("userLoanDate", userLoanDate);
		
		return "status";
	}
	
	@RequestMapping("/loanback")
	public String loanback(Model model) {
		
		Users user = (Users) session.getAttribute("loginedUser");

		String userId = user.getUserid();

		List<Card> cards = service.getCards(userId);

		int cardCnt = service.getCardCnt(userId);

		model.addAttribute("cards", cards);
		application.setAttribute("cardCnt", cardCnt);
		
		return "loanback";
	}

}
