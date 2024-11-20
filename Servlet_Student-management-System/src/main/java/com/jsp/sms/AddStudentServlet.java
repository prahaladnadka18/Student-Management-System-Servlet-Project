package com.jsp.sms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add-student")
public class AddStudentServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int studentId = Integer.parseInt(req.getParameter("studentId"));
		int studentAge = Integer.parseInt(req.getParameter("studentAge"));
		String studentName = req.getParameter("studentName");
		String studentEmail = req.getParameter("studentEmail");
		String studentCourse = req.getParameter("studentCourse");
		String studentCity = req.getParameter("studentCity");
		
		
		
		// JDBC LOGIC
		Connection conn = null;
		try {
			Driver driver = new com.mysql.cj.jdbc.Driver();
			DriverManager.registerDriver(driver);
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_student-management-system","root","root123");
			
			PreparedStatement pst = conn.prepareStatement("INSERT INTO student VALUES(?,?,?,?,?,?)");
			pst.setInt(1, studentId);
			pst.setString(2, studentName);
			pst.setString(3, studentEmail);
			pst.setInt(4, studentAge);
			pst.setString(5, studentCourse);
			pst.setString(6, studentCity);
			
			pst.execute();
			
			resp.sendRedirect("index.jsp");
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
