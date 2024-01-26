package com.example.springbootbackend;

import com.example.springbootbackend.model.Bruker;
import com.example.springbootbackend.repository.BrukerRepository;
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

	@Override
	public void run(String[] args) throws Exception {
		Bruker bruker = new Bruker();
		bruker.setFornavn("Erik");
		bruker.setEtternavn("Toresen");
		bruker.setJegerStatus(true);
		brukerRepository.save(bruker);

		Bruker bruker1 = new Bruker();
		bruker1.setFornavn("Tore");
		bruker1.setEtternavn("Mortensen");
		bruker1.setJegerStatus(false);
		brukerRepository.save(bruker1);
	}

}
