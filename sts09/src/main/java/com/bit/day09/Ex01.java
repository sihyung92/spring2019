package com.bit.day09;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bit.day09.model.Day09Dao;
import com.bit.day09.model.entity.Day09Vo;

public class Ex01 {
	public static void main(String[] args) {
		ApplicationContext cntxt=null;
		cntxt=new ClassPathXmlApplicationContext("applicationContext.xml");
		Day09Dao day09Dao=(Day09Dao) cntxt.getBean("dao");
		day09Dao.printBean(new Day09Vo(1,"test",null));
		try {
			day09Dao.func1();
		} catch (Exception e) {
		}
		day09Dao.func2();
	}
}
