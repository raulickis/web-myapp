package com.myapp.webmyapp.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HealthCheckController {

    @RequestMapping(value = "/health/check", method = RequestMethod.GET)
    public ResponseEntity index(){

        return ResponseEntity.ok("alive");
    }

}