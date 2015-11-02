package com.minetoolz.website.util;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public final class LayoutTemplate extends HandlerInterceptorAdapter
{
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception
    {
        String originalViewName = modelAndView.getViewName();
        modelAndView.setViewName("layout");
        modelAndView.addObject("content", originalViewName);
    }
}
