package com.niit.bikesbackend.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component



public class UserRole {
@Id
@GeneratedValue



private String id;
private String authority;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getAuthority() {
	return authority;
}
public void setAuthority(String authority) {
	this.authority = authority;
}


}

