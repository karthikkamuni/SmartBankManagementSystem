package com.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.model.Account;
import com.model.Customer;
import com.model.Loan;
import com.dao.BankRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class AdminService {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private JavaMailSender mailSender;
	
	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}
	public List<Customer> getAllCustomers() {
		Session session = getSession();
		NativeQuery<Customer> nativeQuery = session.createNativeQuery(BankRepository.GET_ALL_CUSTOMERS,Customer.class);
		List<Customer> customerList = nativeQuery.list();
		return customerList;
	}
	
	public List<Account> getAllAcounts() {
		Session session = getSession();
		NativeQuery<Account> nativeQuery = session.createNativeQuery(BankRepository.GET_ALL_ACCOUNTS,Account.class);
		List<Account> accounts = nativeQuery.list();
		List<Account> userAccounts = new ArrayList<>();
		
		for(Account account : accounts) {
			if(account.getCustomer().getRole().equals("USER")) {
				userAccounts.add(account);
			}
		}
		return userAccounts;
	}
	public List<Loan> getAllLoans() {
		Session session = getSession();
		NativeQuery<Loan> nativeQuery = session.createNativeQuery(BankRepository.GET_ALL_LOANS,Loan.class);
		List<Loan> allLoans = nativeQuery.list();
		return allLoans;
		
	}
	public Loan updateStatus(String id, String status) {
		Session session = getSession();
		Loan loan = session.find(Loan.class, id);
		String loanStatus = loan.getStatus();
		if(status == null || status.isEmpty()) {
			loan.setStatus(loanStatus);
			return loan;
		}
		loan.setStatus(status);
		return loan;
		
	}
	
	public void updateAccStatus(String id, String status) {
		Session session = getSession();
		Account account = session.find(Account.class,id);
		String email = account.getCustomer().getEmail();
		String accountStatus = account.getAccountStatus();
		System.out.println(accountStatus);
		if(status == null || status.isEmpty() || status.isBlank()) {
			return;
		}
		account.setAccountStatus(status);
		
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setFrom("kamunikarthikkumar@gmail.com");
		mail.setTo(email);
		mail.setSubject("Account Status Update");
		mail.setText("Your account has been  : "+status);
		
		mailSender.send(mail);
	}
	public void addAmount(String id, double balance) {
		Session session = getSession();
		Account account = session.find(Account.class, id);
		double originalBalance = account.getBalance();
		account.setBalance(originalBalance + balance);
	}
}
