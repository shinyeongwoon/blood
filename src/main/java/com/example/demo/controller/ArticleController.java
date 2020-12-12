package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.Article;
import com.example.demo.service.ArticleService;
import com.example.demo.service.UserService;
import com.example.demo.userDao.Users;

@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Autowired
	ArticleService service;
	@Autowired
	UserService uservice;
	@Autowired
	HttpSession session;
	@Autowired
	ServletContext application;
	
	@RequestMapping("/main")
	public String main(){
		
		Users loginedUser = (Users)session.getAttribute("loginedUser");
		if(loginedUser != null) {
			int doCnt = uservice.getDonationCnt(loginedUser);
			application.setAttribute("doCnt", doCnt);
		}
		
		List<Users> bestgiver = uservice.getBestGiver();
		application.setAttribute("bestgiver", bestgiver);
		
		List<Users> cardcnt = uservice.getAllcardcnt();
		application.setAttribute("cardcnt", cardcnt);
		
		return "main";
	}
	
	
	@RequestMapping("/donation2")
	public String donation2(Model model, HttpServletRequest req) {
		ServletContext application = req.getServletContext();
		List<Article> articles = service.getArticles();
		application.setAttribute("articles", articles);
		return "donation2";
	}
	
	@RequestMapping("/addArticle")
	public String addArticle() {
		
		return "addArticle";
	}
	
	@RequestMapping("/do.addArticle")
	public String doAddArticle(@RequestParam Map addParam, HttpServletRequest req) {
		
		service.insertArticle(addParam);
		
		ServletContext application = req.getServletContext();
		List<Article> articles = service.getArticles();
		application.setAttribute("articles", articles);
		
		return "donation2";
	}
	
	
	@RequestMapping("/articleview")
	public String articleview(HttpServletRequest req, Model model){
		
		int aid = Integer.parseInt(req.getParameter("aid"));
		
		Article article = service.getArticle(aid);
		
		int hit = article.getHit() + 1;
		
		service.addHit(hit,aid);
		
		model.addAttribute("article", article);
		
		return "articleview";
	}
	
	@RequestMapping("/usermody")
	public String usermody(){
		return "usermody";
	}
	
}









