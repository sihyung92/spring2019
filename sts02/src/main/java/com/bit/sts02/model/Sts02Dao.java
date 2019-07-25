package com.bit.sts02.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bit.sts02.model.entity.Sts02Vo;

public class Sts02Dao {

	public Sts02Dao() {

	}

	private Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn = null;
		Class.forName("org.gjt.mm.mysql.Driver");
		String url = "jdbc:mysql://localhost:3306/xe";
		String user = "scott";
		String password = "tiger";
		conn = DriverManager.getConnection(url, user, password);
		return conn;
	}

	public List<Sts02Vo> selectAll() throws SQLException, ClassNotFoundException {
		String sql = "select * from day02 order by num desc";
		List<Sts02Vo> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Sts02Vo bean = new Sts02Vo();
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setContent(rs.getString("content"));
				bean.setNalja(rs.getDate("nalja"));
				list.add(bean);
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return list;
	}

	public int insertOne(Sts02Vo bean) throws ClassNotFoundException {
		String sql = "INSERT INTO DAY02 (name,sub,content,nalja) values (?,?,?,now())";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setObject(1, bean.getName());
			pstmt.setObject(2, bean.getSub());
			pstmt.setObject(3, bean.getContent());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}

	public Sts02Vo selectOne(int num) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM day02 WHERE num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return new Sts02Vo(rs.getInt("num"), rs.getString("name"), rs.getString("sub"), rs.getString("content"),
						rs.getDate("nalja"));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return null;
	}

	public int updateOne(Sts02Vo bean) throws SQLException, ClassNotFoundException {
		String sql = "UPDATE day02 SET sub=?,content=? WHERE num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, bean.getSub());
			pstmt.setString(2, bean.getContent());
			pstmt.setInt(3, bean.getNum());
			return pstmt.executeUpdate();
		}finally {
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public int deleteOne(int num) throws ClassNotFoundException, SQLException {
		String sql="DELETE FROM DAY02 WHERE NUM=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			return pstmt.executeUpdate();
		}finally {
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
}
