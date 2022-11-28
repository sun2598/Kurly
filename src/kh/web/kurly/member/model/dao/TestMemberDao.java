package kh.web.kurly.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import kh.web.kurly.common.jdbc.JdbcTemplate;
import kh.web.kurly.member.model.vo.TestMemberDto;

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
	
	public int insertMember(Connection conn, TestMemberDto dto) {
		int result = 0;
		
		// 보기 편하라고 찍는 메세지
		System.out.println("TestMemberDao insertMember()");
		System.out.println("param:"+dto);

//		ID     NOT NULL VARCHAR2(100) 
//		PASSWD          VARCHAR2(100) 
//		NAME            VARCHAR2(100) 
//		EMAIL           VARCHAR2(200) 
		
		String sql = "insert into test_member values(?,?,?,?)"; //"" 안에 ; 없어야함
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		
//		result = dao.insertMember(conn, id, pwd, name, email);
		
		System.out.println("result:"+result);
		return result; 
	}

}
