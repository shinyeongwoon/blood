package com.example.demo.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.loanDao.Loan;
import com.example.demo.loanDao.LoanDao;
import com.example.demo.service.ArticleService;
import com.example.demo.service.CardService;
import com.example.demo.service.UserService;
import com.example.demo.userDao.Users;

@Controller
@RequestMapping("/loan")
public class LoanController {

	@Autowired
	ArticleService service;
	@Autowired
	UserService uservice;
	@Autowired
	HttpSession session;
	@Autowired
	ServletContext application;
	@Autowired
	LoanDao lservice;
	@Autowired
	CardService cservice;

	@RequestMapping("/judge")
	public String judge() {
		return "judge";
	}

	@RequestMapping("/grade")
	public String grade(Model model) {

		List<Users> donationlevel = uservice.getdonationlevel();
		int person = donationlevel.size();

		List<Loan> cardCntlevel = new ArrayList<Loan>();

		for (int i = 0; i < person; i++) {
			String id = donationlevel.get(i).getUserid();
			int cardCnt = cservice.getCardCnt(id);
			Loan l = new Loan();
			l.setUserid(id);
			l.setCardCnt(cardCnt);
			l.setDonationCnt(Integer.parseInt(donationlevel.get(i).getDonationcnt()));

			// System.out.println(cardCntlevel.get(i).getUserid());
			// System.out.println(cardCntlevel.get(i).getDonationCnt());
			// System.out.println(cardCntlevel.get(i).getCardCnt());

			int cnt = Integer.parseInt(donationlevel.get(i).getDonationcnt());
//			도네이션 순위 정하기
			double level = (i + 1);
			double per = level / person * 100;

			double donationScore = 100 - ((40 * per) / 100);
			

//			카드 순위 정하기
			double clevel = (i + 1);
			double cper = clevel / person * 100;

			double cardScore = 100 - ((30 * cper) / 100);

			l.setDonationScore(donationScore);
			l.setCardScore(cardScore);
			l.setTotalScore(donationScore + cardScore);

			// System.out.println(level);
			// System.out.println(id);
			// System.out.println(p);
			// System.out.println(clevel);
			// System.out.println(id);
			// System.out.println(cp);

			cardCntlevel.add(l);
		}

		Collections.sort(cardCntlevel, new Comparator<Loan>() {
			@Override
			public int compare(Loan u1, Loan u2) {
				return (int) u2.getTotalScore() - (int) u1.getTotalScore();
			}
		});

		Users logineduser = (Users)session.getAttribute("loginedUser");

		for (int i = 0; i < cardCntlevel.size(); i++) {

			if (logineduser != null) {
				if (cardCntlevel.get(i).getUserid().equals(logineduser.getUserid())) {
					
					double TotalLevel = (i + 1);
					
					double TotalPer = (TotalLevel / cardCntlevel.size()) * 100;
					
					application.setAttribute("TotalLevel", TotalLevel);
					application.setAttribute("gradeUserid", cardCntlevel.get(i).getUserid());
					application.setAttribute("gradeCardScore",  cardCntlevel.get(i).getDonationScore());
					application.setAttribute("gradeDonationScore", (float)cardCntlevel.get(i).getDonationScore());
					application.setAttribute("gradeTotalScore", (float)cardCntlevel.get(i).getTotalScore());
					application.setAttribute("TotalPer", (float)TotalPer);
					
					String userid = logineduser.getUserid();
					int loancnt = cservice.getUserLoanCnt(userid);
					model.addAttribute("loancnt", loancnt);
//					model.addAttribute("TotalLevel", TotalLevel);
//					model.addAttribute("gradeUserid", cardCntlevel.get(i).getUserid());
//					model.addAttribute("gradeCardScore", cardCntlevel.get(i).getDonationScore());
//					model.addAttribute("gradeDonationScore", (float)cardCntlevel.get(i).getDonationScore());
//					model.addAttribute("gradeTotalScore", (float)cardCntlevel.get(i).getTotalScore());
//					model.addAttribute("TotalPer", (float)TotalPer);
					
					
//					System.out.println("============");
//					System.out.println(TotalLevel);
//					System.out.println(cardCntlevel.get(i).getUserid());
//					System.out.println(cardCntlevel.get(i).getCardScore());
//					System.out.println(cardCntlevel.get(i).getDonationScore());
//					System.out.println(cardCntlevel.get(i).getTotalScore());
//					System.out.println(TotalPer);
//					System.out.println("============");
				}
			} else {
				return "login";
			}

		}
		
		return "grade";
	}
	
	@RequestMapping("/interview")
	public String interview() {
		
		
		return "interview";
	}
	
	@RequestMapping("/goloan")
	public String goloan() {
		
		return "goloan";
	}
	
	@RequestMapping("/doloan")
	public String doloan(Model model, HttpServletRequest req) {
		
		Users loginedUser = (Users) session.getAttribute("loginedUser");
		String userid = loginedUser.getUserid();
		System.out.println(userid);
		int loancnt2 = Integer.parseInt(req.getParameter("loancnt"));
		System.out.println(loancnt2);
		int year = Integer.parseInt(req.getParameter("loanyear"));
		System.out.println(year);
		
		cservice.loanCardSend(userid,loancnt2);
		
		int loancnt1 = cservice.getUserLoanCnt(userid);
		System.out.println(loancnt1);
		

		
		Date date_now = new Date(System.currentTimeMillis()); // 현재시간을 가져와 Date형으로 저장한다
		// 년월일시분초 14자리 포멧
		SimpleDateFormat fourteen_format = new SimpleDateFormat("yyyyMMdd"); 
		int date = Integer.parseInt(fourteen_format.format(date_now));
		
		int setdate = date + 10000;
		
		System.out.println(setdate);
		
		
		
		int loancnt = loancnt1+loancnt2;
		model.addAttribute("loancnt", loancnt);
		uservice.updateloandata(setdate,loancnt,userid);
		
		
		
		return "main";
	}

	
}
