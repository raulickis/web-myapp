package com.myapp.webmyapp.services;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.myapp.webmyapp.models.Endereco;
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
    private static String uriEndereco = "/cadastro/endereco";

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

    public Usuario get(String id) {

        Usuario user = new Usuario();

        ApiService request = new ApiService();

        String json = request.DoGet(apiUrl + uri + "/" + id);

        if (json != null) {
            try {
                user = objectMapper.readValue(json, new TypeReference<Usuario>(){});
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return user;
    }

    public Map<String, Object> saveOrUpdate(Usuario user) {

        String json = new String();
        try {
            json = objectMapper.writeValueAsString(user);
        } catch (IOException e) {
            e.printStackTrace();
        }

        ApiService request = new ApiService();

        if (user.getId() == null) {

            // Novo Usuario
            return request.DoPost(apiUrl + uri, json);

        } else {

            // Alteração de Usuario
            Map<String, Object>  result = request.DoPut(apiUrl + uri + "/" + user.getId(), json);
            if (result.get("Errors") != null) {
                return result;
            }

            // Atualiza Endereço por ID, uma vez que não fizemos a alteração de endereço na API
            Endereco endereco = user.getEnderecos().get(0);
            try {
                json = objectMapper.writeValueAsString(endereco);
            } catch (IOException e) {
                e.printStackTrace();
            }

            if (endereco.getId() == null) {
                // Insere Endereço
                result = request.DoPost(apiUrl + uriEndereco, json);
            }else {
                // Altera Endereço
                result = request.DoPut(apiUrl + uriEndereco + "/" + endereco.getId(), json);
            }

            return result;
        }
    }

    public void delete (String id) {

        ApiService request = new ApiService();

        request.DoDelete(apiUrl + uri + "/" + id);

    }


}
