package com.minetoolz.website.controllers;

import com.minetoolz.website.models.Subscriber;
import com.minetoolz.website.models.ToolSuggestion;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
class SiteController
{
    @PersistenceContext
    private EntityManager entityManager;

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String index()
    {
        return "index";
    }


    @Transactional
    @RequestMapping(path = "/", method = RequestMethod.POST)
    public String index(@Valid @ModelAttribute Subscriber subscriber,
                        BindingResult bindingResult,
                        ModelMap modelMap,
                        HttpServletRequest request)
    {
        String message = "";

        if (bindingResult.hasErrors())
        {
            for (ObjectError error : bindingResult.getAllErrors())
                message += "Email " + error.getDefaultMessage();
        }
        else
        {
            subscriber.setIp(request.getRemoteAddr());
            entityManager.persist(subscriber);
            message = "Your email " + subscriber.getEmail() + " was recorded.";
        }

        modelMap.addAttribute("message", message);
        return "message";
    }



    @RequestMapping(path = "/suggest-tool/", method = RequestMethod.GET)
    public String suggestTool(@ModelAttribute ToolSuggestion toolSuggestion)
    {
        return "suggest-tool";
    }



    @Transactional
    @RequestMapping(path = "/suggest-tool/", method = RequestMethod.POST)
    public String suggestTool(@Valid @ModelAttribute ToolSuggestion toolSuggestion,
                              BindingResult bindingResult,
                              ModelMap modelMap,
                              HttpServletRequest request)
    {
        if (bindingResult.hasErrors())
            return "suggest-tool";


        toolSuggestion.setIp(request.getRemoteAddr());
        entityManager.persist(toolSuggestion);
        modelMap.addAttribute("message", "Thank you! We have successfully recorded your suggestion.");
        return "message";
    }





    @RequestMapping("/about/")
    public String about()
    {
        return "about";
    }


    @RequestMapping("/publications/")
    public String publications()
    {
        return "publications";
    }

    @RequestMapping("/login/")
    public String login(ModelMap modelMap)
    {
        modelMap.addAttribute("message", "Coming soon... ");
        return "message";
    }

    @RequestMapping("/guide/")
    public String guide()
    {
        return "guide";
    }
}

