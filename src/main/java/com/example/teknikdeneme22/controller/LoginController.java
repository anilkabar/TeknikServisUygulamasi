package com.example.teknikdeneme22.controller;


import com.example.teknikdeneme22.Util.Util;
import com.example.teknikdeneme22.entities.model.Users;
import com.example.teknikdeneme22.repositories.IUsersRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Optional;

@Controller
public class LoginController {


    @Autowired
    private IUsersRepository usersRepository;

    @Autowired
    HttpServletRequest httpServletRequest;

    @Autowired
    Util util;


    @GetMapping({"","/"})
    public String Login(Model model){
        if ( !mesaj.equals("") ) {
            model.addAttribute("mesaj", mesaj);
            mesaj = "";
        }
        return "Login";
    }

    String mesaj="";


    @PostMapping("/UserLogin")
    public String userLogin(Users users){

        Optional<Users> opt=usersRepository.findByUserNameAndPassword(users.getUserName(),users.getPassword());

        if (opt.isPresent()){
            httpServletRequest.getSession().setAttribute("users",opt.get());
            return "redirect:/Home";
        }
        else {
            mesaj="Kullanici Adi veya Şifre Hatalıdır";
            System.out.println("Login Fail");
        }

        return "redirect:/";
    }

    @GetMapping("/Logout")
    public String logout(){
        return util.logout();
    }

}
