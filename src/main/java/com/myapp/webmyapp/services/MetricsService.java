package com.myapp.webmyapp.services;

import io.prometheus.client.Counter;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class MetricsService {

    static final Counter metricRequests = Counter.build()
            .name("web_myapp_requests_total")
            .help("Total API-WS requests.")
            .labelNames("store", "controller", "method")
            .register();

    public boolean updateMetricsRequestsTotal(Map<String, Object> args) {

        metricRequests.labels("minha-loja", "minha-funcionalidade", "GET").inc();

        return true;
    }

}
