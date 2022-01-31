package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pack.model.DebtorDetails;



public class DebtorDao 
{
	public   int save(DebtorDetails u){
		int status=0;
		try{
			Connection con=MySqlConn.getCon();
			PreparedStatement ps=con.prepareStatement("insert into debtor_details(debtor_name,debtor_id)  values(?,?)");
		 
			ps.setString(1,u.getDebtor_name());
		 	ps.setString(2,u.getDebtor_id());
			
			status=ps.executeUpdate();
		}
		catch(Exception e){System.out.println(e);}
		return status;
		
		
	}
}
