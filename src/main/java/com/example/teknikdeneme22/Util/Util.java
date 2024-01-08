package com.example.teknikdeneme22.Util;

import com.example.teknikdeneme22.repositories.ICihazlarRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.websocket.server.ServerEndpoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class Util {


    @Autowired
    private static ICihazlarRepository cihazlarRepository;


     @Autowired
    private HttpServletRequest req;


    public String  IslemBekleyenveTamamlananlar(){
        int islemBekleyenToplamCihazSayisi=cihazlarRepository.findAllByIsActive(true).size();
        int islemTamamlananCihazSayisi=cihazlarRepository.findAllByIsActive(false).size();
        req.getSession().setAttribute("islemTamamlananCihazSayisi",islemTamamlananCihazSayisi);
        req.getSession().setAttribute("islemBekleyenCihazSayisi",islemBekleyenToplamCihazSayisi);
        return null;
    }

}
