package com.abderrahmen.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.abderrahmen.dao.EmployeeRepository;
import com.abderrahmen.entities.Employee;

@RestController
public class EmployeeRestService {
	@Autowired
	EmployeeRepository employeeRepository;

	
	//bindingResult contains the generated validation errors
	@Secured({"ROLE_admin", "ROLE_chef"})
	@RequestMapping(value="/saveEmployee", method=RequestMethod.POST)
	public Object saveEmployee(@RequestBody @Valid Employee e, BindingResult bindingResult){
		
		if(bindingResult.hasErrors()){
			Map<String, Object> errors = new HashMap<>();
			errors.put("errors", true);
			for (FieldError fe : bindingResult.getFieldErrors()){
				errors.put(fe.getField(), fe.getDefaultMessage());
			}
			return errors;
		}
		
		return employeeRepository.save(e);
	}
	
	@Secured({"ROLE_admin", "ROLE_chef", "ROLE_employee"})
	@RequestMapping(value="/employees")
	public Page<Employee> listEmployees(int page, int size){
		return employeeRepository.findAll(new PageRequest(page, size));
	}
	
	
	@RequestMapping(value="/loggedUser")
	public Map<String, Object> getLoggedUser(HttpSession session){
		//spring security stocks user data in the session
		SecurityContext securityContext = (SecurityContext) session.getAttribute("SPRING_SECURITY_CONTEXT");
		String username = securityContext.getAuthentication().getName();
		List<String> roles = new ArrayList<String>();
		for (GrantedAuthority ga: securityContext.getAuthentication().getAuthorities()){
			roles.add(ga.getAuthority());
		}
		Map<String, Object> params = new HashMap<>();
		params.put("username", username);
		params.put("roles", roles);
		return params;
	}
	
}
