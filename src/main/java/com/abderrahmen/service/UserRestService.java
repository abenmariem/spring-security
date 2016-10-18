package com.abderrahmen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.abderrahmen.dao.RoleRepository;
import com.abderrahmen.dao.UserRepository;
import com.abderrahmen.entities.Role;
import com.abderrahmen.entities.User;

@RestController
@Secured(value = { "ROLE_ADMIN" })
public class UserRestService {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;

	@RequestMapping(value = "/addUser")
	public User save(User u) {
		return userRepository.save(u);
	}

	@RequestMapping(value = "/findUsers")
	public List<User> findAll() {
		return userRepository.findAll();
	}

	@RequestMapping(value = "/addRoleToUser")
	public User addRoleToUser(String username, String roleName) {
		User u = userRepository.findOne(username);
		Role r = roleRepository.findOne(roleName);
		u.getRoles().add(r);
		userRepository.save(u);
		return u;
	}

}
