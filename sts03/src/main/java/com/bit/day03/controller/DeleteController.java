package com.bit.day03.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import org.springframework.web.servlet.mvc.Controller;

import com.bit.day03.model.Day02Dao;

public class DeleteController extends AbstractController{
	Day02Dao dao;
	
	public void setDao(Day02Dao dao) {
		this.dao = dao;
	}
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int num = Integer.parseInt(request.getParameter("idx"));
		if(dao.deleteOne(num)==0) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("bean", dao.selectOne(num));
			mav.setViewName("detail");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list.bit");
		return mav;
	}
}
