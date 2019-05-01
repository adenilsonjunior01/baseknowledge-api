CREATE TABLE lancamento (
   id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
   descricao VARCHAR(50) NOT NULL,
   data_vencimento DATE NOT NULL,
   data_pagamento DATE,
   valor DECIMAL(10,2),
   observacao VARCHAR(100),
   tipo VARCHAR(20) NOT NULL,
   id_categoria BIGINT(20) NOT NULL,
   id_pessoa BIGINT(20) NOT NULL,
   FOREIGN KEY (id_categoria) REFERENCES categoria(id),
   FOREIGN KEY (id_pessoa) REFERENCES pessoa(id)
) ENGINE=InnoDB DEFAULT  CHARSET=utf8;

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Bahamas', '2019-04-10', '2019-08-20', 8500.00, null, 'DESPESA', 2, 2);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Top Club', '2019-02-11', '2019-03-15', 500.00, null, 'DESPESA', 3, 3);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('CEMIG', '2019-03-11', '2019-05-15', 1000.00, 'Geração', 'DESPESA', 3, 2);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Extra', '2019-05-11', '2019-06-15', 800.00, null, 'DESPESA', 3, 7);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Extra', '2019-06-11', '2019-08-15', 800.00, 'Conferencia Material', 'DESPESA', 3, 6);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('DMAE', '2019-01-22', '2019-12-18', 550.00, null, 'RECEITA', 4, 6);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Despachante', '2019-07-22', '2019-12-18', 698.00, null, 'DESPESA', 3, 9);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Supermercado', '2019-07-22', null, 698.00, null, 'DESPESA', 3, 9);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Academia', '2019-03-20', '2019-03-25', 698.00, null, 'RECEITA', 3, 3);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Conta de luz', '2019-02-20', null, 698.00, null, 'DESPESA', 3, 5);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Clube', '2019-07-20', '2019-07-28', 698.00, null, 'RECEITA', 5, 10);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Impostos', '2019-09-22', null, 698.00, null, 'DESPESA', 5, 6);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Multa', '2019-08-10', '2019-09-20', 698.00, null, 'RECEITA', 2, 8);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Padaria', '2019-01-22', null, 698.00, null, 'DESPESA', 2, 7);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa)
    VALUES ('Almoço', '2019-04-20', '2019-06-25', 698.00, null, 'RECEITA', 1, 4);