package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.TeacherData;
import com.entities.Teachers;
import com.helper.FactoryProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/teachdata")
public class TeacherDataServ extends HttpServlet {
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				String TID=req.getParameter("tid");
				String TNAME=req.getParameter("class");
				System.out.println("#######################################"+TID);
				
				String[] SUBLIST =req.getParameterValues("subjects");
				String ALLS="";
				for(int i=0; i<SUBLIST.length; i++) {
					ALLS+=SUBLIST[i]+" ";
				System.out.println(ALLS);
				}
				
				
				TeacherData t1= new TeacherData();
				t1.setTeachId(TID);
				t1.setTeachClass(TNAME);
				t1.setTeachSubj(ALLS);
				


			Session s1=FactoryProvider.getFactory().openSession();
				Transaction tx1=s1.beginTransaction();
				if(s1.save(t1) != null) {
				PrintWriter out= resp.getWriter();
					      resp.setContentType("text/html");
					      out.print("<h3 style=\"color: green; position: absolute; top: 100px; left: 400px; background-size: cover;\">Successfully Added</h3>");
					 	RequestDispatcher rd=req.getRequestDispatcher("/AssignTeachers.jsp");
						rd.include(req, resp);	
				}
				tx1.commit();
				s1.close();
	                      
					     
			}catch(Exception e) {
				System.out.println(e);
			}
	}

}
