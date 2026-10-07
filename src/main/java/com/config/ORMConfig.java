package com.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages = "com")
@EnableTransactionManagement
public class ORMConfig {

	@Bean
	public DataSource getDatasource() {
		DriverManagerDataSource dmds = new DriverManagerDataSource();
		dmds.setDriverClassName("com.mysql.cj.jdbc.Driver");
//		dmds.setUrl("jdbc:mysql://mysql:3306/smartbankdb");
//		dmds.setUsername("appuser");
//		dmds.setPassword("apppass");
		dmds.setUrl("jdbc:mysql://localhost:3306/smart_bank_management_system");
		dmds.setUsername("root");
		dmds.setPassword("root");
		return dmds;
	}

	@Bean
	public LocalSessionFactoryBean getLocalSessionFactoryBean() {
		LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
		DataSource datasource = getDatasource();
		localSessionFactoryBean.setDataSource(datasource);
		localSessionFactoryBean.setPackagesToScan("com");
		localSessionFactoryBean.setHibernateProperties(getProperties());
		return localSessionFactoryBean;

	}

	private Properties getProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

	@Bean
	public HibernateTransactionManager getTransactionManager() {
		HibernateTransactionManager htm = new HibernateTransactionManager();
		htm.setSessionFactory(getLocalSessionFactoryBean().getObject());
		return htm;
	}
}
