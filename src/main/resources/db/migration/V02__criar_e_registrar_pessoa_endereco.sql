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



INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('Adenilson Junior', true, 'Rua dos transportes',16, 'Supermercado Gourmet', 'Candangolândia', '71727-140', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('Caroline Donato', true, 'Rua dos transportes',88, 'MSTur', 'Candangolândia', '71727-140', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('João Rodrigues', false, 'Av. Araucarias',93, '', 'São Francisco', '72341-000', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('Ricardo Pereira', true, 'Av. Araucarias',27, '', 'Águas Fundas', '72341-000', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('Josué Mariano', true, 'Av. Araucarias',1151, '', 'Rio Doce', '72341-000', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('Pedro Barbosa', false, 'Av. Araucarias',200, '', 'Samabaia', '72341-000', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('João Silva', false, 'Av. Araucarias',15, '', 'Asa Sul', '72341-000', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('João Silva', false, 'Rua do Abacaxi',116, '', 'Asa Norte', '72341-000', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('Pedro Santos', false, 'Rua do Sabiá',110, '', 'Plano Piloto', '72341-000', 'Brasília', 'Distrito Federal');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado )
    VALUES ('Ricardo Pereira', false, 'Rua da Bateria',160, '', 'Norte Drame', '72341-000', 'Brasília', 'Distrito Federal');