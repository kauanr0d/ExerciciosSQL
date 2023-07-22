create table cliente(
	idclient integer not null,
	nome varchar(50), -- nome do campo, tipo e determinar tamanho, indicar se pode ser um campo nulo
	cpf char(11),  
	rg varchar(15),   
	data_nascimento date, 
	genero char(1), 
	profissao varchar(30),
	nacionalidade varchar(30),
	numero varchar(10), 
	logradouro varchar(30),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,
	
	--restrição:id cliente como chave primária-- campo unico que nunca pode ser repetido
	--coloca a restricao insere o atributo e chama primary key("nome da coluna")
	constraint pk_cln_idcliente primary key(idclient)
);
-- para evitar a repetição de comandos, use ';'
--ver os dados por comando SQL:
--SELECT * FROM public."nomeDaTabela"
--ORDER BY "atributo selecionado" -- ou seja, exiba ordenado de acordo com um atributo especifico
 
insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(1,'Manoel','888283821','32323','2001-01-30','M','Estudante','Brasileira','Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(2,'Geraldo','12343299291','56565','1991-10-01','M','Engenheiro','Brasileira','Rua das Limas','200','Ap','Centro','Poro Uniao','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(3,'Carlos','8773233227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apartamento','Centro','Canoinhas','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','Sao Pedro','Porto Vitoria','PR');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(5,'Amanda','9992828484','9127','1989-04-03','F','Jornalista','Italiana','Av.Central','100',null,'Sao Pedro','General Carneiro','PR');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(6,'Ângelo','98238342','123123','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null,'Centro','Sao Paulo','SP');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(7,'Anderson',null,null,null,'M','Professor','Italiano','Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(8,'Camila','9998238432',null,'2001-10-10','F','Professora','Norte Americana','Rua Central','4333',null,'Centro','Uberlândia','MG');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(10,'Fabricio','2939342832','302312',null,'M','Estudante','Brasileira',null,null,null,null,'PU','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto Uniao','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(12,'Gilmar','888818181','888','2000-02-01','M','Estudante',null,'Rua das Laranjeiras','200',null,'Cidade Nova','Canoinhas','SC');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(13,'Diego','1010191919','11939',null,'M','Professor','Alemã','Rua Central','455','Casa','Cidade Nova','Sao Paulo','SP');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileira',null,null,null,null,'Uniao da Vitoria','PR');

insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values(15,'Jessica',null,null,null,'F','Estudante',null,null,null,null,null,'Uniao da Vitoria','PR');

--consultas muito simples:
--O * indica que vamos selecionar todas colunas e clientes FROM
-- PERGUNTA: CONSULTAR TODOS OS CLIENTES E COLUNAS?
SELECT * FROM cliente;
-- PERGUNTA: CONSULTAR APENAS OS NOMES DOS CLIENTES E DATA DE NASCIMENTO
select nome, data_nascimento from cliente;
-- PERGUNTA: CONSULTAR APENAS OS NOMES DOS CLIENTES E DATA DE NASCIMENTO, POREM, RENOMEANDO A COLUNA
-- r: use o "as"
-- as: renomeia a coluna
select nome as "Nome do cliente", data_nascimento as "Data de Nascimento" from cliente;
select cpf, rg from cliente;
--concatenar colunas, volta somente um coluna e com um nome apenas na coluna?
select 'CPF:' || cpf|| ' RG:' || rg as "CPF E RG:" from cliente;
--Selecionar apenas algumas tuplas?
select * from cliente limit 4;-- use o limit para limitar a quantidade de registros
--Selecionar registros com filtro de data de nascimento(pode ser qualquer coisa bocó)
--relembrando: os operadores relacionais são:(>, <, =>.<=,!=)
-- operadores lógicos que podem ajudar: or, not, and
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';
--outro filtro para pegar o nome do cliente com determinada inicial:
-- like:como, semelhante ao 'igual'
select nome from cliente where nome like '%c%';--nomes que possuem qualquer letra no inicio e final, mas no meio tem c
-- between função para estabelecer intervalos
select nome, data_nascimento from cliente where data_nascimento between '1989-01-01' and '1998-01-01';
--buscar clientes com campos nulos:
--verificador 'is', verifica se algo é vazio
select nome, rg from cliente where rg is null;--clientes que não informaram o RG, interessante para corrigir dados em eventos futuros;
-- consulta ordenada: seleciona coluna, seleciona tabela, ordena de acordo com oq tu quiser aí
select nome from cliente
order by nome ASC;
--Consultar nome e rg de clientes que cadastraram seu rg no sistema
select nome, rg from cliente where rg is not null;
-- caralho mt bom 
--LISTA 1 DE EXERCÍCIOS:
-- #1 O NOME, GÊNERO, E A PROFISSÃO DE TODOS OS CLIENTES, ORDENADO PELO NOME EM ORDEM DECRESCENTE
SELECT nome, genero, profissao from cliente order by nome DESC;
-- #2  OS CLIENTES QUE TENHAM A LETRA "R" NO NOME:
--resposta: procurar onde tem r, seja no meio, final ou inicio
--'%r' fim com r, '%r%' r em qualquer posicao
SELECT * FROM cliente WHERE nome like '%r%' --or nome like 'R%' or nome like '%r'--;
-- #3 Os clientes que o nome inicia com a letra "C"
select * FROM cliente WHERE nome like 'C%';
-- #4 Os clientes que o nome termina com a letra "A"
SELECT * FROM cliente where nome like '%a';
-- #5 Os clientes que moram no bairro "Centro" -- 
select *  from cliente where bairro = 'Centro' or bairro = 'centro' or bairro = 'Ctr' or bairro = 'Cto.';
-- #6 Os clientes que moram em complementos que iniciam com a letra "A"
select * from cliente where complemento like 'A%';
-- #7 Somente clientes do sexo feminino:
select * from cliente where genero  = 'F' or genero  = 'f';
-- #8  Os clientes que não informaram o CPF;
-- obs: toda vez que for preciso verificar se o campo é null, use o "is", nunca o null***
select * from cliente where cpf is null;
-- #9 O nome e a profissão dos clientes, ordenado em ordem crescete pelo nome da profissao
select nome ,profissao from cliente order by profissao ASC;
-- #10 Os clientes de nacionalidade brasileira:
select * from cliente where nacionalidade like 'Brasil%'
-- #11 Os clientes que informaram o número da residência
select * from cliente where numero is not null;
-- #12 Os clientes que moram em Santa Catarina
select * from cliente where uf = 'SC';
-- #13 Os clientes que nasceram entre 01/01/2001 e 01/01/2002
-- between: usar o operador Lógico and, poderia colocar um not antes do between pra negar tranquilamente
select * from cliente where data_nascimento between '2000-01-01' and  '2002-01-01';
-- #14 O nome do cliente e o logradouro, número, complemento, bairro, munícipio e UF concatenado de todos os clientes
select 'Nome: '||nome||'; Logradouro: '||logradouro||'; Número:'||numero||'; Complemento: '||complemento||'; Bairro: '||bairro||'; Municipio: '||municipio||'; UF: '||uf as "Endereço Cliente" from cliente; 

--#	COMANDO UPDATE E DELETE#--

select * from cliente;
--update <tabela> set <campo> = 'alteracao';
update cliente set nome = 'Manoel' where idclient = 1;
select * from cliente;
update cliente set nome = 'Adriano', genero = 'M', numero ='241' where idclient = 4;
select * from cliente order by idclient;
--
insert into cliente(idclient,nome) values(16,'Joao');
select * from cliente order by idclient;
--comando delete:
delete from cliente where idclient = 16;
select * from cliente order by idclient;
-- fim delete

--#LISTA 2 DE EXERCICIOS- COMANDOS UPDATE E DELETE#
-- #1 Insira os dados abaixo na tabela de clientes:
insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,municipio,uf)
values(16,'Maicon','12345679','1234','1965-10-10','F','Empresário','Florianópolis','PR');
insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values (17,'Getúlio',null,'4631',null,'F','Estudante','Brasileira','Rua Central','343','Apartamento','Centro','Curitiba','SC');
insert into cliente(idclient,nome,cpf,rg,data_nascimento,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values (18,'Sandra',null,null,null,'M','Professor','Italiana',null,'12','Bloco A',null,null,null);

--#2 Altere os dados do cliente Maicon
--a) O CPF para 45390569432
--b) O gênero para M
--c) A nacionalidade para Brasileira
--d) O UF para SC
update cliente set cpf = '45390569432', genero = 'M',nacionalidade = 'Brasileiro', uf = 'SC' where idclient = 16;
select * from cliente order by idclient ASC;
-- #3 Altere os dados do client Getúlio
--a) A data de nascimento para 01/04/1978
--b) O gênero para M
update cliente set data_nascimento = '1978-04-01', genero ='M' where idclient = 17;
select * from cliente order by idclient ASC;
-- #4 Altere os dados da cliente Sandra
--a) O gênero para F
--b) A profissão para Professora
--c) O número para 123
update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idclient = 18;
select * from cliente order by idclient ASC;
--#5 Apague o cliente Maicon e Sandra
delete from cliente where idclient = 16 or idclient = 18;
select * from cliente order by idclient ASC;

