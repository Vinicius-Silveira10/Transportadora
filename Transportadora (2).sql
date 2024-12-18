-- Criando o domínio
CREATE DOMAIN dm_descricao VARCHAR(100);

-- Criando a tabela cidade
CREATE TABLE cidade (
    id_cid INTEGER NOT NULL,
    nome_cid VARCHAR(100),
    uf_cid CHAR(2),
    PRIMARY KEY (id_cid)
);

-- Inserindo dados na tabela cidade
INSERT INTO cidade (id_cid, nome_cid, uf_cid) VALUES
(1, 'São Paulo', 'SP'),
(2, 'Rio de Janeiro', 'RJ'),
(3, 'Belo Horizonte', 'MG'),
(4, 'Curitiba', 'PR'),
(5, 'Porto Alegre', 'RS'),
(6, 'Salvador', 'BA'),
(7, 'Fortaleza', 'CE'),
(8, 'Recife', 'PE'),
(9, 'Manaus', 'AM'),
(10, 'Goiânia', 'GO'),
(11, 'Belém', 'PA'),
(12, 'Campo Grande', 'MS'),
(13, 'Cuiabá', 'MT'),
(14, 'Florianópolis', 'SC'),
(15, 'Aracaju', 'SE'),
(16, 'João Pessoa', 'PB'),
(17, 'Maceió', 'AL'),
(18, 'Vitória', 'ES'),
(19, 'Natal', 'RN'),
(20, 'Teresina', 'PI');


-- Criando a tabela caminhao
CREATE TABLE caminhao (
    id_cam CHAR(7),
    placa_cam CHAR(7),
    ano_cam INTEGER,
    marca_cam VARCHAR(30),
    carga_cam INTEGER,
    PRIMARY KEY (id_cam)
);

-- Inserindo dados na tabela caminhao
INSERT INTO caminhao (id_cam, placa_cam, ano_cam, marca_cam, carga_cam) VALUES
('CAM001', 'ABC0001', 2015, 'Volvo', 12000),
('CAM002', 'DEF0002', 2018, 'Scania', 15000),
('CAM003', 'GHI0003', 2020, 'Mercedes', 20000),
('CAM004', 'JKL0004', 2016, 'Iveco', 14000),
('CAM005', 'MNO0005', 2019, 'Volvo', 16000),
('CAM006', 'PQR0006', 2017, 'Scania', 13000),
('CAM007', 'STU0007', 2021, 'Mercedes', 17000),
('CAM008', 'VWX0008', 2018, 'Iveco', 19000),
('CAM009', 'YZA0009', 2015, 'Volvo', 18000),
('CAM010', 'BCD0010', 2022, 'Scania', 20000);



-- Criando a tabela cliente
CREATE TABLE cliente (
    id_cliente INTEGER NOT NULL,
    nome_cliente VARCHAR(50),
    endereco_cliente VARCHAR(20),
    fone_cliente CHAR(11),
    ie_cliente VARCHAR(20),
    cnpj_cliente CHAR(14),
    area_cliente VARCHAR(20),
    cid_id INTEGER,
    id_viagem CHAR(20),
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (cid_id) REFERENCES cidade(id_cid)
);

-- Inserindo dados na tabela cliente
INSERT INTO cliente (id_cliente, nome_cliente, endereco_cliente, fone_cliente, ie_cliente, cnpj_cliente, area_cliente, cid_id, id_viagem) VALUES
(1, 'Cliente A', 'Rua A, 100', '11999999999', '123456789', '11111111000100', 'Transporte', 1, 'VIA001'),
(2, 'Cliente B', 'Rua B, 200', '21999999999', '234567890', '22222222000100', 'Logística', 2, 'VIA002'),
(3, 'Cliente C', 'Rua C, 300', '31999999999', '345678901', '33333333000100', 'Comércio', 3, 'VIA003'),
(4, 'Cliente D', 'Rua D, 400', '41999999999', '456789012', '44444444000100', 'Construção', 4, 'VIA004'),
(5, 'Cliente E', 'Rua E, 500', '51999999999', '567890123', '55555555000100', 'Indústria', 5, 'VIA005'),
(6, 'Cliente F', 'Rua F, 600', '61999999999', '678901234', '66666666000100', 'Educação', 6, 'VIA006'),
(7, 'Cliente G', 'Rua G, 700', '71999999999', '789012345', '77777777000100', 'Saúde', 7, 'VIA007'),
(8, 'Cliente H', 'Rua H, 800', '81999999999', '890123456', '88888888000100', 'Alimentação', 8, 'VIA008'),
(9, 'Cliente I', 'Rua I, 900', '91999999999', '901234567', '99999999000100', 'Tecnologia', 9, 'VIA009'),
(10, 'Cliente J', 'Rua J, 1000', '10199999999', '123456788', '10101010100100', 'Consultoria', 10, 'VIA010');



