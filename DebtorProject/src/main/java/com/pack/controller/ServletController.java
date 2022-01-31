package com.pack.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pack.dao.BankDao;
import com.pack.dao.DebtorDao;
import com.pack.dao.TransactionDao;
import com.pack.dao.UserDao;
import com.pack.model.BankDetails;
import com.pack.model.DebtorDetails;
import com.pack.model.TransactionDetails;
import com.pack.model.User;

/**
 * Servlet implementation class ServletController
 */
@WebServlet("/ServletController")
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletController() {
        super();
        // TODO Auto-generated constructor stub
    }
DebtorDao dbtdao = new DebtorDao();
BankDao bnkdao = new BankDao();
UserDao udao = new UserDao();
TransactionDao tdao = new TransactionDao();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		System.out.println(action);
		switch(action)
		{
		case "confirmDebtorDetails":
			confirmDebtorDetails(request,response);
			break;
		case "add_debtor":
			addDebtor(request,response);
			break;
		/*case "add_bank":
			addBank(request,response);
			break;*/
		case "corporate_login":
			corporateLogin(request,response);
			break;
		case "admin_login":
			adminLogin(request,response);
			break;
		case "add_user":
			addUser(request,response);
			break;
		case "add_transaction":
			addTransaction(request,response);
			break;
			
		}
		
	}

	private void addTransaction(HttpServletRequest request, HttpServletResponse response) 
	{
		Random r = new Random();
		int x = r.nextInt(99999);
		TransactionDetails td = new TransactionDetails();
		td.setTransaction_num(x);
		int i=tdao.save(td);
		if(i>0)
		{
			System.out.println(" Details Added");
		}
		else
		{
			System.out.println(" Error");
		}
		
	}

	protected void confirmDebtorDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException 
	{
		System.out.println("This is the Confirm Debtor Method");
	}
	
	protected void addDebtor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		DebtorDetails dbt = new DebtorDetails();
		
		dbt.setDebtor_name(request.getParameter("debtorname"));
		dbt.setDebtor_id(request.getParameter("debtorid"));
		int i=dbtdao.save(dbt);
		BankDetails bd = new BankDetails();
		bd.setBank_name(request.getParameter("bankname"));
		bd.setBranch_name(request.getParameter("branchname"));
		int j=bnkdao.save(bd);
		if(i>0)
		{
			System.out.println("Debtor Details Added");
		}
		else
		{
			System.out.println("Debtor Error");
		}
		if(j>0)
		{
			System.out.println("Bank Details Added");
		}
		else
		{
			System.out.println("Bank Error");
		}
		
		
	}
	
	/*protected void addBank(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		BankDetails bd = new BankDetails();
		bd.setBank_name(request.getParameter("bankname"));
		bd.setBranch_name(request.getParameter("branchname"));
		int i=bnkdao.save(bd);
		
		if(i>0)
		{
			System.out.println("Bank Details Added");
		}
		else
		{
			System.out.println("Bank Error");
		}
	}*/
	
	protected void corporateLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		User u = new User();
		u.setEmail(request.getParameter("email"));
		u.setPassword(request.getParameter("password"));
		int i = udao.corporateLogin(u.getEmail(), u.getPassword());
		PrintWriter pw = response.getWriter();
		if(i>0)
		{
			pw.println("<script>alert('Login Successful');</script>");
			/*response.sendRedirect("Welcome.jsp");*/
		}
		else
		{
			pw.println("<script>alert('Invalid Credentials');</script>");
			/*response.sendRedirect("corporatelogin.jsp");*/
		}
	}
	
	protected void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	
		{
			User u = new User();
			u.setEmail(request.getParameter("email"));
			u.setPassword(request.getParameter("password"));
			int i = udao.adminLogin(u.getEmail(), u.getPassword());
			PrintWriter pw = response.getWriter();
			if(i>0)
			{
				pw.println("<script>alert('Login Successful');</script>");
			}
			else
			{
				pw.println("<script>alert('Invalid Credentials');</script>");
			}
		}
	
	protected void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		User  u1=new User();
		
		u1.setName(request.getParameter("name"));
		u1.setEmail(request.getParameter("email"));
		u1.setPassword(request.getParameter("password"));
		u1.setUtype(request.getParameter("user_type"));
				 
		PrintWriter out= response.getWriter();
		
		  int i=udao.addUser(u1);
		  if(i>0)
		  { out.println("Success");
		  }
		  else
		  {
			  out.println("error"); 
			  }
		  
		  }
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