--#Criação de novas tabelas#
--Criar uma tabela de profissão

create table profissao(
	idprofissao integer not null,
	nome varchar(40) not null,
	
	--Toda tabela necessita de pelo menos uma chave primária
	--Então, é necessário aplicar uma restrição (Constraint) de chave primária
	constraint pk_prf_idprofissao primary key(idprofissao),
	constraint un_prf_nome unique(nome)
);

insert into profissao(idprofissao, nome) values (1,'Estudante');
insert into profissao(idprofissao, nome) values (2,'Engenheiro');
insert into profissao(idprofissao, nome) values (3,'Pedreiro');
insert into profissao(idprofissao, nome) values (4,'Jornalista');
insert into profissao(idprofissao, nome) values (5,'Professor');

select idprofissao,nome from profissao;

create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(40) not null,
	
	constraint pk_ncn_idnacionalidade primary key(idnacionalidade),
	constraint un_ncn_nome unique(nome)
);
insert into nacionalidade values(1,'Brasileira');
insert into nacionalidade values(2,'Italiana');
insert into nacionalidade values(3,'Norte-Americana');
insert into nacionalidade values(4,'Alemã');


select * from nacionalidade;

create table complemento(
	idcomplemento integer not null,
	nome varchar(40) not null,
	CONSTRAINT pk_cmplt_idcomplemento PRIMARY KEY (idcomplemento),
	CONSTRAINT un_cmplt_nome unique(nome)
);
insert into complemento values(1,'Casa');
insert into complemento values (2,'Apartamento');

create table bairro(
	idbairro integer not null,
	nome varchar(40) not null,
	CONSTRAINT pk_brr_idbairro PRIMARY KEY(idbairro),
	CONSTRAINT un_br_nome unique(nome)
);
insert into bairro values (1,'Cidade Nova');
insert into bairro values (2,'Centro');
insert into bairro values (3,'São Pedro');
insert into bairro values (4,'Santa Rosa');

UPDATE bairro SET nome = 'Nova Marabá' WHERE idbairro = 4;
SELECT 'NOME: '||nome|| 'BAIRRO: ' ||idbairro as "BAIRRO E ID" FROM bairro ORDER BY idbairro ASC;
UPDATE bairro SET nome = 'Santa Rosa' WHERE idbairro =4;
SELECT 'NOME: '||nome|| ' ID: ' ||idbairro as "BAIRRO E ID" FROM bairro ORDER BY idbairro ASC;

SELECT * FROM cliente order by idclient ASC;
-- relacionar as tabelas por meio de chaves estrangeiras
-- alterar tabelas:
--alterando coluna de uma tabela
-- alter table "nomedatabela" 'comando'(rename, alter etc..) column "nodacoluna" 'comando' alteracao
alter table cliente rename column profissao to idprofissao;
alter table cliente alter column idprofissao type integer;

-- estudante id = 1, 9, 10, 12, 15
-- engenheiro id = 2;
-- pedreiro id = 3
-- profesor id = 6, 7,8 ,13
-- jornalista id = 4,5
-- null id = 11, 14,

