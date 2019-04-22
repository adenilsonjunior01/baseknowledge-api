package com.br.basemoney.api.service;

import com.br.basemoney.api.model.Pessoa;
import com.br.basemoney.api.repository.PessoasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PessoaService {

    @Autowired
    private PessoasRepository repository;

    public ResponseEntity<?> atualizarPropriedadeActive(Long id, Boolean ativo) {
        return repository.findById(id)
                .map(obj -> {
                    obj.setAtivo(ativo);
                    repository.save(obj);
                    return ResponseEntity.ok().build();
                }).orElse(ResponseEntity.notFound().build());
    }

    public Pessoa buscarPessoaPeloId(Long id) {
        Optional<Pessoa> pessoaSalva = repository.findById(id);

        if (!pessoaSalva.isPresent()) {
            throw new EmptyResultDataAccessException(1);
        }

        return pessoaSalva.get();
    }
}
