package com.minetoolz.website.controllers;

import com.minetoolz.website.models.Person;
import com.minetoolz.website.models.Subscriber;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.sql.Timestamp;

@Controller
public class SiteController
{
    @PersistenceContext
    private EntityManager entityManager;

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String showHomePage()
    {
        return "index";
    }


    @Transactional
    @RequestMapping(path = "/", method = RequestMethod.POST)
    public String processForm(@Valid @ModelAttribute Subscriber subscriber,
                              BindingResult bindingResult,
                              ModelMap modelMap,
                              HttpServletRequest request)
    {
        String message;

        if (bindingResult.hasErrors())
        {
            message = bindingResult.getAllErrors().toString();
        }
        else
        {
            try
            {
                entityManager.persist(subscriber);
                message = "Your email " + subscriber.getEmail() + " was recorded.";
            }
            catch (Exception ex)
            {
                message = ex.getMessage();
            }
        }
        modelMap.addAttribute("message", message);
        return "message";
    }


    @RequestMapping(path = "person", method = RequestMethod.GET)
    public String showForm(@ModelAttribute Person person)
    {
        return "form";
    }

    @RequestMapping(path = "person", method = RequestMethod.POST)
    public String processForm(@Valid @ModelAttribute Person person, BindingResult bindingResult)
    {
        bindingResult.hasErrors();
        return "form";
    }
}

