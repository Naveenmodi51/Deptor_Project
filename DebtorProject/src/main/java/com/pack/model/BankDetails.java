package com.pack.model;

public class BankDetails 
{
String bank_name,branch_name,IFSC,currency;
int accnum;
public String getBank_name() {
	return bank_name;
}
public void setBank_name(String bank_name) {
	this.bank_name = bank_name;
}
public String getBranch_name() {
	return branch_name;
}
public void setBranch_name(String branch_name) {
	this.branch_name = branch_name;
}
public String getIFSC() {
	return IFSC;
}
public void setIFSC(String iFSC) {
	IFSC = iFSC;
}
public String getCurrency() {
	return currency;
}
public void setCurrency(String currency) {
	this.currency = currency;
}
public int getAccnum() {
	return accnum;
}
public void setAccnum(int accnum) {
	this.accnum = accnum;
}
}
