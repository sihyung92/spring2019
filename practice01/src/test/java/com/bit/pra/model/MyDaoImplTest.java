package com.bit.pra.model;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.bit.pra.model.entity.MyVo;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class MyDaoImplTest {
	private MyVo target;
	private MyDao dao;
	private Logger log = Logger.getLogger(getClass());
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}
	
	@Before
	public void setUp() throws Exception {
		ApplicationContext ctxt = new GenericXmlApplicationContext("classpath:/applicationContext.xml");
		dao = (MyDao) ctxt.getBean("MyDaoImpl");
		target = new MyVo(1, 7, "fomeranian", "sanso", "01027032283");
	}

	@Test
	public void test1SelectAll() {
		List<MyVo> list = dao.selectAll();
		assertNotNull(list);
		log.debug(list.toString());
	}

	@Test
	public void test2SelectOne() {
		//[num=1, age=7, breed=fomeranian, name=sanso, phone=01027032283]
		assertEquals(target, dao.selectOne(target.getNum()));
	}

	@Test
	public void test3InsertOne() {
		int before=dao.selectAll().size();
		dao.insertOne(target);
		int after = dao.selectAll().size();
		assertSame(after,before+1);
	}

	@Test
	public void test4UpdateOne() {
		target.setName("sanso");
		dao.updateOne(target);
		assertEquals(target, dao.selectOne(target.getNum()));
	}

	@Test
	public void test5DeleteOne() {
		int before = dao.selectAll().size();
		dao.deleteOne(5);
		int after = dao.selectAll().size();
		assertSame(after,before-1);
	}
}
