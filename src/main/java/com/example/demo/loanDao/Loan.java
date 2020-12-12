package com.example.demo.loanDao;

import com.example.demo.cardDao.Card;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Loan {

	@Getter
	@Setter
	
	private String userid;
	private int donationCnt;
	private int cardCnt;
	private double donationScore;
	private double cardScore;
	private double level;
	private double totalScore;
}
