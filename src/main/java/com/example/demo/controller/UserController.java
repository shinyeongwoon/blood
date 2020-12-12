package com.example.demo.controller;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.CardService;
import com.example.demo.service.UserService;
import com.example.demo.userDao.Users;

@Controller
@RequestMapping("/users/*")
public class UserController {

	@Autowired
	UserService service;
	@Autowired
	HttpSession session;
	@Autowired
	CardService cService;
	@Autowired
	ServletContext application;
	
	
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("users", service.getUsers());
		return "list";
	}
	
	//http://localhost:8099/users/join?name=&Userid=&password=&passwordchek=&userno=&bloodgroup=
	@RequestMapping("/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping("/join.do")
	public String dojoin(@RequestParam Map params, Model model) {
		
		service.dojoin(params);
		
		return "join";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("/dologin")
	public String dologin(String id , String pw, Model model, HttpServletRequest req) {
		
		Users loginedUser = service.dologin(id,pw);
		
		int logincheck = 0;
		
		if(loginedUser == null) {
			logincheck = 1;
		}
		
		int cardCnt = cService.getCardCnt(loginedUser.getUserid());
		
		application.setAttribute("cardCnt", cardCnt);
		
		int doCnt = service.getDonationCnt(loginedUser);
		application.setAttribute("doCnt", doCnt);
		//HttpSession session = req.getSession();
		
		
		session.setAttribute("loginedUser", loginedUser);
		model.addAttribute("logincheck", logincheck);
		
		return "main";
	}
	
	
	@RequestMapping("/logout")
	public String logout(Model model, HttpServletRequest req) {
		
		Users loginedUser = null;
	
		//HttpSession session = req.getSession();
		
		session.invalidate();
		
		return "main";
	}
	
	@RequestMapping("/usermodify")
	public String usermodify(Users user) {
		
		service.updateUserimpo(user);
		
		return "main";
	}

	
	

}
