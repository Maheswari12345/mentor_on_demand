package com.mentor.service;

import java.util.List;

import com.mentor.model.Student;
import com.mentor.model.User;

public interface StudentService {
	public Student insertstudentpropose(Student s);
	List<Student> getproposalstudentlist() throws Exception;

}
