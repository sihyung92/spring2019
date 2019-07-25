package com.bit.sts02.test;

import static org.junit.Assert.*;

import com.bit.sts02.model.Sts02Dao;
import com.bit.sts02.model.entity.Sts02Vo;

public class Test{
	  @org.junit.Test
	  public void connectionTest() throws ClassNotFoundException {
		  Sts02Vo bean = new Sts02Vo();
		  bean.setName(":)");
		  bean.setSub("제목");
		  bean.setContent("내용");
	    assertSame(1, new Sts02Dao().insertOne(bean));
	  }
}
