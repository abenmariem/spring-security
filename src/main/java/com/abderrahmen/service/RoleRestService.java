package com.abderrahmen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.abderrahmen.dao.RoleRepository;
import com.abderrahmen.entities.Role;

@RestController
public class RoleRestService {

	@Autowired
	private RoleRepository roleRepository;
	
	@RequestMapping(value="/addRole")
	public Role save(Role u){
		return roleRepository.save(u);
	}
	
	@RequestMapping(value="/findRoles")
	public List<Role> findAll(){
		return roleRepository.findAll();
	}
		
}
