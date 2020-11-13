package aa.bb.cc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BMove")
public class BMove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BMove() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String avalue = request.getParameter("a");
		String bvalue = request.getParameter("b");
		
		System.out.println("avalue = "+ avalue);
		System.out.println("bvalue = "+ bvalue);
		
		// 연결을 유지하는 객체
		Connection conn = null;
		// sql 담는 객체
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.90:1521:xe", "scott", "1234");
			pstmt = conn.prepareStatement("insert into aa " + 
										"(name,remark) " + 
										"values ('"+avalue+"','"+bvalue+"')");
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				// 쓰기,읽기 속성 반환
				if(pstmt!=null)
					pstmt.close();
				if(conn !=null)
					conn.close();
			}catch (Exception e) {}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}


























