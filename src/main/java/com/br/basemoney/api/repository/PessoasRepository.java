package com.br.basemoney.api.repository;

import com.br.basemoney.api.model.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PessoasRepository extends JpaRepository<Pessoa, Long> {
}
