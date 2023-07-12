//package com.example.cv_kurs.config;
//
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.HttpMethod;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//import org.springframework.security.web.SecurityFilterChain;
//
//import java.util.Arrays;
//
//@Configuration
//@EnableWebSecurity
//public class  Auth {
//
//
//    @Bean
//    protected PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//
//    @Bean
//    public InMemoryUserDetailsManager get() {
//        UserDetails user = User.withUsername("user")
//                .password(passwordEncoder().encode("user"))
//                .roles("USER")
//                .build();
//
//        UserDetails admin = User.withUsername("admin")
//                .password(passwordEncoder().encode("admin"))
//                .roles("ADMIN")
//                .build();
//        return new InMemoryUserDetailsManager(Arrays.asList(user, admin));
//    }
//
//    private SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http.csrf().disable()
//
//                .authorizeRequests()
//
//                .antMatchers("/about", "/experience", "/education", "/skills", "/interests") // mają dostęp wszyscy użytkownicy z ROLE_USER
//                .hasAnyAuthority("ROLE_USER")
////                .antMatchers("/index", "/experience", "/education", "/skills", "/interests") // mają dostęp wszyscy użytkownicy z ROLE_USER
//                .antMatchers(HttpMethod.POST, "/experience", "/about").permitAll()
//                .anyRequest().hasRole("ADMIN")
////                .hasAnyAuthority("ROLE_ADMIN")
//                .and()
//                .formLogin() // wskazuje, że teraz będę konfigurował formularz autoryzacji
//                .loginPage("/login")
//                .usernameParameter("username") // nadajemy nazwę jaka będzie jako name w inpucie loginu formularza
//                .passwordParameter("password") // nadajemy nazwę jaka będzie jako name w inpucie hasła formularza
//                .loginProcessingUrl("/index")
//                .failureForwardUrl("/login?error") // co się stanie w momencie wpisania błędnych danych
//                .defaultSuccessUrl("/login"); // co się stanie w momencie prawidłowego wpisania loginu i hasła
//
//
//        return http.build();
//    }
//
//}
