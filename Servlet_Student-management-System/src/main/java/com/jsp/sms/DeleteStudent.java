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

@WebServlet("/delete-student")
public class DeleteStudent extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int studentId = Integer.parseInt(req.getParameter("studentId"));

		// JDBC LOGIC
		Connection conn = null;
		try {
			Driver driver = new com.mysql.cj.jdbc.Driver();
			DriverManager.registerDriver(driver);

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_student-management-system","root","root123");

			PreparedStatement pst = conn.prepareStatement("DELETE FROM student WHERE studentId=?");
		
			pst.setInt(1, studentId);

			pst.execute();

			resp.sendRedirect("display-all-students");


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
