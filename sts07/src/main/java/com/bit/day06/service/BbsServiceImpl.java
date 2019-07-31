package com.bit.day06.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.day06.model.BbsDao;
import com.bit.day06.model.entity.BbsVo;

@Service
public class BbsServiceImpl implements BbsService{
	Logger log = LoggerFactory.getLogger(getClass());
	@Inject
	BbsDao bbsDao;
	
	@Override
	public void selectAll(Model model) {
		model.addAttribute("alist", bbsDao.selectAll());
	}

	@Override
	public void selectOne(Model model, int num) {
		bbsDao.updateCnt(num);
		BbsVo bean = bbsDao.selectOne(num);
		log.debug(bean.toString());
		model.addAttribute("bean", bean);
	}

	@Override
	public void add(BbsVo bean) {
		bbsDao.insertOne(bean);
	}

	@Override
	public void update(BbsVo bean) {
		bbsDao.updateOne(bean);
	}

	@Override
	public void delete(int num) {
		bbsDao.deleteOne(num);
	}

}
