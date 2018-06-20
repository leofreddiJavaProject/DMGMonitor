package application;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import repository.GeneraleRepository;

import javax.transaction.Transactional;

@SpringBootApplication
@ComponentScan
public class Application extends SpringBootServletInitializer {
    private static final Logger logger = LoggerFactory.getLogger(Application.class);

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Application.class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(Application.class, args);
    }

    @Autowired
    private GeneraleRepository generaleRepository;

    @Transactional
    public void run(String... strings) throws Exception {
        System.out.println(generaleRepository.findAll());
    }
}