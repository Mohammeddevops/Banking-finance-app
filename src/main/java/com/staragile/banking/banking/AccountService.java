package com.staragile.banking.banking;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountService {
	

	@Autowired
	AccountDAORepository AccountDAORepository;

	//https://github.com/vilasvarghese/microservices/blob/master/training/day1/SpringBoot/4CompanyServiceImplementation.txt
	//continue from line : 115
	public List<Account> getAccounts(){
		/*return Arrays.asList(
			new Policy("1", "Tousif", "Tousif address", "123456789"),
			new Policy("2", "Yashwant", "Yashwant address", "234567891"),
			new Policy("3", "Krishna", "Krishna address", "345678912")
		);*/
		
		List<Account> accountList = new ArrayList<Account>();
		AccountDAORepository.findAll().forEach(accountList::add);
		return accountList;
	}
	
	public Optional<Account> getAccount(String id) {
		return AccountDAORepository.findById(id);
	}
	
	public void addAccount(Account account) {
		AccountDAORepository.save(account);
	}
	
	
	public void updateAccount(String id, Account account) {
		AccountDAORepository.save(account);
	}
	
	public void viewAccount(String id, Account account) {
		AccountDAORepository.save(account);
	}
	
	public void deleteAccount(String id) {
		AccountDAORepository.deleteById(id);
	}
	
}
