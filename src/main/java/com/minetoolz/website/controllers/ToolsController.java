package com.minetoolz.website.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.minetoolz.website.models.Tool;


@Controller
class ToolsController
{
    @PersistenceContext
    private EntityManager entityManager;


    @RequestMapping("/tools/categories/{category}/")
    public String tools(@PathVariable @ModelAttribute String category,
                        ModelMap modelMap)
    {
        modelMap.addAttribute("tools", entityManager.createQuery(
                "SELECT t FROM Tool t ORDER BY name").getResultList());
        return "tools";
    }

    @RequestMapping("/tools/")
    public String tools(ModelMap modelMap)
    {
        return tools(null, modelMap);
    }


    @Transactional
    @RequestMapping("/tools/populate-database")
    public String populateDatabase()
    {
        Tool tool;

        tool = new Tool();
        tool.setTinyDescription("trello.png, Video, Web Site");
        tool.setUrlName("trello");
        tool.setName("Trello");
        tool.setWebsite("http://trello.com");
        tool.setFullDescriptionHtml("<p>Trello is a collaboration tool that organizes your project into boards." +
                        "Trello tells you what is worked on your project, who is working on what,  " +
                        "and where something is in a process. It supports chrome, Safari, Firefox and " +
                        "Internet Explorer browsers. It is available on IOS and Android mobile platforms. "+
                "You will get all the information you need on the website. " +
                        "<p> Every group member can use it for free.");
        entityManager.persist(tool);


        tool = new Tool();
        tool.setTinyDescription("balsamiq.png, Video, Web Site");
        tool.setUrlName("balsamiq");
        tool.setName("Balsamiq");
        tool.setWebsite("http://balsamiq.com");
        tool.setFullDescriptionHtml("<p>Design great interface, software, websites, mobile apps, etc. " +
                "It is a wireframe tool that gives you the experience of sketching on the whiteboard,  " +
                "but using a computer." +
                "It guides for Mockups for desktop, Google Drive, User Experience design. " +
                "<p>You can use the free trial.");
        entityManager.persist(tool);

        tool = new Tool();
        tool.setTinyDescription("zapier.png, Video, Web Site");
        tool.setUrlName("zapier");
        tool.setName("Zapier");
        tool.setWebsite("http://zapier.com");
        tool.setFullDescriptionHtml("<p>Can be used as a powerful glue to hold many different. " +
                "webapps and to create a functional whole.   " +
                "So, it connects the application the user is using. A simple example can be" +
                " like save the gmail attachments to dropbox. " +
                "<p>You can use it for free and it can run ecery 15 minutes and you have the possibility of 100 Tasks/month.");
        entityManager.persist(tool);


        return "redirect:";
    }


}

