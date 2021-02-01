package com.myapp.webmyapp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.client.RestTemplate;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {

    @Autowired
    private Environment env;

    public String listUsers() {
        final String uri = env.getProperty("api.myapp.url") + "/cadastro/usuario";
        RestTemplate restTemplate = new RestTemplate();
        return restTemplate.getForObject(uri, String.class);
    }

}
