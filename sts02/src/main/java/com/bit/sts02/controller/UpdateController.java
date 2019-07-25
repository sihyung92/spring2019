package com.bit.sts02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bit.sts02.model.Sts02Dao;
import com.bit.sts02.model.entity.Sts02Vo;

public class UpdateController implements Controller{
	private Sts02Dao dao;
	public void setDao(Sts02Dao dao) {
		this.dao = dao;
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ModelAndView mav = new ModelAndView();
		if(request.getMethod().equals("POST")){
			Sts02Vo bean = new Sts02Vo(
					Integer.parseInt(request.getParameter("num")),
					request.getParameter("name"),request.getParameter("sub"),
					request.getParameter("content"),null
					);
			if(dao.updateOne(bean)>0) {
				mav.setViewName("redirect:detail.bit?idx="+bean.getNum());
			}else {
				mav.addObject("bean", bean);
				mav.setViewName("edit");
			}
		}else {
			mav.setViewName("redirect:/");
		}
		return mav;
	}

}
