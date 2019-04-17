package com.br.basemoney.api.repository;

import com.br.basemoney.api.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriasRepository extends JpaRepository<Categoria, Long> {
}
