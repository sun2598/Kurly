package kh.web.kurly.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.web.kurly.member.model.service.TestMemberService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private TestMemberService service = new TestMemberService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("basic"); // 히스토리에 남지 않는 방식.
		
////		주석 : 학습용 코드		
////		request시에는 url 통해서 encoding되어 들어오지만,
////		response시에는 mime type과 encoding => contentType 지정을 해줘야 한글깨짐이 없음
//		response.setContentType("text/html; charset=UTF-8");
//		
//		System.out.println("/login.do : 나의 첫 doGet 메소드");
//		
////		view에서 controller로 요청함. request시 데이터를 전달받을 수 있음.
//		System.out.println("id: " + request.getParameter("id"));
//		System.out.println("pwd: " + request.getParameter("pwd"));
//		System.out.println("h1: " + request.getParameter("h1"));
////		http://localhost:8090/kurly/login.do?id=1&pwd=2 -> 이렇게 url에 출력됨
//		
////		MVC 중 model의 메소드를 호출하여 DB와 연동한 결과물. view에 response하게 됨.
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		response.getWriter().append("	한글 깨짐 확인").append(request.getParameter("h1"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 이거 꼭 이 위치에, 맨 처음에 써워야 한글 안깨짐 (post방식만. get방식은 안써줘도됨)
		request.setCharacterEncoding("UTF-8");
		
//		contentType="text/html; charset=UTF-8" -> 이거 jsp파일 맨 윗줄에서 가져옴
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println("/login.do : 나의 첫 doPost 메소드");
		System.out.println("id: " + request.getParameter("id"));
		System.out.println("pwd: " + request.getParameter("pwd"));
		System.out.println("h1: " + request.getParameter("h1"));
		
//		MVC 중 model의 메소드를 호출하여 DB와 연동한 결과를 view에 response하게 됨.
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("	한글 깨짐 확인").append(request.getParameter("h1"));
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		int result = service.login(id, pwd);
		
		if (result > 0) { // 로그인 성공시
			response.sendRedirect("");
		} else { // 로그인 실패시
			response.sendRedirect("basic");
		}
		
		
		
		
		
		
		
		
		
	}

}
