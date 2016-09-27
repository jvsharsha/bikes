package com.niit.controller;


import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;

import org.springframework.stereotype.Component;

import com.niit.bikesbackend.model.UserDetails;
@Component
public class RegistrationHandler {
	public UserDetails initFlow(){
		return new UserDetails();
	}

	public String validateDetails(UserDetails userdetails,MessageContext messageContext){
		String status = "success";
		if(userdetails.getId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("ID cannot be Empty").build());
			status = "failure";
			System.out.println("id pass");
		}
		if(userdetails.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("UserName cannot be Empty").build());
			status = "failure";
			System.out.println("userName pass");
		}
		if(userdetails.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
			System.out.println("password pass");
		}
		if(userdetails.getConfirmpassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"cpassword").defaultText("Confirmed Password cannot be Empty").build());
			status = "failure";
			System.out.println("cpassword pass");
		}
		if(!userdetails.getConfirmpassword().equals(userdetails.getPassword())){
			messageContext.addMessage(new MessageBuilder().error().source(
					"cpassword").defaultText("Passwords do not match").build());
			status = "failure";
			System.out.println("check password pass");
		}
		
			if(userdetails.getEmailid().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"Mail").defaultText("Email cannot be Empty").build());
			status = "failure";
			System.out.println("emailid pass");
		}
		if(userdetails.getContact().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"contact").defaultText("Mobile No. cannot be Empty").build());
			status = "failure";
			System.out.println("mob pass");
		}
		if(userdetails.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
			System.out.println("address pass");
		}
		
		return status;
	}
}

