package com.abderrahmen;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.abderrahmen.dao.EmployeeRepository;
import com.abderrahmen.entities.Employee;

@SpringBootApplication
public class SpringSecurityV1Application {

	public static void main(String[] args) throws ParseException {
		ApplicationContext ctx = SpringApplication.run(SpringSecurityV1Application.class, args);
//		EmployeeRepository repository = ctx.getBean(EmployeeRepository.class);
//        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        Date date = dateFormat.parse("1987-06-16");
//		repository.save(new Employee("ali", "ali", date));
//		repository.save(new Employee("mohamed", "mohamed", date));
//		repository.save(new Employee("saleh", "saleh", date));
//		repository.save(new Employee("salwa", "salwa", date));
//		repository.save(new Employee("yosra", "yosra", date));
	}
}
