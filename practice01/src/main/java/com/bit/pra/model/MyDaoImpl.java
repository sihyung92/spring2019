package com.bit.pra.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.bit.pra.model.entity.MyVo;

@Component("MyDaoImpl")
public class MyDaoImpl implements MyDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public RowMapper<MyVo> getRowmap(){
		return new RowMapper<MyVo>() {
			@Override
			public MyVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new MyVo(
						rs.getInt("num"),rs.getInt("age"),rs.getString("breed")
						,rs.getString("name"),rs.getString("phone")
						);
			}
		};
	}
	
	@Override
	public List<MyVo> selectAll() {
		String sql = "SELECT * FROM pra01 ORDER BY num desc";
		return jdbcTemplate.query(sql, getRowmap());
	}

	@Override
	public MyVo selectOne(int num) {
		String sql = "SELECT * FROM pra01 WHERE num=?";
		return jdbcTemplate.queryForObject(sql, getRowmap(),num);
	}


	@Override
	public void deleteOne(int num) {
		String sql = "DELETE FROM pra01 WHERE num=?";
		jdbcTemplate.update(sql,num);
	}

	@Override
	public void updateOne(MyVo bean) {
		String sql = "UPDATE pra01 SET breed=?,name=?,age=?,phone=? WHERE num=?";
		jdbcTemplate.update(sql, bean.getBreed(),bean.getName(),bean.getAge(),bean.getPhone(), bean.getNum());
	}

	@Override
	public void insertOne(MyVo bean) {
		String sql = "INSERT INTO pra01 (breed,name,age,phone) VALUES (?,?,?,?)";
		jdbcTemplate.update(sql, bean.getBreed(),bean.getName(),bean.getAge(),bean.getPhone());
	}
}
