package com.minetoolz.website.controllers;

import com.minetoolz.website.models.Subscriber;
import com.minetoolz.website.models.Tool;
import com.minetoolz.website.models.ToolSuggestion;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

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



    @RequestMapping(path = "/suggest-tool", method = RequestMethod.GET)
    public String suggestTool(@ModelAttribute ToolSuggestion toolSuggestion)
    {


        return "suggest-tool";
    }



    @Transactional
    @RequestMapping(path = "/suggest-tool", method = RequestMethod.POST)
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




    @RequestMapping("/tools/categories/{category}")
    public String tools(@PathVariable String category, ModelMap modelMap)
    {
        modelMap.addAttribute("category", category);
        modelMap.addAttribute("tools", entityManager.createQuery(
                "SELECT t FROM Tool t ORDER BY name").getResultList());
        return "tools";
    }

    @RequestMapping("/tools")
    public String tools(ModelMap modelMap)
    {
        return tools(null, modelMap);
    }

    @RequestMapping("/tools/{id}")
    public String tool(@PathVariable() String id, ModelMap modelMap)
    {
        Tool tool = new Tool();
        tool.setName("Google Docs");
        tool.setDescription("Google Docs, Google Sheets and Google Slides are a word processor, a spreadsheet and a presentation program respectively, all part of a free, web-based software office suite offered by Google within its Google Drive service. The suite allows users to create and edit documents online while collaborating with other users in real-time.");
        modelMap.addAttribute("tool", tool);
//        modelMap.addAttribute("tool", entityManager.find(Tool.class, id));
        return "tool";
    }


    @RequestMapping("/about")
    public String about()
    {
        return "about";
    }


    @RequestMapping("/contacts")
    public String contacts()
    {
        return "contacts";
    }


}

