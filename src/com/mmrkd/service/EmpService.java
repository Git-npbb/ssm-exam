package com.mmrkd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mmrkd.bean.Emp;
import com.mmrkd.mapper.EmpDao;

@Service
public class EmpService {
	@Autowired
	private EmpDao empDao;

	public Emp login(String eno,String epassword) {
		return empDao.getEmp(eno, epassword);
	}
	
	public List<Emp> findAll(){
		return empDao.findAll();
	}
	
	public int insertEmp(Emp emp) {
		return empDao.insertEmp(emp);
	}
	
	
}
	



