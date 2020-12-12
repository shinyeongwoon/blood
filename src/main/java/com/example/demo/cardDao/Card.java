package com.example.demo.cardDao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Data
@AllArgsConstructor
@NoArgsConstructor

public class Card {

	@Getter
	@Setter
	
	private String cardno;
	private String userid;
	private String cbg;
	private String location;
	private String bdate;
	private String cdate;
	private int id;
	private String sex;
	private String kind;
	private String bname;
	private String bbirth;
	private String source;
	private String nuserid;
	
}
