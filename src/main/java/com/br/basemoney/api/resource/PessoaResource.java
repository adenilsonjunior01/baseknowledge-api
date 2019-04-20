package com.br.basemoney.api.resource;

import com.br.basemoney.api.event.RecursoCriadoEvent;
import com.br.basemoney.api.model.Pessoa;
import com.br.basemoney.api.repository.PessoasRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.net.URI;
import java.util.List;
import java.util.Optional;
import com.br.basemoney.api.service.PessoaService;

@RestController
@RequestMapping("/pessoas")
public class PessoaResource {

    @Autowired
    private PessoasRepository repository;

    @Autowired
    private ApplicationEventPublisher publisher;

    @PostMapping
    @PreAuthorize("hasAuthority('ROLE_CADASTRAR_PESSOA') and #oauth2.hasScope('write')")
    public ResponseEntity<Pessoa> criar(@Valid @RequestBody Pessoa pessoa, HttpServletResponse response){
        Pessoa pessoaSalva = repository.save(pessoa);
        publisher.publishEvent(new RecursoCriadoEvent(this, response, pessoaSalva.getId()));
        return ResponseEntity.status(HttpStatus.CREATED).body(pessoaSalva);
    }

    @GetMapping
    @PreAuthorize("hasAuthority('ROLE_PESQUISAR_PESSOA') and #oauth2.hasScope('read')")
    public List<Pessoa> listar() {
        return repository.findAll();
    }

    @GetMapping("/{id}")
    @PreAuthorize("hasAuthority('ROLE_PESQUISAR_PESSOA') and #oauth2.hasScope('read')")
    public ResponseEntity<?> buscarPeloId(@PathVariable  Long id) {
        return repository.findById(id)
                .map(obj -> ResponseEntity.ok().body(obj))
                .orElse(ResponseEntity.notFound().build());
    }


    @DeleteMapping("/{id}")
    @PreAuthorize("hasAuthority('ROLE_REMOVER_PESSOA') and #oauth2.hasScope('write')")
    public ResponseEntity<?> remover(@PathVariable Long id) {
        return repository.findById(id)
            .map(obj -> {
                repository.deleteById(id);
                return ResponseEntity.notFound().build();
            }).orElse(ResponseEntity.notFound().build());
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasAuthority('ROLE_CADASTRAR_PESSOA') and #oauth2.hasScope('write')")
    public ResponseEntity<Pessoa> atualizar(@PathVariable Long id, @Valid @RequestBody Pessoa pessoa) {
        return repository.findById(id)
                .map(obj -> {
                   obj.setNome(pessoa.getNome());
                   obj.setAtivo(pessoa.getAtivo());
                   obj.setEndereco(pessoa.getEndereco());
                   Pessoa updated = repository.save(obj);
                   return ResponseEntity.ok().body(updated);
                }).orElse(ResponseEntity.notFound().build());
    }

    @PutMapping("/{id}/ativo")
    @PreAuthorize("hasAuthority('ROLE_CADASTRAR_PESSOA') and #oauth2.hasScope('write')")
    public ResponseEntity<Pessoa> atualizarPropriedadeAtivo (@PathVariable Long id, @RequestBody Boolean ativo){
        return repository.findById(id)
                .map(obj -> {
                    obj.setAtivo(ativo.booleanValue());
                    Pessoa updated = repository.save(obj);
                    return ResponseEntity.ok().body(obj);
                }).orElse(ResponseEntity.notFound().build());

    }


//    Retorna mensagem pro usuario e desenvolvedor caso elemento não encontrado
//    @DeleteMapping("/{id}")
//    public void excluir(@PathVariable  Long id) {
//        repository.deleteById(id);
//
//    }
}
