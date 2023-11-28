package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Teachers;
import com.helper.FactoryProvider;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/AddingTeacher")
public class AddTeacherServ extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String TId=req.getParameter("Tid");
			String TName=req.getParameter("Tname");
			
			HttpSession session=req.getSession();
            session.setAttribute("tid", TId);
			
            
			String[] sublist =req.getParameterValues("subjects");
			String allsub="";
			for(int i=0; i<sublist.length; i++) {
			allsub+=sublist[i]+" ";
			System.out.println(allsub);
			}
			
			
			Teachers t= new Teachers();
			t.setTeacherId(TId);
			t.setTeacherName(TName);
			t.setTeacherSub(allsub);
			


		Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			if(s.save(t) != null) {
			PrintWriter out= resp.getWriter();
				      resp.setContentType("text/html");
				      out.print("<h3 style=\"color: green; position: absolute; top: 100px; left: 400px; background-size: cover;\">Successfully Added</h3>");
				 	RequestDispatcher rd=req.getRequestDispatcher("/AddTeachers.jsp");
					rd.include(req, resp);	
			}
			tx.commit();
			s.close();
                      
				     
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
