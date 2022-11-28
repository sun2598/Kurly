package kh.web.kurly.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.web.kurly.member.model.service.TestMemberService;
import kh.web.kurly.member.model.vo.TestMemberDto;

/**
 * Servlet implementation class EnrollDoController
 */
@WebServlet("/enroll.do")
public class EnrollDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollDoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("enroll");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email"); // enroll.jsp에서 name=""을 괄호 안에 작성
		
		// view에 입력한 데이터를 DTO/VO에 담아서 service에 전달
		TestMemberDto dto = new TestMemberDto(id, pwd, name, email);
		
		// service 호출
		TestMemberService service = new TestMemberService();
		int result = service.insertMember(dto);
		
		if(result>0) {
			
		} else {
			
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	

}
