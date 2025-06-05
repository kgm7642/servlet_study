package org.scoula.demo2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {

    @RequestMapping("/home")
    public String home() {

        System.out.println("컨트롤러 동작~!");

        return "index";
    }
}
