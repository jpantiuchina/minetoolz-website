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
        tool.setName("Xtensio");
        tool.setWebsite("http://xtensio.com/");
        tool.setDescription("Xtensio was born out of the need for easy-to-use tools to help entrepreneurs plan, strategize, and develop their startup. It is a toolbox that is not only offering presentation tools but also interactive templates that will be useful during research, brainstorming, planning and strategy phases of a company. The first set of tools include User Persona Creator, One Pager Builder, Lean Canvas Creator, Fundraising Summary, SWOT Analysis, and Blank Slate – live page building features for monthly reports, html banners, sales pitches, etc.\n\n" +
                "All the tools are free.");
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

