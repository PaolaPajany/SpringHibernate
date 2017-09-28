package org.kreognenberg.controller;

import org.kreognenberg.model.User;
import org.kreognenberg.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class UserController {

    @Autowired
    IUserService userService;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/userForm", method = RequestMethod.GET)
    public ModelAndView user() {
        return new ModelAndView("users/userForm","command", new User());
    }

    @RequestMapping(value = "/userInfo", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("SpringWeb") User user, ModelMap model) {

        model.addAttribute("name", user.getName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("pwd", user.getPwd());
        model.addAttribute("type_of_beer", user.getType_of_beer());
        model.addAttribute("gender", user.getGender());
        model.addAttribute("interest", user.getInterest());
        return "users/userInfo";
    }
}

