package com.emlak.main;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserDetailsService userDetailsService; //beni hatirla ile cikiş yapmadan giris yapabildik.

	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
		.antMatchers("/**/favicon.ico", "/css/**", "js/**", "/images/**", "/webjars/**", "/login","/resources/**").permitAll();
		http.formLogin().loginPage("/login").loginProcessingUrl("/login")
				.failureUrl("/login?loginFailed=true");
		
		http.rememberMe().userDetailsService(userDetailsService);
		
		http.httpBasic();
	}
	
 
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource);
	}
}
	