-- Criando a tabela motorista
CREATE TABLE motorista (
    id_mot INTEGER,
    nome_mot VARCHAR(40),
    end_mot CHAR(60),
    fone_mot CHAR(19),
    cnh_mot VARCHAR(20),
    sexo_mot CHAR(9),
    PRIMARY KEY (id_mot)
);

-- Inserindo dados na tabela motorista
INSERT INTO motorista (id_mot, nome_mot, end_mot, fone_mot, cnh_mot, sexo_mot) VALUES
(1, 'João Silva', 'Rua dos Motoristas, 100', '1199124567', 'AB123456', 'Masculino'),
(2, 'Maria Oliveira', 'Av. das Estradas, 50', '2199134567', 'CD789012', 'Feminino'),
(3, 'Pedro Santos', 'Rua Caminhoneiro, 200', '3199234567', 'EF345678', 'Masculino'),
(4, 'Ana Costa', 'Travessa Rodoviária, 300', '4199234567', 'GH901234', 'Feminino'),
(5, 'Lucas Lima', 'Rua Rodovia, 400', '5199124567', 'IJ567890', 'Masculino'),
(6, 'Carla Mendes', 'Avenida Central, 500', '6199234567', 'KL234567', 'Feminino'),
(7, 'Roberto Nunes', 'Rua Oeste, 600', '7199234567', 'MN890123', 'Masculino'),
(8, 'Fernanda Duarte', 'Rua Sul, 700', '8191234567', 'OP456789', 'Feminino'),
(9, 'Carlos Teixeira', 'Rua Leste, 800', '9191234567', 'QR012345', 'Masculino'),
(10, 'Paula Rocha', 'Av. Norte, 900', '10199134567', 'ST678901', 'Feminino');

