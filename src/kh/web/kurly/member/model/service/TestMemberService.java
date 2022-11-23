package kh.web.kurly.member.model.service;

import kh.web.kurly.member.model.dao.TestMemberDao;

public class TestMemberService {
	
	private TestMemberDao dao = new TestMemberDao(); 
	
	public int login(String id, String pwd) {
		System.out.println("TestMemberService login()");
		System.out.println("param1:"+id);
		System.out.println("param2:"+pwd);
		
		int result = 0;
		
		result = dao.login(id, pwd);
		
		System.out.println("result:"+result);
		return result;
	}
}
