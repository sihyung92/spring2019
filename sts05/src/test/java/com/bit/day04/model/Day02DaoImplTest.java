package com.bit.day04.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.fail;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.bit.day04.model.entity.Day02Vo;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class Day02DaoImplTest {
	private Day02Vo target;
	private static Day02Dao day02Dao;
	private Logger log = Logger.getLogger(this.getClass());
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ApplicationContext ctxt = new GenericXmlApplicationContext("classpath:/applicationContext.xml");
		day02Dao = (Day02Dao) ctxt.getBean("day02Dao");
	}

	@Before
	public void setUp() throws Exception {
		target = new Day02Vo(1,"�׽���","����1","����1",null);
	}

	@Test
	public void test1SelectAll() {
		assertNotNull("�γ���",day02Dao.selectAll());
		log.debug(day02Dao.selectAll().toString());
	}

	@Test
	public void test2SelectOne() {
		//[num=1, name=�׽���, sub=����1, content=����1, nalja=2019-07-25]
		assertEquals(target, day02Dao.selectOne(target.getNum()));
	}

	@Test
	public void test3InsertOne() {
		int before=day02Dao.selectAll().size();
		day02Dao.insertOne(target);
		int after = day02Dao.selectAll().size();
		assertSame(after,before+1);
	}

	@Test
	public void test4UpdateOne() {
		target.setName("test");
		day02Dao.updateOne(target);
		assertEquals(target, day02Dao.selectOne(target.getNum()));
	}

	@Test
	public void test5DeleteOne() {
		int before = day02Dao.selectAll().size();
		day02Dao.deleteOne(5);
		int after = day02Dao.selectAll().size();
		assertSame(after,before-1);
	}
}
