package com.abderrahmen;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled=true) // enable @secured
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	public void globalConfig(AuthenticationManagerBuilder auth, DataSource dataSource) throws Exception{
		/*
		auth.inMemoryAuthentication().withUser("admin").password("123").roles("admin","chef");
		auth.inMemoryAuthentication().withUser("chef1").password("123").roles("chef");
		auth.inMemoryAuthentication().withUser("emp1").password("123").roles("employee");*/
		
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select username as principal, password as credentials, active from users where username = ?")
		.authoritiesByUsernameQuery("select user_username as principal, roles_role as role from users_roles where user_username = ?")
		.rolePrefix("ROLE_");
			
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
	
		//authenticate all requests 
		http.
		csrf().disable()		
		.authorizeRequests()
		.antMatchers("/css/**","/js/**", "/images/**").permitAll()
		.anyRequest().authenticated()
//		(form authentication not accessible)
		.and()
		.formLogin()
		.loginPage("/login")
		.permitAll()
//form login is accessible by all		
		.defaultSuccessUrl("/index.html")
//		.failureUrl("/error.html")
		.and()
		.logout()
		.invalidateHttpSession(true)
		.logoutUrl("/logout")
		.permitAll();
		
	}
	
	
}
