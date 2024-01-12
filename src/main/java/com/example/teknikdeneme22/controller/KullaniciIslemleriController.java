package com.example.teknikdeneme22.controller;


import com.example.teknikdeneme22.Util.Util;
import com.example.teknikdeneme22.entities.model.Users;
import com.example.teknikdeneme22.repositories.IUsersRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Optional;

@Controller
public class KullaniciIslemleriController {


    @Autowired
    private IUsersRepository usersRepository;

    @Autowired
    private Util util;

    @Autowired
    HttpServletRequest httpServletRequest;

    String mesaj="";
    String kontrol="";

    @GetMapping("/KullaniciIslemleri")
    public String usersOperations(Model model){
        List<Users> usersList=usersRepository.findAll();
        model.addAttribute("kontrol",kontrol);
        model.addAttribute("mesaj",mesaj);
        model.addAttribute("usersList",usersList);
        kontrol="";
        mesaj="";
        return util.control("KullaniciIslemleri") ;
    }

    @PostMapping("KullaniciEkle")
        public String addUsers(Users users,String passwordAgain){
        String password=users.getPassword();
        String password2=passwordAgain.toString();
        int compare=password.compareTo(password2);
        if (compare==0){
            usersRepository.save(users);
            kontrol="success";
            mesaj="Kullanıcı Ekleme İşlemi Başarılı";

            return "redirect:/KullaniciIslemleri";
        }
        else{

            kontrol="error";
            mesaj="Şifre ve Şifre Tekrar Uyuşmuyor";
            return "redirect:/KullaniciIslemleri";

        }

    }

    @GetMapping("KullaniciSil/{id}")
    public String deleteUser(@PathVariable String id){

        if (httpServletRequest.getSession().getAttribute("users")==null){

            return "redirect:/Login";
        }


        int count=usersRepository.findAll().size();
        if (count>1){

            Optional<Users> optionalUsers=usersRepository.findById(Long.valueOf(id));
            if (optionalUsers.isPresent()){


                usersRepository.delete(optionalUsers.get());
                kontrol="success";
                mesaj="Kullanici Silme İşlemi Başarılı";
                return "redirect:/KullaniciIslemleri";
            }
            else {
                kontrol="error";
                mesaj="Hata Oluştu Lütfen Tekrar Deneyiniz";
                return "redirect:/KullaniciIslemleri";
            }
        }
        else{
            kontrol="error";
            mesaj="Kullanıcı Sayısı Bir Kişiden Az Olamaz ";
            return "redirect:/KullaniciIslemleri";
        }


    }

}
