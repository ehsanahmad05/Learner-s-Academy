package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Students;
import com.helper.FactoryProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/addStudent")
public class AddStudentServ extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		String SId=req.getParameter("Sid");
		String SName=req.getParameter("Sname");
		String SClass=req.getParameter("class");
		
		Students s= new Students();
		s.setsId(SId);
		s.setsName(SName);
		s.setsClass(SClass);
		
		Session session=FactoryProvider.getFactory().openSession();
		Transaction tx=session.beginTransaction();
		if(session.save(s) != null) {
		PrintWriter out= resp.getWriter();
			      resp.setContentType("text/html");
			      out.print("<h3 style=\"color: green; position: absolute; top: 100px; left: 400px; background-size: cover; \">Successfully Added</h3>");
			 	RequestDispatcher rd=req.getRequestDispatcher("/AddStudents.jsp");
				rd.include(req, resp);	
		}
		
		tx.commit();
		session.close();
                  
			     
	}catch(Exception e) {
		System.out.println(e);
	}
		
		
	}

}
