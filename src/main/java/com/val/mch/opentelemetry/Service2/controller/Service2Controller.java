package com.val.mch.opentelemetry.Service2.controller;

import com.val.mch.opentelemetry.Service2.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Service2Controller {

    @Autowired
    private MessageService messageService;

    @GetMapping(value = "service2")
    public String service2()
    {
        return "service2";
    }

    @PostMapping(value = "message")
    public String produceMessage(@RequestBody final String message)
    {
        messageService.produceMessage(message);
        return "message envoyé";
    }
}
