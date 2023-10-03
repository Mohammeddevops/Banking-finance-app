package com.staragile.banking.banking;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Account {

	@Id
	String AccountId;
	String customerName;
	String customerAddress;
	String contactNumber;
	
	
	public Account() {
		super();
	}
	
	
	public Account(String AccountId, String customerName, String customerAddress, String contactNumber) {
		super();
		this.AccountId = AccountId;
		this.customerName = customerName;
		this.customerAddress = customerAddress;
		this.contactNumber = contactNumber;
	}
	
	public String getAccountId() {
		return AccountId;
	}
	public void setAccountId(String AccountId) {
		this.AccountId = AccountId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
}
