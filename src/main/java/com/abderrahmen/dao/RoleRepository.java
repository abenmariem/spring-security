package com.abderrahmen.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abderrahmen.entities.Role;

public interface RoleRepository extends JpaRepository<Role, String> {

}
