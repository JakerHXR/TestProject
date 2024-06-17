package system.testproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import system.testproject.services.impl.UserServicesImpl;


@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    UserServicesImpl userServices;

    @GetMapping
    public String showLoginForm(){ return "login";}

    @PostMapping("/user")
    public ModelAndView login(@RequestParam String userName, @RequestParam String userPwd){
        ModelAndView modelAndView = new ModelAndView();
        String roleName = userServices.getRoleName(userName,userPwd);
        if ("admin".equals(roleName)){
            modelAndView.setViewName("redirect:/admin");
        }else if ("teacher".equals(roleName)){
            modelAndView.setViewName("redirect:/teacher");
        } else if ("student".equals(roleName)) {
            modelAndView.setViewName("redirect:/student");
        }else {
            modelAndView.addObject("message","登录失败");
            modelAndView.setViewName("login");
        }
        return modelAndView;
    }
}



