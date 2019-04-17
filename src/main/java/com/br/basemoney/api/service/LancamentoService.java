package com.br.basemoney.api.service;

import com.br.basemoney.api.model.Lancamento;
import com.br.basemoney.api.model.Pessoa;
import com.br.basemoney.api.repository.LancamentoRepository;
import com.br.basemoney.api.repository.PessoasRepository;
import com.br.basemoney.api.service.exception.PessoaInexistenteOuInativoException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LancamentoService {

    @Autowired
    private PessoasRepository repository;

    @Autowired
    private LancamentoRepository lancamentoRepository;

    public Lancamento salvar(Lancamento lancamento) {

        Optional<Pessoa> pessoaSalva = repository.findById(lancamento.getPessoa().getId());
        if (pessoaSalva.isEmpty() || pessoaSalva.get().isInativo()) {
            throw  new PessoaInexistenteOuInativoException();
        }
        return lancamentoRepository.save(lancamento);
    }
}
