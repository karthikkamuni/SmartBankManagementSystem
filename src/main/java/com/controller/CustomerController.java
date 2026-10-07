package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Account;
import com.model.Customer;
import com.service.CustomerService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	

	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("customer", new Customer());
		return "register";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute Customer customer,Model model, HttpSession httpSession) {
		customerService.customerRegistration(customer);
		httpSession.setAttribute("customer",customer);
		httpSession.setAttribute("customerId",customer.getCustomerId());
		Customer customerRegistered =(Customer) httpSession.getAttribute("customer");
		
		model.addAttribute("name", customerRegistered.getName());
		model.addAttribute("accountNumber", customerRegistered.getAccount().getAccountNumber());
		model.addAttribute("password", customerRegistered.getAccount().getPassword());
		return "reset";
	}
	
	@PostMapping("/reset")
	public String reset(@RequestParam(name="newPassword") String newPassword, 
						@RequestParam(name="confirmPassword") String confirmPassword,
						@RequestParam(name="currentPassword") String currentPassword,
						Model model,HttpSession httpSession) {
	
		int customerId = (int) httpSession.getAttribute("customerId");
		int resetPassword = customerService.resetPassword(currentPassword,newPassword,confirmPassword, customerId);
		Customer customerRegistered =(Customer) httpSession.getAttribute("customer");
		
		if(resetPassword == 1) {
			httpSession.invalidate();
			return "redirect:/customer/login";
		} else if(resetPassword == 0) {
			model.addAttribute("name", customerRegistered.getName());
			model.addAttribute("accountNumber", customerRegistered.getAccount().getAccountNumber());
			model.addAttribute("password", customerRegistered.getAccount().getPassword());
			model.addAttribute("msg", "New Password didn't match Confirm Password");
			return "reset";
		} else 
			model.addAttribute("msg", "Current Password didn't match, Please enter correctly");
		model.addAttribute("name", customerRegistered.getName());
		model.addAttribute("accountNumber", customerRegistered.getAccount().getAccountNumber());
		model.addAttribute("password", customerRegistered.getAccount().getPassword());
			return "reset";
		
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam(name="accountNumber") String accNum,
						@RequestParam(name="password") String password,Model model,HttpSession httpSession) {
		System.out.println(accNum+" "+password);
		Customer customer = customerService.getCustomerByAccount(accNum);
		System.out.println(customer);

		if (customer == null) {
		    model.addAttribute("msg", "No user exists. Please enter correct account number");
		    return "login";
		}
		if(customer.getAccount().getPassword().equals(password)) {
			if(customer.getAccount().getAccountStatus().equals("Deactivated")) {
				model.addAttribute("msg","Your account is not Activated, Try again later.");
				return "login";
			} else {
				String otp = customerService.otpGenerator();
				String email = customer.getEmail();
				customerService.mailSender(email, otp);
				httpSession.setAttribute("customer", customer);
				httpSession.setAttribute("accNum", accNum);
				httpSession.setAttribute("role",customer.getRole());
				httpSession.setAttribute("otp", otp);
				model.addAttribute("msg", "OTP has been sent to your registered email");
				return "verify";
			}
		}
		model.addAttribute("msg","Password Incorrect");
		return "login";
	}
	
	@GetMapping("/home")
	public String customerHome(Model model,HttpSession httpSession) {
		Customer customer = (Customer) httpSession.getAttribute("customer");
		String name = customer.getName();
		model.addAttribute("name", name);
		return "home";
	}
	
	@PostMapping("/verify")
	public String verifyOTP(@RequestParam(name="otp") String recievedOTP, HttpSession httpSession, Model model) {
		String sentOTP = String.valueOf(httpSession.getAttribute("otp"));
		String role = (String) httpSession.getAttribute("role");
		if(sentOTP.equals(recievedOTP)) {
			if(role.equals("USER")) {
				return "redirect:/customer/home";
			} else {
				return "redirect:/admin/home";
			}
		}
		model.addAttribute("incorrect", "Otp is incorrect. Please Re-enter");
		return "verify";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:/customer/login";
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	
	@GetMapping("/mydetails")
	public String myDetails() {
		return "mydetails";
	}
	
	@GetMapping("/personalinfo")
	public String personalInfo(HttpSession httpSession,Model model) {
		Customer customer =(Customer) httpSession.getAttribute("customer");
		model.addAttribute("customer", customer);
		return "personalinfo";
	}
	
	@PostMapping("/savepersonalinfo")
	public String savePersonalInfo(@ModelAttribute(name="customer") Customer updatedCustomer,HttpSession httpSession) {
		Customer savedCustomer = customerService.saveCustomer(updatedCustomer);
		httpSession.setAttribute("customer", savedCustomer);
		return "redirect:/customer/personalinfo";
		
		
	}
	
	@GetMapping("/forgotpassword")
	public String forgotPassword() {
		return "forgotpassword";
	}
	
	@PostMapping("/forgotpassword")
	public String forgotPassword(@RequestParam(name="email") String email,Model model,HttpSession httpSession) {
		Customer customer = customerService.getCustomerByEmail(email);
		if(customer == null) {
			model.addAttribute("msg","No User Found With Email, Please Enter Registered Email");
			return "forgotpassword";
		}
		httpSession.setAttribute("customer",customer);
		Customer sessionCustomer = (Customer) httpSession.getAttribute("customer");
		model.addAttribute("email",sessionCustomer.getEmail());
		String otp = customerService.otpGenerator();
		httpSession.setAttribute("otp",otp);
		customerService.mailSender(email, otp);
		return "passwordverify";
		
	}
	
	@PostMapping("/passwordverify")
	public String passwordVerify(@RequestParam(name="otp") String otp,HttpSession httpSession,Model model) {
		String originalOtp =(String) httpSession.getAttribute("otp");
		if(originalOtp.equals(otp)) {
			return "resetpassword";
		}
		model.addAttribute("incorrect","Incorrect Otp, Please enter again");
		return "passwordverify";
	}
	
	@PostMapping("/resetpassword")
	public String resetPassword(@RequestParam(name="newpassword") String newPassword,@RequestParam(name="confirmpassword") String confirmPassword,HttpSession httpSession,Model model) {
		if(newPassword.equals(confirmPassword)) {
			Customer customer =(Customer) httpSession.getAttribute("customer");
			Account account = customer.getAccount();
			customerService.resetPassword(customer, account, confirmPassword);
			httpSession.invalidate();
			return "redirect:/customer/login";
		}
		model.addAttribute("msg","Enter Password and confirm password didn't match");
		return "resetpassword";
	}
	
}
