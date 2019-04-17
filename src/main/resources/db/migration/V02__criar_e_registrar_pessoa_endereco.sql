CREATE TABLE pessoa (
    id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    ativo BOOLEAN NOT NULL,
    logradouro VARCHAR(40),
    numero VARCHAR(10),
    complemento VARCHAR(80),
    bairro VARCHAR(40),
    cep VARCHAR(15),
    cidade VARCHAR(40),
    estado VARCHAR(20)

) ENGINE=InnoDB DEFAULT  CHARSET=utf8;

# PREENCHER O BANCO COM ALGUNS DADOS
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    values ('Adenilson Junior', true, 'Rua dos transportes',16, 'Supermercado Gourmet', 'Candangolândia', '71727-140', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    values ('Caroline Donato', true, 'Rua dos transportes',16, 'MSTur', 'Candangolândia', '71727-140', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    values ('João Rodrigues', false, 'Av. Araucarias',16, '', 'Águas Claras', '72341-000', 'Brasília', 'Distrito Federal');