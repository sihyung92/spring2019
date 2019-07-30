package com.bit.day05.model.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class Day02DaoImpl implements Day02Dao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Day02Vo> selectAll() {
		String sql = "SELECT * FROM day02";
		return jdbcTemplate.query(sql,new RowMapper<Day02Vo>() {
			@Override
			public Day02Vo mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Day02Vo(
						rs.getInt("num"),rs.getString("name"),
						rs.getString("sub"),rs.getString("content"),
						rs.getDate("nalja")
						);
			}
		});
	}

	@Override
	public Day02Vo selectOne() {
		String sql = "select * from day02 WHERE num=?";
		return null;
	}

	@Override
	public void insertOne(Day02Vo bean) {
		String sql = "insert into day02 (name,sub,content,nalja) values (?,?,?,now())";
	}

	@Override
	public int updateOne(Day02Vo bean) {
		String sql = "UPDATE day02 set name=?, sub=?,content=?";
		return 0;
	}

	@Override
	public int deleteOne(int num) {
		String sql = "DELETE FROM day02 where num=?";
		return 0;
	}

}
