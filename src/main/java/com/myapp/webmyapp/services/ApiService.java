package com.myapp.webmyapp.services;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.*;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.web.client.DefaultResponseErrorHandler;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

class ApiService {

    final private ObjectMapper objectMapper = new ObjectMapper();

    String DoGet(String url) {

        RestTemplate restTemplate = new RestTemplate();

        return restTemplate.getForObject(url, String.class);
    }

    Map<String, Object> DoPost(String url, String json) {

        RestTemplate restTemplate = new RestTemplate();
        restTemplate.setErrorHandler(new ApiErrorHandler());

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<String> request = new HttpEntity<String>(json, headers);

        ResponseEntity<String> response = null;
        Map<String, Object> result = new HashMap<String, Object>();

        try {
            response = restTemplate.postForEntity(url, request, String.class);
            if (response != null && response.getStatusCode() != HttpStatus.OK) {
                System.out.println(response.getBody().toString());
                result = objectMapper.readValue(response.getBody(), new TypeReference<HashMap<String, Object>>(){});
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return result;
    }

    Map<String, Object> DoPut(String url, String json) {

        RestTemplate restTemplate = new RestTemplate();
        restTemplate.setErrorHandler(new ApiErrorHandler());

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<String> request = new HttpEntity<String>(json, headers);

        ResponseEntity<String> response = null;
        Map<String, Object> result = new HashMap<String, Object>();

        try {
            response = restTemplate.exchange(url, HttpMethod.PUT, request, String.class);
            if (response != null && response.getStatusCode() != HttpStatus.OK) {
                System.out.println(response.getBody().toString());
                result = objectMapper.readValue(response.getBody(), new TypeReference<HashMap<String, Object>>(){});
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return result;
    }

    void DoDelete(String url) {

        RestTemplate restTemplate = new RestTemplate();

        restTemplate.delete(url);

    }

}

class ApiErrorHandler extends DefaultResponseErrorHandler {
    @Override
    public void handleError(ClientHttpResponse response) throws IOException {
        System.out.println(response.getRawStatusCode());
    }
}