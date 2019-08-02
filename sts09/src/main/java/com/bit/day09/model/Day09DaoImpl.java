package com.bit.day09.model;

import org.springframework.stereotype.Component;

import com.bit.day09.model.entity.Day09Vo;

@Component("dao")
public class Day09DaoImpl implements Day09Dao {
public Day09DaoImpl() {
}
	@Override
	public Day09Vo getBean() {
		return new Day09Vo();
	}

	@Override
	public void printBean(Day09Vo bean) {
		System.out.println(bean);
	}

	@Override
	public void func1() throws Exception {
			throw new Exception();
	}

	@Override
	public String func2() {
		System.out.println("func2 run...");
		return "À¸¾Æ";
	}

}