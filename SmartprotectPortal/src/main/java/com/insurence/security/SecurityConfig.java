//package com.insurence.security;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http
//            .authorizeRequests()
//                .antMatchers("/pageAdminHome").hasRole("ADMIN")
//                .antMatchers("/pageAgentHome").hasRole("AGENT")
//                .antMatchers("/pageClientHome").hasRole("CLIENT")
//                .and()
//            .formLogin()
//                .loginPage("/login") // Create a custom login page
//                .permitAll()
//                .and()
//            .logout()
//                .permitAll();
//    }
//}
