package controller.user2;

import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;

import dto.User1DTO;
import dto.User2DTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.User1Service;
import service.User2Service;

@WebServlet("/user2/list.do")
public class ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	// Service 가져오기
	private User2Service service = User2Service.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// User1 데이터 요청
		List<User2DTO> dtoList = service.findAll();
		
		String mode = req.getParameter("mode");
		
		if (mode == null) {
			// View 데이터 참조
			//(Controller 에서 View 로 forward 하기 때문에 Controller 와 View 는 같은 Request Scope 를 가짐)  ⭐⭐    
			req.setAttribute("dtoList", dtoList); // View(JSP)에서 dtoList를 참조
			System.out.println(dtoList);
			
			
			// View forward
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user2/list.jsp");
			dispatcher.forward(req, resp);
			
		} else if (mode.equals("json")) {
			
			// JSON 생성 (List를 Json으로 변환)
			Gson gson = new Gson();
			String strJson = gson.toJson(dtoList);
			
			// 사용자에게 JSON 응답
			resp.setContentType("application/json;charset=UTF-8");
			resp.getWriter().write(strJson);
			
		}
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
