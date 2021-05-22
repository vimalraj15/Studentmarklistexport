package com.example.demo;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class cont 
{   
	@RequestMapping("/")
	public String show()
	{
	   return "hi";
	}
	@RequestMapping("/student")
	public String filter()
	{
		return "Change2";
	}
	
	@RequestMapping("/form")
	public String filte()
	{
		return "Change3";
	}
}
