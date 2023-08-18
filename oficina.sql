-- premissa: Cada atendimente tem vários atendimentos , e cada atendimento se aplica a um carro e cada carro pertence a um cliente


create database Oficina;
use Oficina;
-- Criando a tabela de Clientes
create table Clientes(
	idCliente int auto_increment primary key,
    Pnome varchar(15) not null,
    SobreNome varchar(30) not null,
    DataNascimento date not null,
    Sexo enum('M','F','O') default 'O',
    Endereço varchar(225),
    Telefone int(11)   
);
desc Clientes;

-- Criando a tabela de Atendimento
create table Atendente(
	idAtendente int auto_increment primary key,
    Nometendente varchar(20) not null,
    Sexo_Atendente enum('M','F','O') default 'O',
	Cargo_atendente character
    );
    
    
create table Veiculos(
	idveiculo int auto_increment primary key,
    Cliente_idCliente int,
    Placa_do_veiculo varchar(10) not null,
    Tipo_do_veiculo enum('Carro','Moto','Caminhão','Outros') default 'Outros',
    ProblemaApresentado varchar(225),
    constraint unique_Placa_do_veiculo unique (Placa_do_veiculo),
	constraint fk_Cliente_idCliente foreign key(Cliente_idCliente) references Clientes(idCliente)
    on update cascade
    on delete set null
);

-- Criando a tabela de Atendimento
create table Atendimento(
	idAtendimento int auto_increment primary key,
	Atendente_idAtendente int,
    Veiculos_idveiculo int,
    Veiculo_Cliente_idCliente int,
    Data_do_atendimento date,
    Descrição_do_atendimento varchar(225) not null,
    StatusAtendimento enum('Iniciando','Processando','Executando','Finalizado','Aguardando Atualização') default 'Aguardando Atualização',
    constraint fk_Atendente_idAtendente foreign key(Atendente_idAtendente) references Atendente(idAtendente),
    constraint fk_Veiculos_idveiculo foreign key(Veiculos_idveiculo) references Veiculos(idveiculo),
    constraint fk_Veiculo_Veiculo_Cliente_idCliente foreign key(Veiculo_Cliente_idCliente) references Veiculos(Cliente_idCliente)
);
