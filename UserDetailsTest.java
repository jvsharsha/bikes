package com.niit.bikesbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.bikesbackend.dao.UserDetailsDAO;
import com.niit.bikesbackend.model.UserDetails;

public class UserDetailsTest {

	static AnnotationConfigApplicationContext context;
		
	
	
	public UserDetailsTest(){	
       	context=new AnnotationConfigApplicationContext();	
	    context.scan("com.niit.*");
     	context.refresh();
	}
	
	public static void main (String[] args){
		
			
			UserDetailsTest t= new UserDetailsTest(); 
		
			
		UserDetails userDetails  = (UserDetails) context.getBean("userDetails");
		
		   userDetails.setName("jvs");
		   //userDetails.setId("harsha");
		   userDetails.setContact("9666472399");
		   userDetails.setEmailid("jvsharsha333@gmail.com");
		   userDetails.setAddress("musherabad");
	       userDetails.setPassword("harsha");
	userDetails.setEnabled(true);
	userDetails.setRole("ROLE_ADMIN");
	       UserDetailsDAO userDetailsDAO = (UserDetailsDAO) context.getBean("userDetailsDAO");
	       userDetailsDAO.save(userDetails);
	       
	    /* if ( userDetailsDAO.save(userDetails)==true)
			{
				System.out.println("Userdetails created Successefully");
			}
			else
			{
				System.out.println("Userdetials not created");
			}*/
	       
	       
	
  }	
	
	
}
