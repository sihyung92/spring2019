package com.bit.sts02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bit.sts02.model.Sts02Dao;

public class ListController implements Controller {
	Sts02Dao dao;
	
	public void setDao(Sts02Dao dao) {
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject("alist",dao.selectAll());
		mav.setViewName("list");
		return mav;
	}

}
