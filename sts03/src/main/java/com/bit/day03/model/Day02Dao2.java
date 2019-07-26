package com.bit.day03.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.bit.day03.model.entity.Day02Vo;

public class Day02Dao2  implements Day02Dao{
	JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public List<Day02Vo> selectAll(){
		String sql = "select * from day02 order by num";
		RowMapper<Day02Vo> mapper = new RowMapper<Day02Vo>() {

			@Override
			public Day02Vo mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Day02Vo(
						rs.getInt("num"),
						rs.getString("name"),
						rs.getString("sub"),
						rs.getString("content"),
						rs.getDate("nalja")
						);
			}
			
		};
		return jdbcTemplate.query(sql,mapper);
	}

	@Override
	public void insertOne(Day02Vo bean) {
		String sql = "insert into day02 (name, sub, content, nalja) values (?,?,?,now())";
		jdbcTemplate.update(sql, new Object[] {bean.getName(),bean.getSub(),bean.getContent()});
	}

	@Override
	public Day02Vo selectOne(int num) {
		String sql = "SELECT * FROM day02 WHERE num=?";
		RowMapper<Day02Vo> mapper=new RowMapper<Day02Vo>() {
			@Override
			public Day02Vo mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Day02Vo(
						rs.getInt("num")
						,rs.getString("name")
						,rs.getString("sub")
						,rs.getString("content")
						,rs.getDate("nalja")
						);
			}
		};
		return jdbcTemplate.queryForObject(sql, mapper,num);
	}

	@Override
	public int updateOne(Day02Vo bean) {
		String sql = "update day02 set sub=?,name=?,content=? where num=?";
		return jdbcTemplate.update(sql,bean.getSub(),bean.getName(),bean.getContent(),bean.getNum());
	}

	@Override
	public int deleteOne(int num) {
		String sql = "DELETE FROM day02 WHERE num=?";
		return jdbcTemplate.update(sql, num);
	}
}