--removendo coluna
alter table cliente drop column idprofissao;
--adicionando restrição e estabelecendo uma chave estrangeira que vai relacionar as tabelas cliente e profissão
alter table cliente add constraint fk_cln_idprofissao FOREIGN KEY (idprofissao) references profissao;
--atualizando campos:
update cliente set idprofissao = 1 where idclient in (1,9,10,12,15,17);
update cliente set idprofissao = 2 where idclient = 2;
update cliente set idprofissao = 3 where idclient = 3;
update cliente set idprofissao = 4 where idclient in (6,7,8,13);
update cliente set idprofissao = 5 where idclient in (4,5);

SELECT nome,idprofissao FROM cliente order by idclient ASC;
select * FROM cliente order by idclient;
--nao deleta pq viola a chave estrangeira
delete from profissao where idprofissao = 1;

alter table cliente drop nacionalidade;
alter table client add idnacionalidade integer;
alter table client add constraint fk_cln_idnacionalidade foreign key(idnacionalidade) references nacionalidade;
-- add as nacionalides
select * from nacionalidade order by idnacionalidade;
update cliente set idnacionalidade = 1 where idclient in(1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idclient in(5,7);
update cliente set idnacionalidade = 3 where idclient = 8;
update cliente set idnacionalidade = 4 where idclient in(9,13);

-- atualizando os complementos
select cliente.idclient,cliente.idcomplemento from cliente order by cliente.idclient ASC;
-- apt:2,3,7,17   id = 2
-- casa:1,4,9,13    id =1
select * from complemento;
alter table cliente drop complemento;
--adicionando idcomplemento como chave estrangeira que referencia a tabela complemento
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento;

update cliente set idcomplemento = 1 where idclient in (1,4,9,13);
update cliente set idcomplemento = 2 where idclient in (2,3,7,17);

select idclient, bairro from cliente order by idclient asc;
 --(1,'Cidade Nova'); 1, 12, 13
 --(2,'Centro'); 2,3,6,8,9,17 
 --(3,'São Pedro'); 4, 5
 --(4,'Santa Rosa');7
 
alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key(idbairro) references bairro;

update cliente set idbairro = 1 where idclient in (1,12,13);
update cliente set idbairro = 2 where idclient in (2,3,6,8,9,17);
update cliente set idbairro = 3 where idclient in (4,5);
update cliente set idbairro = 4 where idclient =7;

select idclient, idbairro from cliente order by idclient asc;

select idclient, uf from cliente order by idclient asc;

-- criar a relaçao de uf com municipio

create table uf(
	iduf integer not null,
	nome varchar(40) not null,
	sigla char(2) not null,
	constraint pk_ufd_iduf primary key(iduf),
	constraint un_ufd_nome unique(nome),
	constraint un_ufd_sigla unique(sigla)
); 

insert into uf(iduf,nome,sigla) values(1,'Santa Catarina','SC');
insert into uf(iduf,nome,sigla) values(2,'Paraná','PR');
insert into uf(iduf,nome,sigla) values(3,'São Paulo','SP');
insert into uf(iduf,nome,sigla) values(4,'Minas Gerais','MG');
insert into uf(iduf,nome,sigla) values(5,'Rio Grande do Sul','RS');
insert into uf(iduf,nome,sigla) values(6,'Rio de Janeiro','RJ');

select * from uf;
-- criando a tabela de municipio
--lembrando que a relação é de que uma UF pode ter vários municípios, mas um município terá apenas uma UF
create table municipio(
	idmunicipio integer not null,
	nome varchar(40) not null,
	iduf integer not null,
	constraint pk_mncp_idmunicipio primary key(idmunicipio),
	constraint fk_mcnp_iduf foreign key (iduf) references uf,
	constraint  un_mncp_nome unique(nome)
);

insert into municipio (idmunicipio,nome,iduf) values(1,'Porto União',1);
insert into municipio (idmunicipio,nome,iduf) values(2,'Canoinhas',1);
insert into municipio (idmunicipio,nome,iduf) values(3,'Porto Vitória',2);
insert into municipio (idmunicipio,nome,iduf) values(4,'General Carneiro',2);
insert into municipio (idmunicipio,nome,iduf) values(5,'São Paulo',3);
insert into municipio (idmunicipio,nome,iduf) values(6,'Rio de Janeiro',6);
insert into municipio (idmunicipio,nome,iduf) values(7,'Uberlândia',4);
insert into municipio (idmunicipio,nome,iduf) values(8,'Porto Alegre',5);
insert into municipio (idmunicipio,nome,iduf) values(9,'União da Vitória',2);

alter table cliente drop municipio;

alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cln_idmunicipio foreign key(idmunicipio) references municipio;

-- atualizando os municipios dos clientes 
update cliente set idmunicipio = 1 where idclient in (1,2,10,11);
update cliente set idmunicipio = 2 where idclient in (3,12);
update cliente set idmunicipio = 3 where idclient = 4;
update cliente set idmunicipio = 4 where idclient in (5);
update cliente set idmunicipio = 5 where idclient in (6,13);
update cliente set idmunicipio = 6 where idclient in (7);
update cliente set idmunicipio = 7 where idclient in (8);
update cliente set idmunicipio = 8 where idclient in (9);
update cliente set idmunicipio = 9 where idclient in (14,15);


create table fornecedor(
	idfornecedor integer not null,
	nome varchar(40) not null,
	constraint pk_frnd_idfornecedor primary key(idfornecedor),
	constraint un_frnd_nome unique(nome)
);
create table vendedor(
	idvendedor integer not null,
	nome varchar(40) not null,
	constraint pk_vddr_idvendedor primary key(idvendedor),
	constraint un_vddr_nome unique(nome)
); 

create table transportadora(
	idtransportadora integer not null,
	idmunicipio integer not null,
	nome varchar(40) not null,
	logradouro varchar(40),
	numero varchar(10),
	constraint pk_trnsp_idtransportadora primary key(idtransportadora),
	constraint fk_trnsp_idmunicipio foreign key (idmunicipio) references municipio,
	constraint un_trnsp_nome unique(nome)
); 
create table produto(
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(40) not null,
	valor numeric(10,2) not null,
	constraint pk_prdt_idproduto primary key(idproduto),
	constraint fk_prdt_idfornecedor foreign key (idfornecedor) references fornecedor
);   
 --inserindo vendedores
insert into vendedor(idvendedor,nome) values(1,'André');
insert into vendedor(idvendedor,nome) values(2,'Alisson');
insert into vendedor(idvendedor,nome) values(3,'José');
insert into vendedor(idvendedor,nome) values(4,'Ailton');
insert into vendedor(idvendedor,nome) values(5,'Maria');
insert into vendedor(idvendedor,nome) values(6,'Suelem');
insert into vendedor(idvendedor,nome) values(7,'Aline');
insert into vendedor(idvendedor,nome) values(8,'Silvana');

--inserindo fornecedores 
insert into fornecedor(idfornecedor,nome) values(1,'Cap.Computadores');
insert into fornecedor(idfornecedor,nome) values(2,'AA. Computadores');
insert into fornecedor(idfornecedor,nome) values(3,'BB. Máquinas');
--inserindo transportadoras:
insert into transportadora(idtransportadora,idmunicipio,nome,logradouro,numero)
values(1,1,'Bs. Transportes','Rua das Limas',01);
insert into transportadora(idtransportadora,idmunicipio,nome)
values(2,3,'União Transportes');
-- inserindo produtos:
insert into produto(idproduto,idfornecedor,nome,valor)
values(1,1,'Microcomputador',800);

insert into produto(idproduto,idfornecedor,nome,valor)
values(2,1,'Monitor',500);

insert into produto(idproduto,idfornecedor,nome,valor)
values(3,2,'Placa Mãe',200);

insert into produto(idproduto,idfornecedor,nome,valor)
values(4,2,'HD',150);

insert into produto(idproduto,idfornecedor,nome,valor)
values(5,2,'Placa de vídeo',200);

insert into produto(idproduto,idfornecedor,nome,valor)
values(6,3,'Memória Ram',100);

insert into produto(idproduto,idfornecedor,nome,valor)
values(7,1,'Gabinete',25);
 
select * from produto order by idproduto asc;
  
create table pedido(
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	datapedido date not null,
	valor numeric(10,2) not null,
	constraint pk_pdd_idpedido primary key(idpedido),
	constraint fk_pdd_idcliente foreign key(idcliente) references cliente,
	constraint fk_pdd_idtransportadora foreign key(idtransportadora) references transportadora,
	constraint fk_pdd_idvendedor foreign key(idvendedor) references vendedor
);
select idclient, nome FROM  cliente order by idclient asc;
select idvendedor, nome FROM  vendedor order by idvendedor asc;
select idtransportadora, nome FROM transportadora order by idtransportadora asc;
select * FROM produto order by idproduto asc;
 
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(1,'2008-04-01',1300,1,1,1);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(2,'2008-04-01',500,1,1,1);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(3,'2008-04-02',300,11,2,5);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(4,'2008-04-05',1000,8,1,7);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(5,'2008-04-06',200,9,2,6);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(6,'2008-04-06',1985,10,1,6);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(7,'2008-04-06',800,3,1,7);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(8,'2008-04-06',175,3,null,7);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(9,'2008-04-07',1300,12,null,8);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(10,'2008-04-10',200,6,1,8);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(11,'2008-04-15',300,15,2,1);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(12,'2008-04-20',500,15,2,5);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(13,'2008-04-20',350,9,2,7);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(14,'2008-04-23',300,2,1,5);
insert into pedido(idpedido,datapedido,valor,idcliente,idtransportadora,idvendedor) values(15,'2008-04-25',200,11,null,5);
  
select * from pedido order by idpedido;

create table pedidoproduto(
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unidade numeric(10,2) not null,
	constraint pk_pdprdt_idpedidoproduto primary key(idpedido,idproduto),
	constraint fk_pdprdt_idpedido foreign key(idpedido) references pedido(idpedido),
	constraint fk_pdprdt_idproduto foreign key(idproduto) references produto(idproduto)
);  
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(1,1,1,800);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(1,2,1,500);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(2,2,1,500);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(3,4,2,150);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(4,1,1,800);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(4,3,1,200);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(5,3,1,200);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(5,3,1,200);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(6,1,2,800);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(6,7,1,35);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(9,1,1,800);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(9,2,1,500);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(10,5,1,200);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(11,5,1,200);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(11,6,1,100);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(12,2,1,500);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(13,3,1,200);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(13,4,1,150);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(14,6,3,100);
insert into pedidoproduto(idpedido,idproduto,quantidade,valor_unidade) values(15,3,1,200);
 
 
select * from pedidoproduto order by idpedido;
 
--#LISTA 3 
--1:Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedor order by nome asc; 
--2:Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
select * from produto where valor > 200.0 order by valor asc;
--3:O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select produto.nome, produto.valor ,produto.valor * 1.1 AS valor_reajustado from produto order by nome;
--4. Os municípios do Rio Grande do Sul.
select * from uf order by iduf; 
select * from municipio where iduf = 5 order by idmunicipio;
--5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select * from pedido where datapedido between '2008-04-10' and '2008-04-25' order by valor;
--6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select * from pedido where valor between 1000 and 1500;
select * from pedido where valor>=1000 and valor<=1500;
--7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select * from pedido where valor not between 100 and 500;
 --8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente
 select * from pedido where idvendedor = 1 order by valor desc;
 -- 9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
 select * from pedido where idcliente = 1 order by valor asc;
 -- 1O. s pedidos da cliente Jéssica que foram feitos pelo vendedor André.
 select * from pedido where idcliente = 15 and idvendedor = 1;
-- 11. Os pedidos que foram transportados pela transportadora União Transportes
select * from pedido where idtransportadora = 2;
--12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select * from pedido where idvendedor = 5 or idvendedor = 7; 
--13. Os clientes que moram em União da Vitória ou Porto União.
select * from municipio;
select * from cliente where idmunicipio in (1,9);
-- 14. Os clientes que não moram em União da Vitória e nem em Porto União
select * from cliente where not idmunicipio in(1,9);
-- 15. Os clientes que não informaram o logradouro.
select * from cliente where logradouro is null;
-- 16. Os clientes que moram em avenidas
select * from cliente where logradouro like 'Av%';
-- 17. Os vendedores que o nome começa com a letra S.
select * from vendedor where nome like 'S%';
-- 18. Os vendedores que o nome termina com a letra A.
select * from vendedor where nome like '%a';
-- 19. Os vendedores que o nome não começa com a letra A.
select * from vendedor where nome not like 'A%';
-- 20. Os municípios que começam com a letra P e são de Santa Catarina.
select * from municipio where nome like 'P%' and iduf = 1;
-- 21. As transportadoras que informaram o endereço.  
select * from transportadora where logradouro  is not null and numero  is not null;
-- 22. Os itens do pedido 01.
select * from pedidoproduto where idpedido = 1;
-- 23. pedidos com id 5 ou 10
select * from pedidoproduto where idpedido = 5 or idpedido = 10;

--funções agregadas:
-- são funções retornam apenas um único valor
-- COUNT: Retorna o número de linhas em um conjunto de resultados.
-- SUM: Calcula a soma dos valores de uma coluna numérica em um conjunto de resultados. 
-- AVG = Média
-- Min = valor minimo
-- Max = valor maximo
-- GROUP_CONCAT = Concatena os valores de uma coluna em uma única string, agrupados por uma coluna de agrupamento.
-- HAVING: Utilizada em conjunto com a cláusula GROUP BY, permite filtrar o resultado com base em uma condição aplicada a uma função agregada.
select round(avg(valor),2) as média from pedido;

SELECT count(*) from municipio;
select count(logradouro) from transportadora;
select count(idtransportadora) from transportadora;
select count (idmunicipio) from municipio where iduf = 2;
  
 select max(valor) from pedido;
 select min(valor), max(valor) from pedido;
  
 select sum(valor) from pedido;
    
  -- soma de pedidos sem aparecer ids de clientes repetidos
 select idcliente, sum(valor) as VALORTOTAL from pedido group by idcliente;
 select idcliente, sum(valor) as VALORTOTAL from pedido group by  idcliente having sum(valor)>500;
 
SELECT pedido.idcliente, cliente.nome, SUM(valor) AS VALORTOTAL
FROM cliente
JOIN pedido ON cliente.idclient = pedido.idcliente
GROUP BY pedido.idcliente, cliente.nome;

--lista de exercicio 4: funções agregadas
--1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
select idvendedor, round(AVG(valor),2) as MédiaValorVendedor from pedido group by idvendedor having sum(valor)>200;
--2. Os vendedores que venderam mais que R$ 1500,00.
select idvendedor, round(sum(valor),2) from pedido group by idvendedor having sum(valor)>1500;
-- 3. O somatório das vendas de cada vendedor.
select idvendedor, round(sum(valor),2) from pedido group by idvendedor;
-- 4. A quantidade de municípios.
select count (*) from municipio; 
-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
select count (*) from municipio where iduf = 1 or iduf =2;
-- 6. A quantidade de municípios por estado.
select iduf, count(*) from municipio group by iduf;
-- 7. A quantidade de clientes que informaram o logradouro.
select count(*) from cliente where logradouro is not null;
select logradouro from cliente;
-- 8. A quantidade de clientes por município.
select idmunicipio, count(idclient) as clientesPorMunicipio from cliente group by idmunicipio order by idmunicipio;
select nome, idmunicipio from cliente order by idclient asc;
-- 9. A quantidade de fornecedores.
select count(*) from fornecedor;
select * from fornecedor;
-- 10. A quantidade de produtos por fornecedor.
select idfornecedor, count(idproduto) as produtosPorFornecedor from produto group by idfornecedor;
select * from produto;
-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.
select * from fornecedor order by idfornecedor;
select round(avg(valor),2) from produto where idfornecedor = 1;
-- 12. O somatório dos preços de todos os produtos.
select round(sum(valor),2) from produto;
--13. O nome do produto e o preço somente do produto mais caro.
select nome, valor from produto order by valor desc limit  1;
select * from produto;
-- 14. O nome do produto e o preço somente do produto mais barato.
select nome, valor from produto order by valor asc limit 1;
-- 15. A média de preço de todos os produtos.
select round(avg(valor),2) from pedido;
-- 16. A quantidade de transportadoras.
select count(*) from transportadora;
-- 17. A média do valor de todos os pedidos.
select * from pedido;
select round(avg(valor),2) from pedido; 
-- 18. O somatório do valor do pedido agrupado por clientes.
select idcliente, sum(valor) from pedido group by idcliente;
-- 19. O somatório do valor do pedido agrupado por vendedor.
select * from pedido;  
select idvendedor, sum(valor) from pedido group by idvendedor order by idvendedor; 
-- 20. O somatório do valor do pedido agrupado por transportadora.
select idtransportadora, sum(valor) from pedido group by idtransportadora order by idtransportadora;
-- 21. O somatório do valor do pedido agrupado pela data.
select datapedido, sum(valor) from pedido group by datapedido order by datapedido asc;
-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
select idcliente,idvendedor,idtransportadora,sum(valor) from pedido group by idcliente, idvendedor, idtransportadora;
  
SELECT vendedor.idvendedor, vendedor.nome, count(pedido.idpedido) AS TotalDePedidos
FROM pedido
JOIN vendedor ON vendedor.idvendedor = pedido.idvendedor
GROUP BY vendedor.idvendedor, vendedor.nome
order by idvendedor;

select  cliente.nome, vendedor.nome, count(pedido.idpedido) as totalpedidos from pedido
JOIN cliente ON cliente.idclient = pedido.idcliente
JOIN vendedor ON vendedor.idvendedor = pedido.idvendedor
group by vendedor.nome, cliente.nome
order by cliente.nome;
-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00
select sum(valor) from pedido where datapedido between '2008-04-01' and '2009-12-10';
-- 24. A média do valor do pedido do vendedor André.
select * from vendedor order by nome;

select vendedor.nome, round(avg(valor),2)
from pedido 
join vendedor ON pedido.idvendedor = vendedor.idvendedor 
where pedido.idvendedor = 1
group by vendedor.nome, vendedor.idvendedor; 

-- 25. A média do valor do pedido da cliente Jéssica.
select * from cliente;
select *from pedido where pedido.idcliente = 15;

select cliente.nome, round(avg(valor),2)
from pedido
join cliente ON pedido.idcliente = cliente.idclient
where pedido.idcliente = 15
group by cliente.nome;

--  26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
select * from transportadora;

select transportadora.nome, count(pedido.idpedido)
from pedido
join transportadora on transportadora.idtransportadora = pedido.idtransportadora
where transportadora.idtransportadora = 1
group by transportadora.nome;
 
-- 27. A quantidade de pedidos agrupados por vendedor.
select * from pedido;

select vendedor.idvendedor,vendedor.nome, count(pedido.idpedido)
from pedido
join vendedor on vendedor.idvendedor = pedido.idvendedor
group by vendedor.nome, vendedor.idvendedor
order by count(pedido.idpedido) desc; 

-- 28. A quantidade de pedidos agrupados por cliente.
select cliente.idclient,cliente.nome, count(pedido.idpedido)
from pedido
join cliente on cliente.idclient = pedido.idcliente
group by cliente.nome, cliente.idclient
order by count(pedido.idpedido) desc; 

-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
select count(idpedido) as Pedidos from pedido where datapedido between '2008-04-15' and '2008-04-25';

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
select cliente.nome as Cliente, vendedor.nome as Vendedor, pedido.idpedido
from pedido
join cliente on cliente.idclient = pedido.idcliente
join vendedor on vendedor.idvendedor = pedido.idvendedor
where pedido.valor>1000;
 
-- 31. A quantidade de microcomputadores vendida.
select * from produto;
 
select sum(pedidoproduto.quantidade) as qtMicroPC from pedidoproduto  where pedidoproduto.idproduto = 1;

-- 32. A quantidade de produtos vendida agrupado por produto.
select idproduto, sum(quantidade) from pedidoproduto group by idproduto order by idproduto desc;
-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
select idpedido, sum(valor_unidade)
from pedidoproduto
join produto on pedidoproduto.idproduto = produto.idproduto
group by pedidoproduto.idpedido
order by idpedido; 
-- 34. A quantidade de produtos agrupados por pedido.
select idpedido, sum(quantidade)
from pedidoproduto
group by pedidoproduto.idpedido
order by idpedido;
-- 35. O somatório do valor total de todos os produtos do pedido.
select sum(valor_unidade) from pedidoproduto ;
-- 36. A média dos produtos do pedido 6.
select round(avg(valor_unidade),2) as Médiadoproduto
from pedidoproduto
where idpedido = 6;
-- 37. O valor do maior produto do pedido.
select max(valor_unidade) from pedidoproduto;
-- 38. O valor do menor produto do pedido.
select min(valor_unidade) from pedidoproduto;
--39. O somatório da quantidade de produtos por pedido.
select * from pedidoproduto;
select idpedido, sum(quantidade) from pedidoproduto group by idpedido;
--40. O somatório da quantidade de todos os produtos do pedido.
select sum(valor_unidade) from pedidoproduto;

-- relacionamento com joins(junções)
--left outer join retorna todos 
select
	cln.nome, 
	prf.nome
from 
	cliente as cln 
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao;

--inner join obriga que exista relacionamento
select
	cln.nome, 
	prf.nome
from 
	cliente as cln 
inner join
	profissao as prf on cln.idprofissao = prf.idprofissao;
select
	cln.nome, 
	prf.nome
from 
	cliente as cln 
right outer join
	profissao as prf on cln.idprofissao = prf.idprofissao

-- 5 Lista Joins
-- 1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
select
	cln.nome as cliente,
	prf.nome as profissao,
	ncn.nome as nacionalidade,
	cln.numero as numero,
	cmpt.nome as complemento, 
	brr.nome as bairro,
	mcp.nome as municipio,
	uf.nome as estado,
	uf.sigla as sigla
from      
	cliente as cln
left outer join
	profissao as prf ON prf.idprofissao = cln.idprofissao
left outer join
	nacionalidade as ncn ON ncn.idnacionalidade = cln.idnacionalidade
left outer join
	complemento as cmpt ON cmpt.idcomplemento = cln.idcomplemento
left outer join
	bairro as brr ON brr.idbairro = cln.idbairro
left outer join
	municipio as mcp ON mcp.idmunicipio = cln.idmunicipio
left outer join 
	uf as uf ON mcp.iduf = uf.iduf
order by
	cln.nome; 
	 
-- 2. O nome do produto, o valor e o nome do fornecedor.
select *from produto;
select
	pdt.nome as NomeProduto,
	pdt.valor as ValorProduto,
	fnd.nome as NomeFornecedor
from 
	produto as pdt
left outer join
	fornecedor as fnd on fnd.idfornecedor = pdt.idfornecedor;
-- 3. O nome da transportadora e o município.
select * from pedidoproduto;
select 
	pedido.idpedido,
	trns.nome as Transportadora,
	mcp.nome as Municipio
from pedido 
left outer join
	transportadora as trns on trns.idtransportadora = pedido.idtransportadora
left outer join
	municipio as mcp on mcp.idmunicipio = trns.idmunicipio;
-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
select * from pedido;

select
	pdd.datapedido as Data_do_pedido,
	cln.nome as Cliente,
	pdd.valor as Valor,
	trns.nome as Transportadora,
	vdd.nome as Vendedor
from 
	pedido as pdd
left outer join
	cliente as cln on cln.idclient = pdd.idcliente
left outer join
	transportadora as trns on trns.idtransportadora = pdd.idtransportadora
left outer join
	vendedor as vdd on vdd.idvendedor = pdd.idvendedor;
-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
select  
	pdt.nome as produto,
	pdp.quantidade as quantidade,
	pdp.valor_unidade as valor_unitario
from 
	pedidoproduto as pdp
left outer join
	produto as pdt ON pdt.idproduto = pdp.idproduto;
 
-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select  
	cln.nome,
	pdd.datapedido
from
	cliente as cln
inner join
	pedido as pdd ON pdd.idcliente = cln.idclient
order by cln.nome;  


 
-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
select  
	cln.nome,
	pdd.datapedido
from
	cliente as cln
left outer join
	pedido as pdd ON pdd.idcliente = cln.idclient
order by cln.nome;
 -- ou 
 select  
	cln.nome,
	pdd.datapedido
from
	pedido as pdd
right outer join
	cliente as cln ON pdd.idcliente = cln.idclient
order by cln.nome;  
 
-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select  
	mcp.nome as municipio,
	count(cln.idclient)
from
	cliente as cln
right outer join 
	municipio as mcp on mcp.idmunicipio = cln.idmunicipio
group by
	mcp.nome;
-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
select * from pedido;
select
	fnd.nome as fornecedor ,
	count(pdt.idproduto) as Quantidade_de_produtos
from 
	produto as pdt
left outer join
	fornecedor as  fnd on fnd.idfornecedor = pdt.idfornecedor
group by 
	fnd.nome;
-- 10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select   
	cln.idclient,
	cln.nome,
	sum(pdd.valor)
 from 
 	pedido as pdd
left outer join
	cliente as cln on cln.idclient = pdd.idcliente
group by 
	cln.idclient,cln.nome;
-- 11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select 
	vdd.idvendedor,
	vdd.nome,
	sum(pdd.valor)
from
	pedido as pdd
left outer join
	vendedor as vdd on vdd.idvendedor = pdd.idvendedor
group by
	vdd.idvendedor,vdd.nome;
-- 12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).

