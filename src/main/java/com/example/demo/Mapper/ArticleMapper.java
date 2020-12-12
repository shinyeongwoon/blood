package com.example.demo.Mapper;

import java.util.List;
import java.util.Map;

import com.example.demo.dao.Article;

public interface ArticleMapper {

	List<Article> getArticles();

	void insertArticle(Map addParam);

	Article getArticle(int aid);

	void addHit(int hit, int aid);

}
