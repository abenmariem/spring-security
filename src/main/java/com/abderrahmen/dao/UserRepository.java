package com.abderrahmen.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abderrahmen.entities.User;

public interface UserRepository extends JpaRepository<User, String> {

}
