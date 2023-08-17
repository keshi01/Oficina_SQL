-- Desafio  da oficina vou escrever em portugues mesmo

create database Oficina;
use Oficina;
-- Criando a tabela de Clientes
create table Cliente(
	idCliente int auto_increment not null,
    Pnome varchar(15) not null,
    SobreNome varchar(30) not null,
    DataNascimento date not null,
    Sexo enum('M','F','O') default 'O',
    Endereço varchar(225),
    telefone int(11),
    
    
    
);

-- Criando a tabela de Atendimento
create table Atendimento(
	idAtendimento int auto_increment not null,
    Nometendente varchar(15) not null,
    idAtendente int unique not null,
    Descrição varchar(225) not null,
    StatusAtendimento enum('Iniciando','Processando','Executando','Finalizado') default 'Aguardando Atualização',
    
    
);
-- Criando a tabela do Veiculo
create table veiculo(
	idveiculo int auto_increment not null,
    Placa_do_veiculo int unique not null,
    Tipo_do_veiculo enum('Carro','Moto','Caminhão','Outros') default 'Outro',
    ProblemaApresentado varchar(225)



);
