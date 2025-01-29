-- create database oficina;
-- use oficina;
-- drop database oficina;
-- show tables;
-- criar tabela cliente
create table cliente(
idCliente int auto_increment primary key,
Nome varchar(20),
Sobrenome varchar(50),
TipoPessoa enum('CNPJ', 'CPF') default 'CPF',
Telefone char(11) not null,
Email varchar(50),
RazaoSocial varchar(255),
CPF char(11),
CNPJ char(15),
Estado varchar(50),
Cidade varchar(50),
Bairro varchar(50),
Rua varchar(50),
numCasa char(7),
constraint unique_cpf_cliente unique (CPF),
constraint unique_cnpj_cliente unique (CNPJ)
);
alter table cliente auto_increment=1;

-- criar tabela veiculo
create table veiculo(
idVeiculo int auto_increment primary key,
idClienteV int not null,
Cor varchar(25),
Modelo varchar(45) not null,
Placa varchar(10),
AnoFabricacao date,
constraint fk_veiculo_cliente foreign key (idClienteV) references cliente(idCliente)
);

-- criar tabela fornecedor
create table fornecedor(
idFornecedor int auto_increment primary key,
RazaoSocial varchar(255) not null,
Telefone varchar(11) not null,
Email varchar(25),
CNPJ varchar(15) not null,
Estado char(2),
Cidade varchar(25),
Bairro varchar(25),
Rua varchar(25),
constraint unique_cnpj_fornecedor unique(CNPJ)
);


-- criar tabela peça
create table peca(
idPeca int auto_increment primary key,
NomePeca varchar(20) not null,
Descricao varchar(255),
ValorUnitario float not null
);


-- criar tabela mao de obra
create table maoObra(
idMao_Obra int auto_increment primary key,
ValorServico float not null,
Descricao varchar(255)
);

-- criar tabela orçamento
create table orcamento(
idOrcamento int auto_increment primary key,
StatusOrcamento enum('Pago', 'Aguardando Pagamento') default 'Aguardando Pagamento',
DataEmissao date not null,
ValorTotal float,
constraint fk_orcamento_veiculo foreign key (idOrcamento) references veiculo(idVeiculo)
);
 
-- criar tabela mecanicos responsaveis
create table mecanicosResponsaveis(
idMecanico int auto_increment primary key,
MecanicoResponsavel varchar(50),
Especialidade varchar(50)
);


-- criar tabela mecanico
create table mecanico(
idMecanico int auto_increment primary key,
idMecanicoR int not null,
NomeM varchar(20) not null,
SobrenomeM varchar(20) not null,
Especialidade varchar(20),
DataNascimento date,
Telefone varchar(11),
Estado varchar(50),
Cidade varchar(50),
Bairro varchar(50),
Rua varchar(50),
numCasa char(7),
constraint fk_mecanico_mresponsaveis foreign key(idMecanicoR) references mecanicosResponsaveis(idMecanico)
);



-- criar tabela serviço
create table servicos(
idS_Orcamento int,
idS_MaoObra int,
TipoServico enum('Revisão Periódica', 'Manutenção') default 'Manutenção',
constraint primary key(idS_Orcamento,idS_MaoObra),
constraint fk_servico_orcamento foreign key (idS_Orcamento) references orcamento(idOrcamento),
constraint fk_servico_maoObra foreign key (idS_MaoObra) references maoObra(idMao_Obra)
);


-- criar tabela peçaFornecedor
create table pecaFornecedor(
idPF_Fornecedor int,
idPF_Peca int,
Quantidade int not null,
constraint primary key(idPF_Fornecedor,idPF_Peca),
constraint fk_pf_fornecedor foreign key (idPF_Fornecedor) references fornecedor(idFornecedor),
constraint fk_pf_peca foreign key (idPF_Peca) references peca(idPeca)
);


-- criar tabela orçamentoPeça
create table pecaOrcamento(
idPO_Peca int,
idPO_Orcamento int,
Quantidade int, 
ValorTotal float,
constraint primary key(idPO_Peca,idPO_Orcamento),
constraint fk_po_peca foreign key (idPO_Peca) references peca(idPeca),
constraint fk_po_orcamento foreign key (idPO_Orcamento) references orcamento(idOrcamento)
);

-- criar tabela ordem de serviço
create table ordemServico(
idOrdemServico int auto_increment primary key,
idOS_Veiculo int,
idOS_Orcamento int,
DataEntrada date not null,
DataEntrega date,
ValorOS float,
StatusOrdemS varchar(255),
Descricao enum('Finalizado', 'Em Reparo', 'Cancelado', 'Aguardando Confirmação') default 'Aguardando Confirmação',
constraint unique_idos_ordemservico unique (idOrdemServico),
constraint fk_os_veiculo foreign key (idOS_Veiculo) references veiculo(idVeiculo),
constraint fk_os_orcamento foreign key (idOS_Orcamento) references orcamento(idOrcamento)
);


