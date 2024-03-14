package com.example.springbootbackend;

import com.example.springbootbackend.model.Aktivitetslogg;
import com.example.springbootbackend.model.Bruker;
import com.example.springbootbackend.repository.BrukerRepository;
import com.example.springbootbackend.repository.AktivitetsloggRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringbootBackendApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootBackendApplication.class, args);
	}


	@Autowired
	private BrukerRepository brukerRepository;

	@Autowired
	private AktivitetsloggRepository aktivitetsloggRepository;

	@Override
	public void run(String[] args) throws Exception {
	}

}
