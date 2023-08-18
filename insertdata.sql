-- Inserindo dados na tabela Clientes
insert into Clientes (Pnome, SobreNome, DataNascimento, Sexo, Endereço, Telefone)
values
    ('João', 'Silva', '1990-05-15', 'M', 'Rua A, 123', 1234567890),
    ('Maria', 'Santos', '1985-09-20', 'F', 'Avenida B, 456', 9876543210),
    ('Pedro', 'Oliveira', '1998-02-10', 'M', 'Rua C, 789', 1112223333),
    ('Ana', 'Ferreira', '1995-12-01', 'F', 'Rua D, 987', 5556667777),
    ('Carlos', 'Rodrigues', '1982-07-28', 'M', 'Avenida E, 654', 9998887777);

-- Inserindo dados na tabela Atendente
insert into Atendente (Nometendente, Sexo_Atendente, Cargo_atendente)
values
    ('Fernanda', 'F', 'Atendente de Vendas'),
    ('Lucas', 'M', 'Atendente de Suporte');

insert into Veiculos (Cliente_idCliente, Placa_do_veiculo, Tipo_do_veiculo, ProblemaApresentado)
values
    (1, 'ABC1234', 'Carro', 'Motor com problemas'),
    (2, 'DEF5678', 'Moto', 'Vazamento de óleo'),
    (3, 'GHI9012', 'Caminhão', 'Freios desgastados'),
    (4, 'JKL3456', 'Carro', 'Transmissão irregular'),
    (5, 'MNO7890', 'Outros', 'Luzes queimadas');

-- Inserindo dados na tabela Atendimento
insert into Atendimento (Atendente_idAtendente, Veiculos_idveiculo, Veiculo_Cliente_idCliente, Data_do_atendimento, Descrição_do_atendimento, StatusAtendimento)
values
    (1, 1, 1, '2023-08-10', 'Troca de óleo e filtro', 'Iniciando'),
    (2, 2, 2, '2023-08-12', 'Ajuste no carburador', 'Processando'),
    (1, 3, 3, '2023-08-15', 'Substituição de pastilhas de freio', 'Executando'),
    (2, 4, 4, '2023-08-16', 'Reparo na transmissão', 'Finalizado'),
    (1, 5, 5, '2023-08-18', 'Substituição de lâmpadas', 'Aguardando Atualização');

