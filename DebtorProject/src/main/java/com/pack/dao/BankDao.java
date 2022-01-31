package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pack.model.BankDetails;

public class BankDao
{
	public   int save(BankDetails u){
		int status=0;
		try{
			Connection con=MySqlConn.getCon();
			PreparedStatement ps=con.prepareStatement("insert into bank_details(debtor_id,bank_name,branch_name)  values(100,?,?)");
		 
			ps.setString(1,u.getBank_name());
		 	ps.setString(2,u.getBranch_name());
			
			status=ps.executeUpdate();
		}
		catch(Exception e){System.out.println(e);}
		return status;
}
}
