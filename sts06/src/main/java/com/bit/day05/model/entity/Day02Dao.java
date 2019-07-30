package com.bit.day05.model.entity;

import java.util.List;

public interface Day02Dao {
	List<Day02Vo> selectAll();
	int insertOne(Day02Vo bean);
	int updateOne(Day02Vo bean);
	int deleteOne(int num);
	Day02Vo selectOne(int num);
}
