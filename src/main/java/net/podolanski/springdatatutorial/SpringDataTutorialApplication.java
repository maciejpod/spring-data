package net.podolanski.springdatatutorial;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Arrays;


@SpringBootApplication
public class SpringDataTutorialApplication implements CommandLineRunner {

	private static final Logger LOG = LoggerFactory.getLogger(SpringDataTutorialApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(SpringDataTutorialApplication.class, args);
	}

	@Override
	public void run(String... strings) throws Exception {

	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
