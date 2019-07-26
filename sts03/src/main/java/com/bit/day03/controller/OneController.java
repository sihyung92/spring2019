package com.bit.day03.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bit.day03.model.Day02Dao;

public class OneController implements Controller {
	Day02Dao dao;
	String msg;
	public void setDao(Day02Dao dao) {
		this.dao = dao;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bean", dao.selectOne(Integer.parseInt(request.getParameter("idx"))));
		mav.addObject("msg",msg);
		mav.setViewName("detail");
		return mav;
	}
	
}
