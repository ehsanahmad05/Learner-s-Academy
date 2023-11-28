package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.AdminLogin;
import com.helper.FactoryProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class AdminLoginServ extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
			String e=req.getParameter("email");
			String pswd=req.getParameter("password");
			
            HttpSession session=req.getSession();
            session.setAttribute("email", e);
            
			AdminLogin al=new AdminLogin();
			al.setEmail(e);
			al.setPassword(pswd);
			
			System.out.println(al.getEmail()+" "+al.getPassword());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(al);
			tx.commit();
			s.close();
			PrintWriter out= resp.getWriter();
			
			if(e.equalsIgnoreCase(e) && pswd.equals(pswd)){
			RequestDispatcher rd= req.getRequestDispatcher("/Home.jsp");
			rd.forward(req, resp);
			}else {
				resp.setContentType("text/html");
				out.print(" <h3 style=color-red;>Error.... Give Correctly</h3> ");
				RequestDispatcher rd=req.getRequestDispatcher("/AdminLogin.jsp");
				rd.include(req, resp);
			}
			
	}catch(Exception e) {
		System.out.println(e);
	}

	}
}
