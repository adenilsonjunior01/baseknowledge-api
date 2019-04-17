package com.br.basemoney.api.repository;

import com.br.basemoney.api.model.Lancamento;
import com.br.basemoney.api.repository.lancamento.LancamentoRepositoryQuery;
import org.springframework.data.jpa.repository.JpaRepository;



public interface LancamentoRepository extends JpaRepository<Lancamento, Long>, LancamentoRepositoryQuery {

}
