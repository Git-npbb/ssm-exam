package com.mmrkd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mmrkd.bean.Emp;

public interface EmpDao {
	public Emp getEmp(@Param("eno")String eno,@Param("epassword")String epassword);
	public int insertEmp(Emp emp);
	public List<Emp> findAll();
}
