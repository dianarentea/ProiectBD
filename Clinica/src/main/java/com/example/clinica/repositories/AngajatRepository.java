package com.example.clinica.repositories;

import com.example.clinica.entities.Angajat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AngajatRepository extends JpaRepository<Angajat, Long> {
}