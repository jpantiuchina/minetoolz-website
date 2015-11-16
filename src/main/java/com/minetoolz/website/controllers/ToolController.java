package com.minetoolz.website.controllers;

import com.minetoolz.website.models.Tool;
import com.minetoolz.website.models.UserRating;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/tools/{urlName}/")
class ToolController
{
    @PersistenceContext
    private EntityManager entityManager;


    private Tool getToolByUrlName(String urlName)
    {
        return entityManager.createQuery("SELECT t FROM Tool t WHERE urlName = :urlName", Tool.class).
                setParameter("urlName", urlName).getSingleResult();
    }


    @Transactional
    @RequestMapping(method = RequestMethod.GET)
    public String tool(@PathVariable String urlName,
                       @ModelAttribute UserRating userRating,
                       ModelMap modelMap)
    {
        Tool tool = getToolByUrlName(urlName);

        modelMap.addAttribute("tool", tool);

        Hibernate.initialize(tool.getUserRatings());

//        modelMap.addAttribute("userRatings", {new UserRating()});
//        modelMap.addAttribute("userRating", new UserRating());

//        modelMap.addAttribute("tool", entityManager.find(Tool.class, id));
        return "tool";
    }


    @Transactional
    @RequestMapping(method = RequestMethod.POST)
    public String tool(@PathVariable String urlName,
                       @Valid @ModelAttribute UserRating userRating,
                       BindingResult bindingResult,
                       ModelMap modelMap,
                       ServletRequest request)
    {
        if (bindingResult.hasErrors())
        {
            System.out.println(bindingResult.getAllErrors());
            return tool(urlName, userRating, modelMap);
        }

        Tool tool = getToolByUrlName(urlName);
        userRating.setTool(tool);
        userRating.setIp(request.getRemoteAddr());



        entityManager.persist(userRating);
        entityManager.flush();



        return "redirect:#comment-" + userRating.getId();
    }


//    private String showToolPage(String urlName)
}

