package com.vn.viettel.DemoConnectSQLServer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DemoConnectSqlServerApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(DemoConnectSqlServerApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(DemoConnectSqlServerApplication.class, args);
	}

}
