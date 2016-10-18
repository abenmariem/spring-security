package com.abderrahmen.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abderrahmen.entities.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
