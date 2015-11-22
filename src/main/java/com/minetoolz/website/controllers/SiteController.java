package com.minetoolz.website.controllers;

import com.minetoolz.website.models.Subscriber;
import com.minetoolz.website.models.Tool;
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
import java.util.List;


@Controller
class SiteController
{
    @PersistenceContext
    private EntityManager entityManager;

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap)
    {
        modelMap.addAttribute("tools", entityManager.createQuery(
            "SELECT t FROM Tool t ORDER BY name").getResultList());
        return "index";
    }

    //added because of error in guide page
    @RequestMapping(path = "/allTools/", method = RequestMethod.GET)
    public String guide(ModelMap modelMap)
    {
        List<Tool> tools = entityManager.createQuery("SELECT t FROM Tool t ORDER BY name", Tool.class).
                getResultList();
        modelMap.addAttribute("tools", tools);
        return "allTools";
    }
    //end

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





    @RequestMapping("/contacts/")
    public String contacts()
    {
        return "contacts";
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

    @RequestMapping("/allTools/")
    public String allTools()
    {
        return "allTools";
    }

    @RequestMapping(path = "/subscribe/", method = RequestMethod.GET)
    public String subscribe(@ModelAttribute Subscriber subscriber)
    {
        return "subscribe";
    }


    @Transactional
    @RequestMapping(path = "/subscribe/", method = RequestMethod.POST)
    public String index(@Valid @ModelAttribute Subscriber subscriber,
                        BindingResult bindingResult,
                        ModelMap modelMap,
                        HttpServletRequest request)
    {
        if (bindingResult.hasErrors())
            return "subscribe";

        subscriber.setIp(request.getRemoteAddr());
        entityManager.persist(subscriber);
        modelMap.addAttribute("message", "Thank you! Your email " + subscriber.getEmail() + " was recorded.");
        return "message";
    }



}

