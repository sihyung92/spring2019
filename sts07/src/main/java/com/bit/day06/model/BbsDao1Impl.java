package com.bit.day06.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bit.day06.model.entity.BbsVo;

//@Repository
public class BbsDao1Impl implements BbsDao{
	Logger log = LoggerFactory.getLogger(getClass());
	@Inject
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<BbsVo> selectAll() {
		String sql ="SELECT * FROM bbs ORDER BY num DESC";
		return jdbcTemplate.query(sql,new RowMapper<BbsVo>() {
			@Override
			public BbsVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				BbsVo bean = new BbsVo();
				bean.setNum(rs.getInt("num"));
				bean.setCnt(rs.getInt("cnt"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setContent(rs.getString("content"));
				bean.setNalja(rs.getTimestamp("nalja"));
				return bean;
			}
		});
	}
	
	@Override
	public BbsVo selectOne(int num) {
		String sql ="SELECT * FROM bbs WHERE num=?";
		return jdbcTemplate.queryForObject(sql,new RowMapper<BbsVo>() {
			@Override
			public BbsVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				BbsVo bean = new BbsVo();
				bean.setNum(rs.getInt("num"));
				bean.setCnt(rs.getInt("cnt"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setContent(rs.getString("content"));
				bean.setNalja(rs.getTimestamp("nalja"));
				return bean;
			}
		},num);
	}

	@Override
	public void insertOne(BbsVo bean) {
		String sql ="INSERT INTO bbs (name, sub, content,nalja) VALUES (?,?,?,now())";
		jdbcTemplate.update(sql,bean.getName(),bean.getSub(),bean.getContent());
	}

	@Override
	public int updateCnt(int num) {
		String sql = "UPDATE BBS SET CNT=CNT+1 WHERE NUM=?";
		return jdbcTemplate.update(sql,num);
	}

	@Override
	public void updateOne(BbsVo bean) {
		String sql = "UPDATE BBS SET sub=?,content=? WHERE num=?";
		jdbcTemplate.update(sql,bean.getSub(),bean.getContent(),bean.getNum());
	}

	@Override
	public void deleteOne(int num) {
		String sql = "DELETE FROM BBS WHERE num=?";
		jdbcTemplate.update(sql,num);
	}

}
