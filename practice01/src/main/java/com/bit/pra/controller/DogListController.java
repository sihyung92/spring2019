package com.bit.pra.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bit.pra.model.MyDao;
import com.bit.pra.model.MyDaoImpl;

@Component("dList")
public class DogListController implements Controller{
	@Autowired
	MyDao dao;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("list", "dlist", dao.selectAll());
	}
	
}
