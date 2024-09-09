package com.val.mch.opentelemetry.Service2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping(value = "service2")
    public String testController()
    {
        return "coucou";
    }
}
