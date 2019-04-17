package com.br.basemoney.api.repository;

import com.br.basemoney.api.model.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PessoasRepository extends JpaRepository<Pessoa, Long> {
}
