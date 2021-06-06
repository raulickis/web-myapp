package com.myapp.webmyapp;

import co.elastic.apm.attach.ElasticApmAttacher;
import io.prometheus.client.exporter.HTTPServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import java.io.IOException;

@SpringBootApplication
public class WebMyappApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WebMyappApplication.class);
	}
	public static void main(String[] args) {

		// Start Elasticsearch APM
		ElasticApmAttacher.attach();

		// Start Prometheus Server Metrics (/metrics) in a separate Thread
		try {
			HTTPServer server = new HTTPServer(33300);
		} catch (IOException e) {
			System.out.println("Erro inicializando o servidor de métricas");
		}

		// Start Spring Application
		SpringApplication.run(WebMyappApplication.class, args);

		System.out.println("\n\n CLIQUE NO LINK PARA ABRIR SUA APLICAÇÃO ==>  http://localhost:8080/ \n\n");

	}
}