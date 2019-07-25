package com.bit.sts02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bit.sts02.model.Sts02Dao;
import com.bit.sts02.model.entity.Sts02Vo;

public class InsertController implements Controller {
	Sts02Dao dao;
	
	public void setDao(Sts02Dao dao) {
		this.dao = dao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ModelAndView mav = new ModelAndView();
		if(request.getMethod().equals("POST")) {
			Sts02Vo bean = new Sts02Vo();
			bean.setName(request.getParameter("name"));
			bean.setSub(request.getParameter("sub"));
			bean.setContent(request.getParameter("content"));
			if(dao.insertOne(bean)>0) {
				mav.setViewName("redirect:list.bit");
			}else {mav.setViewName("add");}
		}else {
			mav.setViewName("add");
		}
		return mav;
	}

}
