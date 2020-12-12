package com.example.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.dao.Article;
import com.example.demo.dao.ArticleDao;

@Component
public class ArticleService {

	@Autowired
	ArticleDao dao;
	
	public List<Article> getArticles(){
		return dao.getArticles();
	}

	public void insertArticle(Map addParam) {
		dao.insertArticle(addParam);
	}

	public Article getArticle(int aid) {
		return dao.getArticle(aid);
	}

	public void addHit(int hit, int aid) {
		dao.addHit(hit,aid);
	}
	
	
}