select 
	trp.nome,
	sum(pdd.valor)
from 
	pedido as pdd
left outer join
	transportadora as trp on trp.idtransportadora = pdd.idtransportadora
group by
	trp.nome;

-- 13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select 
	cln.nome,
	count(pdd.idpedido)
from 
	pedido as pdd
left outer join
	cliente as cln on pdd.idcliente = cln.idclient
group by
	cln.nome;
-- 14.O nome do produto e a quantidade vendida (agrupado por produto).
select * from pedido;
select 
	pdd.nome,
	sum(pdp.quantidade)
from
	pedidoproduto as pdp
left outer join
	produto as pdd on pdd.idproduto = pdp.idproduto
group by
	pdd.nome; 
--15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select 
	pdd.datapedido, 
	sum(pdp.valor_unidade)
from 
	pedidoproduto as pdp
left outer join
	pedido as pdd on pdp.idpedido = pdd.idpedido
group by 
	pdd.datapedido 
	
-- 16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select 
	pdd.datapedido,
	sum(pdp.quantidade)
from 
	pedidoproduto as pdp
left outer join
	pedido as pdd on pdp.idpedido = pdd.idpedido
group by 
	pdd.datapedido 
 
--Comandos adicionais
	
select datapedido, extract(day from datapedido) as dia from pedido;
select datapedido, extract(month from datapedido) as mes from pedido;
select datapedido, extract(year from datapedido) as ano from pedido;

