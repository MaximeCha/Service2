package com.val.mch.opentelemetry.Service2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping(value = "service2")
    public String service2()
    {
        return "service2";
    }

    @GetMapping(value = "test")
    public String testController()
    {
        return "test";
    }
}
