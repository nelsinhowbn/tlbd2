use master

drop database nelson

create database nelson

use nelson

create table tb_clientes(
id_cliente int primary key identity (1,1),
nome nvarchar(100),
endereco nvarchar(500),
fone nvarchar,
email varchar(100)
)


create table tb_hardware(
id_hardware int primary key identity (1,1),
descricao varchar,
preco float,
qtde int,
qtde_mini int
)


create table tb_vendas(
id_venda int primary key identity (1,1),
id_cliente int, --fk
data date,
valor_total float,
desconto float,
valor_pago float,
)

create table tb_vendas_itens(
id_item int primary key identity (1,1),
id_venda int, --fk
id_hardware int, --fk
qtde_item int,
total_itens int
)
exec sp_tables

insert into tb_vendas (id_cliente) values (20)
alter table tb_vendas add constraint fk_id_cliente foreign key (id_cliente) references tb_clientes (id_cliente)
alter table tb_vendas_itens add constraint fk_id_venda foreign key (id_venda) references tb_vendas (id_venda)
alter table tb_vendas_itens add constraint fk_id_hardware foreign key (id_hardware) references tb_hardware (id_hardware)

insert into tb_clientes (nome, endereco, fone , email)
values ('Nelson', 'Rua Guapimirim', '980202779' , 'nelsonhadi95@gmail.com')
 insert into tb_clientes (nome, endereco, fone , email)
values ('Antonio', 'Rua Esmeralda', '2017810124' , 'antonio@gmail.com')
insert into tb_clientes (nome, endereco, fone , email)
values ('Gisele', 'Rua Penha', '980201574' , 'gisele2@gmail.com')

insert into tb_clientes (nome, endereco, fone , email)
values ('Stefany', 'Rua Aguia de Haia', '580202779' , 'ste@gmail.com')
insert into tb_clientes (nome, endereco, fone , email)
values ('Joseph', 'Rua Diona', '550202779' , 'jhosepp@gmail.com')
insert into tb_clientes (nome, endereco, fone , email)
values ('Fernando', 'Rua Guapimirim', '20271478' , 'fesilva@gmail.com')
insert into tb_clientes (nome, endereco, fone , email)
values ('Fernanda', 'Rua Guapimirim', '980202779' , 'fe5@gmail.com')
insert into tb_clientes (nome, endereco, fone , email)
values ('Jose', 'Rua Guapimirim', '9844202779' , 'JoseSilva@gmail.com')
insert into tb_clientes (nome, endereco, fone , email)
values ('Andre', 'Rua João Silva', '980458746' , 'AndreSilva@gmail.com')

select*from tb_clientes;  

insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'Processador', 'Mini' , '200', 2 ,1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'Coller', 'Fan' , '30', 4 , 1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'Gabinete', 'Preto' , '200', 5 ,1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'Hd', '500gb' , '200', 2 ,1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'PenDrive', '2gb' , '15', 4, 1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'Teclado', 'Mini' , '40', 4, 1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'Mause', 'Mini' , '200', 2,1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'Monitor', 'Grande' , '200', 2, 1)
insert into tb_hardware (id_hardware , descricao , preco , qtde , qtde_mini)
values ( 'PC', 'Completo' , '1000', 4, 1)
  

insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('1','14/03/2018','219.90', '19.90', '200')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('2','14/03/2018','259.90', '0.90', '259')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('3','14/03/2018','218.90', '18.90', '200')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('4','14/03/2018','1597.90', '97.90', '1500')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('4','14/03/2018','799.70','99.00' , '700.70')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('6','14/03/2018','499.90', '0.90' , '499')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('7','12/03/2018','70.90', '10.00' , '60.90')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('8','11/03/2018','248.90', '48.90' , '200')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('9','22/03/2018','679.90', '79.90', '600')
insert into tb_vendas(id_cliente,data,valor_total, desconto, valor_pago)
values ('10','24/03/2018','539.55', '39.55', '500')


insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('1','1','1','278.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('2','2','1','279.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('3','3','1','248.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('4','4','1','2597.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('8','5','1','899.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('7','4','1','449.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('7','4','1','4.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('8','8','1','279.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('6','5','1','779.90')
insert into tb_vendas_itens(id_venda,id_hardware,qtde_item ,total_itens)
values('30','70','1','439.45')


select*from tb_clientes
select*from tb_hardware
select*from tb_vendas
select*from tb_vendas_itens