select nome, substring(nome from 1 for 5), substring(nome,2) from cliente;

select nome, upper(nome) from cliente;

select nome, coalesce(cpf,'Não informado') cpf from cliente;

select sigla from uf; 
select 
	case sigla
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
	else 'Outros'
	end as uf
	from uf; 
-- Lista 8: Comandos adicionais
-- 1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select 
	nome,
	case  
		when extract(month from data_nascimento) is null then 'Data não informada!'
	else extract(month from data_nascimento)::text
	end as data_nascimento
	from cliente;
-- 2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select 
	nome, 
	case extract(month from data_nascimento)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	else 'Data não informada!'
	end as mês_nascimento
	from cliente;
-- 3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
 select nome,
 	case
		when extract(year from data_nascimento) is null then 'Não fornecido!'
	else extract(year from data_nascimento)::text
	end as ano_nascimento
from cliente; 
 
-- 4. O caractere 5 até o caractere 10 de todos os municípios.
select nome as municipio, substring(nome from 5 for 10) as subString from municipio;
-- 5. O nome de todos os municípios em letras maiúsculas.
select upper(nome) from municipio;
-- 6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
select
	nome, 
	case genero
		when 'M' then 'Masculino' 
	else 'Feminino'
	end as genero
from  
	cliente;
-- 7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
select 
	nome,
	case 
		when valor>500 then 'Maior que 500'
	else 'Menor que 500'
	end as valor
