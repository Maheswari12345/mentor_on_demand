package com.mentor.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@Column(name="username")
private String username;
@Column(name="status")
private String status;
@Override
public String toString() {
	return "Student [id=" + id + ", username=" + username + ", status=" + status + ", getStatus()=" + getStatus()
			+ ", getId()=" + getId() + ", getUsername()=" + getUsername() + ", getClass()=" + getClass()
			+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

}
