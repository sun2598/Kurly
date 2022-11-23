package kh.web.kurly.member.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import kh.web.kurly.common.jdbc.JdbcTemplate;

public class TestMemberDao {
	
	public int login(String id, String pwd) {
		System.out.println("TestMemberDao login()");
		System.out.println("param1:"+id);
		System.out.println("param2:"+pwd);
		
		int result = 0;
		
		Connection conn = JdbcTemplate.getConnection();
		Statement st = null;
		ResultSet rs = null;
		String sql = "SELECT COUNT(ID) AS CNT FROM TEST_MEMBER WHERE ID='"+id+"' AND PASSWD='"+pwd+"'";
		System.out.println(sql);
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()){
				result = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(st);
			JdbcTemplate.close(conn);
		}

		System.out.println("result:"+result);
		return result;
	}

}
