package com.mmrkd.controller;

import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mmrkd.bean.Emp;
import com.mmrkd.mapper.EmpDao;
import com.mmrkd.service.EmpService;

@Controller
public class EmpController {
	@Autowired
	public EmpService empService;
	
	
	@RequestMapping("/toLogin.do")
	public String toLogin() {
		return "login";
	}
	
	
	@RequestMapping("/login.do")
	public String login(String eno,String epassword,HttpServletRequest request) {
		Emp emp = empService.login(eno, epassword);
		if (emp != null) {
			request.getSession().setAttribute("emp", emp);
			return "main";
		}else {
			request.setAttribute("msg", "µÇÂ¼Ê§°Ü£¡");
			return "login";
		}
		
	}
	
	@RequestMapping("/getAllEmp.do")
	@ResponseBody
	public List<Emp> findAll() {
		List<Emp> data = empService.findAll();
		return data;
	}
	
	@RequestMapping("/toRegister.do")
	public String toRegister() {
		return "register";
	}
	
	
	@RequestMapping("/register.do")
	public String register(Emp emp,HttpServletRequest request) {
		List<Emp> data = empService.findAll();
		for (Emp emp2 : data) {
			if(emp2.getEno().equals(emp.getEno())) {
				request.setAttribute("msg", "×¢²áÊ§°Ü");
				return "register";
			}
		}
		int rows = empService.insertEmp(emp);
		if(rows>0) {
			return "login";
		}else {
			return "register";
		}
	}
}
