package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.example.demo.Mapper.ArticleMapper;

@Component
public class ArticleDao {
	
	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public List<Article> getArticles() {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArticleMapper mapper = session.getMapper(ArticleMapper.class);
		
		List<Article> article = mapper.getArticles();
		session.close();
		return article;
	}

	public void insertArticle(Map addParam) {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArticleMapper mapper = session.getMapper(ArticleMapper.class);
		
		mapper.insertArticle(addParam);
		session.close();
	}

	public Article getArticle(int aid) {
		
		SqlSession session = sqlSessionFactory.openSession();
		ArticleMapper mapper = session.getMapper(ArticleMapper.class);
		
		Article article = mapper.getArticle(aid);
		session.close();
		
		return article;
	}

	public void addHit(int hit, int aid) {
		SqlSession session = sqlSessionFactory.openSession();
		ArticleMapper mapper = session.getMapper(ArticleMapper.class);
		
		mapper.addHit(hit,aid);
		session.close();
	}
	
}
