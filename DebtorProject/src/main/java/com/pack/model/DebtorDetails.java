package com.pack.model;

public class DebtorDetails 
{
String debtor_name;
String addrline1,addrline2;
int faxnum,phonenum;
String email;
String debtor_id;


public String getDebtor_id() {
	return debtor_id;
}
public void setDebtor_id(String debtor_id) {
	this.debtor_id = debtor_id;
}
public String getDebtor_name() {
	return debtor_name;
}
public void setDebtor_name(String debtor_name) {
	this.debtor_name = debtor_name;
}
public String getAddrline1() {
	return addrline1;
}
public void setAddrline1(String addrline1) {
	this.addrline1 = addrline1;
}
public String getAddrline2() {
	return addrline2;
}
public void setAddrline2(String addrline2) {
	this.addrline2 = addrline2;
}
public int getFaxnum() {
	return faxnum;
}
public void setFaxnum(int faxnum) {
	this.faxnum = faxnum;
}
public int getPhonenum() {
	return phonenum;
}
public void setPhonenum(int phonenum) {
	this.phonenum = phonenum;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
}
