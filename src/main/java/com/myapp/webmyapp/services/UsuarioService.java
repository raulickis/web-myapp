package com.myapp.webmyapp.services;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.myapp.webmyapp.models.Usuario;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.*;

@Service
public class UsuarioService {

    @Value( "${api.myapp.url}" )
    private String apiUrl;

    private static String uri = "/cadastro/usuario";

    final private ObjectMapper objectMapper = new ObjectMapper();

    public List<Usuario> list() {

        List<Usuario> userList = new ArrayList<Usuario>();

        ApiService request = new ApiService();
        String json = request.DoGet(apiUrl + uri);

        if (json != null) {
            try {
                userList = objectMapper.readValue(json, new TypeReference<List<Usuario>>(){});
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return userList;
    }

    public Map<String, Object> save(Usuario user) {

        user.setDataCadastro(new Date());

        String json = new String();
        try {
            json = objectMapper.writeValueAsString(user);
        } catch (IOException e) {
            e.printStackTrace();
        }

        ApiService request = new ApiService();

        return request.DoPost(apiUrl + uri, json);
    }

    public void delete (String id) {

        ApiService request = new ApiService();

        request.DoDelete(apiUrl + uri + "/" + id);

    }


}
