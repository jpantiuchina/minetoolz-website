package com.minetoolz.website.controllers;

import com.minetoolz.website.models.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class HomeController
{
    @RequestMapping(method = RequestMethod.GET)
    public String showHomePage(ModelMap model)
    {
        return "index";
    }

    @RequestMapping(value = "person", method = RequestMethod.GET)
    public String showForm(@ModelAttribute Person person)
    {
        return "form";
    }

    @RequestMapping(value = "person", method = RequestMethod.POST)
    public String processForm(@Valid @ModelAttribute Person person, BindingResult bindingResult)
    {
        bindingResult.hasErrors();
        return "form";
    }
}

