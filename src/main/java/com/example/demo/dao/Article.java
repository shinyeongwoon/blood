package com.example.demo.dao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Article {

	@Getter
	@Setter
	
	private int id;
	private String callno;
	private String userid;
	private String title;
	private String body;
	private String writer;
	private String date;
	private int hit;
	private int ptno;
	
}
