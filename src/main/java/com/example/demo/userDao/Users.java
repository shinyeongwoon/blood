package com.example.demo.userDao;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Component
public class Users {

	@Getter
	@Setter
	
	private int id;
	private String Userid;
	private String password;
	private String bloodgroup;
	private String userno;
	private String name;
	private String donationcnt;
	private Integer count;
	private int loan;
	private int loancnt;
	private int loanbackcnt;
	private String loandate;
}
