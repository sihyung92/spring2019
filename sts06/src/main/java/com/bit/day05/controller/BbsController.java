package com.bit.day05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.day05.model.entity.Day02Dao;
import com.bit.day05.model.entity.Day02DaoImpl;
import com.bit.day05.model.entity.Day02Vo;

@Controller
@RequestMapping("/bbs")
public class BbsController {
	@Autowired
	Day02Dao day02Dao;
	
	@RequestMapping(value = "/list")
	public String list(Model model) {
		model.addAttribute("alist", day02Dao.selectAll());
		return "bbs/list";
	}
	
	@RequestMapping(value="/detail")
	public String detail(Model model, @RequestParam int idx) {
		model.addAttribute("bean", day02Dao.selectOne(idx));
		return "bbs/detail";
	}
	
	@RequestMapping(value="/add")
	public void add() {}

	@RequestMapping(value="/insert")
	public String insert(@ModelAttribute("bean") Day02Vo bean) {
		day02Dao.insertOne(bean);
		return "redirect:list";
	}
	
	@RequestMapping(value="/edit")
	public String edit(Model model, @RequestParam int idx) {
		model.addAttribute("bean", day02Dao.selectOne(idx));
		return "bbs/edit";
	}
	
	@RequestMapping(value="/update")
	public String update(@ModelAttribute("bean") Day02Vo bean, Model model) {
		day02Dao.updateOne(bean);
		return "redirect:detail?idx="+bean.getNum();
	}
	
	@RequestMapping(value="/delete")
	public String delete(@RequestParam int idx) {
		day02Dao.deleteOne(idx);
		return "redirect:list";
	}
}
