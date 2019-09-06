package com.mentor.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mentor.dao.Studentdao;
import com.mentor.dao.Userdao;
import com.mentor.model.Student;

@Service(value="StudentService")
public class StudentServiceImpl implements StudentService{
	@Autowired
	Studentdao sdao;

	@Override
	public Student insertstudentpropose(Student s) {
		// TODO Auto-generated method stub
		return sdao.save(s);
	}

	@Override
	public List<Student> getproposalstudentlist() throws Exception {
		// TODO Auto-generated method stub
		return sdao.findAll();
	}





}
