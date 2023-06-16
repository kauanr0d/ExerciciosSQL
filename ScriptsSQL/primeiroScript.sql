create table cliente(
	idclient integer not null,
	nome varchar(50), not null, -- nome do campo, tipo e determinar tamanho, indicar se pode ser um campo nulo
	cpf char(11), not null,
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(2),
	observacoes text,
	
	--restrição:id cliente como chave primária
	constraint pk_cln_idcliente primary key(idclient)
)
