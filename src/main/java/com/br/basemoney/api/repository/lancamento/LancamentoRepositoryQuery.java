package com.br.basemoney.api.repository.lancamento;

import com.br.basemoney.api.model.Lancamento;
import com.br.basemoney.api.repository.filter.LancamentoFilter;
import com.br.basemoney.api.repository.projection.ResumoLancamento;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface LancamentoRepositoryQuery {

   Page<Lancamento> filtrar(LancamentoFilter lancamentoFilter, Pageable pageable);
   Page<ResumoLancamento> resumir(LancamentoFilter lancamentoFilter, Pageable pageable);
}
