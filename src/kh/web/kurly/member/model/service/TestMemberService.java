package kh.web.kurly.member.model.service;

import java.sql.Connection;

import kh.web.kurly.common.jdbc.JdbcTemplate;
import kh.web.kurly.member.model.dao.TestMemberDao;
import kh.web.kurly.member.model.vo.TestMemberDto;

public class TestMemberService {
	
	// DAO 생성해놓기. 많이 호출하게될예정
	private TestMemberDao dao = new TestMemberDao(); 
	
	public int login(String id, String pwd) {
		System.out.println("TestMemberService login()");
		System.out.println("param1:"+id);
		System.out.println("param2:"+pwd);
		
		int result = 0;
		
		// connection 만들기
		Connection conn = JdbcTemplate.getConnection();
		result = dao.login(id, pwd);
		JdbcTemplate.close(conn);
		
		System.out.println("result:"+result);
		return result;
	}
	
	public int insertMember(TestMemberDto dto) {
		int result = 0;
		
		// 보기 편하라고 찍는 메세지
		System.out.println("TestMemberService insertMember()");
		System.out.println("param:"+dto);
		
		// connection 만들기
		Connection conn = JdbcTemplate.getConnection();
		JdbcTemplate.setAutoCommit(conn, false);
		
		result = dao.insertMember(conn, dto);
		
		if(result>0) {
			JdbcTemplate.commit(conn);
		}else {
			JdbcTemplate.rollback(conn);
		}
		JdbcTemplate.close(conn);
		
		System.out.println("result:"+result);
		return result; 
	}
}