-- Criando a tabela frete
CREATE TABLE frete (
    id_frete INTEGER,
    dia_frete CHAR(2),
    mes_frete CHAR(2),
    ano_frete CHAR(4),
    valor_frete INTEGER,
    id_cam CHAR(7),
    id_mot INTEGER,
    id_cliente INTEGER,
    PRIMARY KEY (id_frete),
    FOREIGN KEY (id_cam) REFERENCES caminhao(id_cam),
    FOREIGN KEY (id_mot) REFERENCES motorista(id_mot),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Inserindo dados na tabela frete
INSERT INTO frete (id_frete, dia_frete, mes_frete, ano_frete, valor_frete, id_cam, id_mot, id_cliente) VALUES
(1, '01', '01', '2023', 5000, 'CAM001', 1, 1),
(2, '02', '02', '2023', 4500, 'CAM002', 2, 2),
(3, '03', '03', '2023', 5200, 'CAM003', 3, 3),
(4, '04', '04', '2023', 4800, 'CAM004', 4, 4),
(5, '05', '05', '2023', 5300, 'CAM005', 5, 5),
(6, '06', '06', '2023', 4700, 'CAM006', 6, 6),
(7, '07', '07', '2023', 4900, 'CAM007', 7, 7),
(8, '08', '08', '2023', 5500, 'CAM008', 8, 8),
(9, '09', '09', '2023', 5600, 'CAM009', 9, 9),
(10, '10', '10', '2023', 6000, 'CAM010', 10, 10);


-- Criando a tabela pagamento
CREATE TABLE pagamento (
    id_pgto INTEGER NOT NULL,
    frete_pgto INTEGER, 
    valor_pgto DECIMAL(5,2),
    parcela_pgto CHAR(20),
    forma_pgto VARCHAR(20),
    PRIMARY KEY (id_pgto),
    FOREIGN KEY (frete_pgto) REFERENCES frete(id_frete)
);

-- Inserindo dados na tabela pagamento
INSERT INTO pagamento (id_pgto, frete_pgto, valor_pgto, parcela_pgto, forma_pgto) VALUES
(1, 1, 500.00, '1/1', 'À vista'),
(2, 2, 450.00, '1/1', 'À vista'),
(3, 3, 520.00, '2/2', 'Cartão'),
(4, 4, 480.00, '2/2', 'Cartão'),
(5, 5, 530.00, '3/3', 'Boleto'),
(6, 6, 470.00, '3/3', 'Boleto'),
(7, 7, 550.00, '4/4', 'Transferência'),
(8, 8, 490.00, '4/4', 'Transferência'),
(9, 9, 540.00, '5/5', 'Dinheiro'),
(10, 10, 600.00, '5/5', 'Dinheiro');


-- Criando a tabela despesas
CREATE TABLE despesas (
    id_despesa INTEGER,
    descricao_despesa VARCHAR(100),
    valor_despesa DECIMAL(10,2),
    data_despesa DATE,
    tipo_despesa VARCHAR(30),
    PRIMARY KEY (id_despesa)
);

-- Inserindo dados na tabela despesas
INSERT INTO despesas (id_despesa, descricao_despesa, valor_despesa, data_despesa, tipo_despesa) VALUES
(1, 'Manutenção do caminhão', 500.00, '2023-01-10', 'Operacional'),
(2, 'Combustível', 1500.00, '2023-02-15', 'Operacional'),
(3, 'Pedágio', 200.00, '2023-03-20', 'Operacional'),
(4, 'Seguro', 300.00, '2023-04-25', 'Administrativa'),
(5, 'Aluguel de armazém', 1200.00, '2023-05-30', 'Administrativa'),
(6, 'Despesas com funcionários', 5000.00, '2023-06-05', 'Salários'),
(7, 'Taxas de transporte', 800.00, '2023-07-10', 'Operacional'),
(8, 'Consultoria contábil', 1000.00, '2023-08-15', 'Administrativa'),
(9, 'Equipamento de segurança', 600.00, '2023-09-20', 'Operacional'),
(10, 'Marketing', 700.00, '2023-10-25', 'Administrativa');

CREATE OR REPLACE PROCEDURE processar_pagamento (
    p_id_frete IN INTEGER,
    p_valor_pgto IN NUMERIC,        -- Usando NUMERIC no lugar de DECIMAL para PostgreSQL
    p_parcela_pgto IN VARCHAR,      -- Usando VARCHAR para texto
    p_forma_pgto IN VARCHAR         -- Usando VARCHAR para texto
)
LANGUAGE plpgsql  -- Definindo a linguagem PL/pgSQL, específica do PostgreSQL
AS
$$
BEGIN
    -- Inserindo o pagamento na tabela pagamento
    INSERT INTO pagamento (frete_pgto, valor_pgto, parcela_pgto, forma_pgto)
    VALUES (p_id_frete, p_valor_pgto, p_parcela_pgto, p_forma_pgto);
    
    -- Atualizando a tabela frete, marcando como pago (supondo que 'status_pgto' exista)
    UPDATE frete
    SET valor_pago = p_valor_pgto, status_pgto = 'Pago'
    WHERE id_frete = p_id_frete;
    
    -- Commit da transação (garantir que tudo foi processado)
    COMMIT;
    
EXCEPTION
    WHEN OTHERS THEN
        -- Tratamento de erro em caso de falha
        ROLLBACK;
        RAISE;
END;
$$;


CREATE OR REPLACE FUNCTION atualizar_status_frete()
RETURNS TRIGGER AS
$$
BEGIN
    -- Atualiza o status do frete para 'Pago' após o pagamento ser registrado
    UPDATE frete
    SET status_pgto = 'Pago', valor_pago = NEW.valor_pgto
    WHERE id_frete = NEW.frete_pgto;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

-- JOIN entre frete, motorista e caminhao
SELECT 
    f.id_frete, f.valor_frete, f.dia_frete, f.mes_frete, f.ano_frete, 
    m.nome_mot, m.cnh_mot, m.sexo_mot,
    c.marca_cam, c.ano_cam, c.carga_cam
FROM 
    frete f
JOIN 
    motorista m ON f.id_mot = m.id_mot
JOIN 
    caminhao c ON f.id_cam = c.id_cam;
	-- SELECT para listar clientes com fretes superiores a 5000
SELECT 
    cl.id_cliente, cl.nome_cliente, cl.endereco_cliente, f.valor_frete
FROM 
    cliente cl
JOIN 
    frete f ON cl.id_cliente = f.id_cliente
WHERE 
    f.valor_frete > 5000;
-- SELECT para listar despesas operacionais
SELECT 
    id_despesa, descricao_despesa, valor_despesa, data_despesa
FROM 
    despesas
WHERE 
    tipo_despesa = 'Operacional';