from 
	produto;
-- Subconsulta
-- pedidos quem possuem valor maior que a média
select
	datapedido,
	valor
from pedido
where
	valor > (select avg(valor) from pedido);
--exemplo com count
select
	pdd.datapedido,
	pdd.valor,
	(select sum(quantidade) from pedidoproduto as pdp where pdp.idpedido = pdd.idpedido)
from 
	pedido as pdd;
   
select * from pedidoproduto;
-- exemplo com update
select * from pedido;
update 
	pedido set valor = valor * 1.05
	where valor>(select avg(valor) from pedido);

-- Lista de subconsultas
-- 1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
select
	nome,
	idmunicipio
from 
	cliente
where 
	idmunicipio = (select idmunicipio from cliente where idclient = 1)
and
	idclient != 1;
 
--
select
	cln.nome,
	mcp.nome
from
	cliente as cln
join 
	municipio as mcp on mcp.idmunicipio = cln.idmunicipio
where
	mcp.idmunicipio = (select idmunicipio from cliente where idclient = 1)
and
	idclient!=1;
-- 2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
select 
	pdd.datapedido,
	pdd.valor 
from
	pedido as pdd
where 
	pdd.valor <(select avg(pdd.valor) from pedido as pdd);
-- 3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
   
select 
	pdd.datapedido,
	pdd.valor,
	cln.nome ,
	vdd.nome,
	(select sum(quantidade) as totalpedido from pedidoproduto pdp where pdp.idpedido = pdd.idpedido) 
