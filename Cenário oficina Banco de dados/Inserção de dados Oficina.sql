insert into cliente(Nome, Sobrenome, TipoPessoa, Telefone, Email, RazaoSocial, CPF, CNPJ, Estado, Cidade, Bairro, Rua, numCasa) values
('Romilton','Sindeaux','CPF','88965421475','romilton@gmail.com',null,'03251145854',null,'CE','Barbalha','Centro','Rua da Liberdade','107'),
(Null,Null,'CNPJ','88964125487','americanas@gmail.com','Americanas',null,'032548754213568','CE','Quixada','Centro','Rua da palmeira','10237'),
(Null,Null,'CNPJ','88965842021','macavi@gmail.com','Macavi',null,'021548759865487','CE','Fortaleza','Centro','Rua da maravilha','15307'),
('Lenderson','Ferreira','CPF','88965475854','lenderson@gmail.com',null,'01235487521',null,'BA','Oxente','Centro','Rua da sanfona','10547'),
('Joao','Oliveira','CPF','88963547854','joao@gmail.com',null,'01245789875',null,'RJ','Rio de Janeiro','Centro','Rua da lagoa','1075464'),
(Null,Null,'CNPJ','88968754254','zenir@gmail.com','Zenir',null,'021457845215475','SP','Sao Paulo','Centro','Rua da tesoura','1065467');

insert into veiculo(idClienteV,Cor,Modelo,Placa,AnoFabricacao) values
(1,'Vermelho','BMW','MXS2014','2022-04-05'),
(2,'Verde','Fiat','NFH6544','2022-03-05'),
(3,'Prata','Fiat','FDS9857','2025-01-05'),
(1,'Dourado','Chevrolet','MDJ6541','2014-05-05'),
(4,'Vermelho','Volkswagen','APS3145','2003-09-05'),
(5,'Azul','BMW','APM6545','2005-10-05'),
(6,'Verde','Chevrolet','MCB2014','2024-11-05'),
(1,'Roxo','BMW','MTF3654','2014-12-05'),
(3,'Vermelho','Volkswagen ','NCG2014','2017-04-05');

insert into mecanicosResponsaveis(MecanicoResponsavel,Especialidade) values
('Ramom','Computador de bordo'),
('Reinald','carenagem'),
('Gastor','adesivação');

insert into mecanico(idMecanicoR,NomeM,SobrenomeM,Especialidade,DataNascimento,Telefone,Estado, Cidade, Bairro, Rua, numCasa) values
(2,'Marcos','Felix','Funilaria','1988-04-03','88965425452','PE','Alegre','centro','marcondes','87654'),
(1,'Vitor','Cardoso','Acabamentos','1995-08-03','88965415247','Ce','CAmocim','centro','Cascavel','2562'),
(3,'Gerson','Silva','Pintura','1993-03-03','85965475821','AL','Alegre','Ponta grossa','jorel','54564'),
(2,'Anderson','Oliveira','Mecanica','1985-01-03','86254547544','RJ','Jerere','tres poderes','rapina','026456'),
(3,'Amauri','Moreira','Borracharia','1983-12-03','89854723654','RE','Aracaju','centro','marmota','655612');

insert into fornecedor(RazaoSocial,Telefone,Email,CNPJ,Estado, Cidade, Bairro, Rua) values
('Gm peças','88965415485','gm@hotmail.com','201245875412548','PA','SAlvador','VAzantes','Jardins'),
('Guaxinim','85745213654','guaxinim@hotmail.com','201457896542147','Ce','Quixere','centro','Flecheiras'),
('HL peças','88547511245','hl@hotmail.com','201245365487896','RJ','Macabau','centro','Gardens');

insert into peca(NomePeca,Descricao,ValorUnitario) values
('Motor','Peça para motor de carro Hilux',3500.00),
('Filtro de ar','Peça usada',500.00),
('Disco de freio','Peça de BMW',250.00),
('Eixo','Peça dianteira',360.00),
('Cabeçote','Peça para motor',100.00),
('Pistões','Peça usada',1000.00),
('Bateria','Peça para fiat',680.00),
('Alternador',null,1000.00),
('Pneus',null,5000.00),
('Bobina',null,1300.00);

insert into Orcamento(StatusOrcamento,DataEmissao,ValorTotal) values
('Pago','2021-05-02',null),
('Aguardando Pagamento','2021-05-12',null),
(null,'2021-05-12',null),
('Pago','2021-05-14',null),
(null,'2021-05-31',null),
('Aguardando Pagamento','2021-05-13',null),
('Pago','2021-05-22',null);

insert into OrdemServico (idOS_Veiculo,idOS_Orcamento,DataEntrada,DataEntrega,ValorOS,StatusOrdemS,Descricao) values
(1,1,'2021-02-13',null,2500.00,null,'Finalizado'),
(2,2,'2021-02-22',null,1000.00,null,'Cancelado'),
(3,3,'2021-02-14',null,150.00,null,'Em Reparo'),
(4,4,'2021-02-22',null,350.00,null,'Finalizado'),
(5,5,'2021-02-04',null,5500.00,null,null),
(6,6,'2021-02-22',null,2000.00,null,'Finalizado'),
(7,5,'2021-02-15',null,25000.00,null,'Finalizado'),
(8,3,'2021-02-04',null,13000.00,null,'Finalizado'),
(9,1,'2021-02-01',null,22000.00,null,'Finalizado');

insert into pecaOrcamento(idPO_Peca,idPO_Orcamento,Quantidade,ValorTotal) values
(1,1,5,null),
(2,2,10,null),
(3,3,3,null),
(4,4,1,null),
(5,5,4,null),
(6,6,2,null),
(7,7,1,null),
(8,3,4,null),
(9,1,2,null),
(10,4,3,null);

insert into maoObra(ValorServico,Descricao) values
(100.00,'Troca de óleo'),
(500.00,'Revisao completa'),
(250.00,'Troca de peças'),
(150.00,'Troca de bateria'),
(120.00,'Troca de filtro de ar');

insert into servicos(idS_Orcamento,idS_MaoObra,TipoServico) values
(1,1,'REvisao Periódica'),
(2,2,'Manutenção'),
(3,3,'REvisao Periódica'),
(4,4,'REvisao Periódica'),
(5,5,'Manutenção'),
(6,3,'Manutenção'),
(7,4,'Manutenção'),
(3,2,null),
(1,3,'REvisao Periódica'),
(4,1,null);

insert into pecaFornecedor(idPF_Fornecedor,idPF_Peca,Quantidade) values
(1,1,45),
(2,2,100),
(3,3,16),
(1,4,95),
(2,5,46),
(3,6,28),
(1,7,33),
(2,8,47),
(1,9,105),
(1,10,33);