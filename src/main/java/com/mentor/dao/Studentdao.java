package com.mentor.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mentor.model.Student;

public interface Studentdao extends JpaRepository<Student,Integer>{

}
