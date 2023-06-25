package com.user.servlet;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.DAO.UserDAOImpl;
import com.Db.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");
            
            //System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
            
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phno);
            us.setPassword(password);
            
            HttpSession session = req.getSession();
            
            if(check != null)
            {
            	UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                
            	boolean f2 = dao.checkUser(email);
            	
            	if(f2)
            	{
            		boolean f = dao.userRegister(us);
                    if(f)
                    {
                        //System.out.println("User Register Success...");
                    	session.setAttribute("succMsg", "Register Successfully");
                    	resp.sendRedirect("register.jsp");
                    }
                    else 
                    {
                        //System.out.println("Something wrong on server...");
                    	session.setAttribute("failedMsg", "Registration Failed");
                    	resp.sendRedirect("register.jsp");
                    }
            	}
            	else
            	{
            		session.setAttribute("failedMsg", "User Already Exist with this Email Address");
                	resp.sendRedirect("register.jsp");
            	}
            }
            else
            {
            	//System.out.println("Please Check  Agree terms & Condition");
            	session.setAttribute("failedMsg", "Please Check  Agree terms & Condition");
            	resp.sendRedirect("register.jsp");
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}
    