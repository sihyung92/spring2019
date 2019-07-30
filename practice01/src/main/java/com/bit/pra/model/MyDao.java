package com.bit.pra.model;

import java.util.List;

import com.bit.pra.model.entity.MyVo;

public interface MyDao {
	public void deleteOne(int num);
	public void updateOne(MyVo bean);
	public void insertOne(MyVo bean);
	public List<MyVo> selectAll();
	MyVo selectOne(int num);
}