from   
	pedido as pdd
left outer join
	cliente as cln on cln.idclient = pdd.idcliente
left outer join
	vendedor as vdd on vdd.idvendedor = pdd.idvendedor
where
	(select sum(quantidade) as totalpedido from pedidoproduto pdp where pdp.idpedido = pdd.idpedido)>=2

--4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
select trp.nome, mcp.nome, mcp.idmunicipio from transportadora as trp left outer join municipio as mcp on mcp.idmunicipio = trp.idmunicipio;

select
	cln.nome 
from  
	cliente as cln  
where 
	idmunicipio = (select idmunicipio from transportadora where idmunicipio = 1);
-- 5. O  nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.
select
	cln.no me
from
	cliente as cln
where
	idmunicipio IN(select idmunicipio from transportadora where idmunicipio = 1 or idmunicipio = 3);
--6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total
update  
	pedido as pdd 
set
	valor = pdd.valor * 1.05
where
	(select sum(valor_unidade) from pedidoproduto pdp where pdp.idpedido = pdd.idpedido)> (select avg(valor_unidade) from pedidoproduto);

select * from pedido;
 
-- 7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.
-- verificando a tabela pedido
select * from pedido;

-- usando um left join, a consulta irá retornar apenas os que fizeram ao menos um pedido
select
	cliente.idclient as id,
	cliente.nome as nome,
	count(pdd.idpedido) as total_pedidos
from 
	pedido as pdd
left outer join
	cliente on cliente.idclient = pdd.idcliente
group by 
	cliente.nome, cliente.idclient
order by
	cliente.idclient;

-- usando uma subconsulta, consigo recuperar todos os clientes independente se realizaram um pedido ou não
select 
	cln.idclient as id_cliente,
	cln.nome as nome_cliente,
	(select count(pdd.idpedido) from pedido as pdd where pdd.idcliente = cln.idclient) as total_pedidos
from 
	cliente as cln
order by 
	cln.idclient;
-- 7: select 	
	cln.idclient,
	cln.nome,
	(select count(pdd.idpedido) from pedido as pdd where cln.idclient = pdd.idcliente) as total_de_pedidos
from
	cliente as cln
order by 
	cln.idclient;
-- alternativa:
-- selecionando id do cliente, o nome e quantidade de pedidos, considerando os clientes que fizeram ao menos um pedido
select
	cln.idclient,
	cln.nome,
	(select count(pdd.idpedido)from pedido as pdd where cln.idclient = pdd.idcliente) as total_de_pedidos
from
	cliente as cln
where
	(select count(pdd.idpedido) from pedido as pdd where cln.idclient = pdd.idcliente)>=1;


--8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.--

select
	cln.idclient,
	cln.nome,
	(select count(pdd.idpedido)from pedido as pdd where cln.idclient = pdd.idcliente) as total_de_pedidos
from
	cliente as cln
where
	(select count(pdd.idpedido) from pedido as pdd where cln.idclient = pdd.idcliente)>=1
group by
	cln.idclient, cln.nome
order by
 	1; 

-- Views
--é  como se fosse criado uma nova tabela
--ajuda retornar joins sem necessidade scriptar várias vezes uma msm consulta
create view cliente_profissao as
select
	cln.nome as cliente,
	prf.nome as profissao
from
	cliente cln
left outer join
	profissao prf on cln.idprofissao = prf.idprofissao;

drop view cliente_profissao;
select * from cliente_profissao;	

-- Lista de Views
--1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.
create view 
	listar_clientes
as
select
	cln.nome as nome_cliente, 
	prf.nome as profissao_cliente,
	ncn.nome as nacionalidade_cliente,
	cmpt.nome as complemento_cliente,
	mcp.nome as municipio_cliente,
	uf.nome as uf_cliente,
	brr.nome as bairro_cliente,
	cln.cpf as cpf_cliente,
	cln.rg as rg_cliente,
	cln.data_nascimento as cliente_data_de_nascimento,
	case cln.genero
		when 'M'
		then 'Masculino'
	else
		'Feminino'
	end as genero,
	cln.logradouro,
	cln.numero,
	cln.observacoes
from
	cliente cln
left outer join
	profissao as prf on prf.idprofissao = cln.idprofissao
left outer join
	municipio as mcp on mcp.idmunicipio = cln.idmunicipio 
left outer join 
	uf on uf.iduf = mcp.iduf
left outer join
	bairro as brr on brr.idbairro = cln.idbairro
left outer join
	complemento as cmpt on cmpt.idcomplemento = cln.idcomplemento 
left outer join
	nacionalidade as ncn on ncn.idnacionalidade = cln.idnacionalidade 
order by
	cln.nome ;

select * from listar_clientes;
--2. O nome do município e o nome e a sigla da unidade da federação.
create view 
	listar_municipios
as
	select
		mcp.nome as municipio,
		uf.sigla as UF
	from
		municipio mcp
	left outer join
		uf on uf.iduf = mcp.iduf
	order by
		mcp.nome;
select * from listar_municipios;
--3. O nome do produto, o valor e o nome do fornecedor dos produtos.
select * from produto p ;

create view
	listar_produtos
as
	select
		pdt.nome as produto,
		pdt.valor as valor_em_reais,
		fnc.nome as fornecedor
	from
		produto pdt
	left outer join
		fornecedor fnc on fnc.idfornecedor = pdt.idfornecedor
	order by
		pdt.nome;
select * from listar_produtos;

--4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
create view
	listar_transportadoras
as
	select
		trp.nome as transportadora,
		trp.logradouro as logradouro,
		trp.numero as numero,
		mcp.nome as municipio,
		uf.nome  as estado,
		uf.sigla as sigla 
	from
		transportadora trp
	left outer join
		municipio mcp on mcp.idmunicipio = trp.idmunicipio
	left outer join
		uf on uf.iduf = mcp.iduf
	order by 
		1; 
select * from listar_transportadoras ;
--5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
create view
	listar_pedidos
as
	select
		pdd.datapedido as data_pedido,
		pdd.valor as valor,
		trp.nome as transportadora,
		cln.nome as cliente,
		vdd.nome as vendedor
	from
		pedido pdd
	left outer join
		cliente cln on cln.idclient = pdd.idcliente
	left outer join
		transportadora trp on trp.idtransportadora = pdd.idtransportadora
	left outer join
		vendedor vdd on vdd.idvendedor = pdd.idvendedor
	order by
		1 desc;
select * from listar_pedidos ;
--6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
 create view	
 	listar_pedidoproduto
 as
 	select
 		pdt.nome as produto,
 		pdp.quantidade as quantidade,
 		pdp.valor_unidade as valor_unitario,
 		pdd.valor as valor_total
	from
		pedido pdd
	left outer join
		pedidoproduto pdp on pdp.idpedido = pdd.idpedido
	left outer join
		produto pdt on pdt.idproduto = pdp.idproduto
	order by
		pdd.idpedido;
select * from listar_pedidoproduto;
