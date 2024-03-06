create database Academia_Astral;
use Academia_Astral;

/* Academia_Logico: */

CREATE TABLE Academia (
    Nome varchar(10),
    CNPJ int PRIMARY KEY
);

CREATE TABLE Aluno (
    Nome varchar(30),
    CPF int PRIMARY KEY,
    Data_de_Nascimento Date,
    Sexo varchar(10)
);

CREATE TABLE Instrutor (
    Nome varchar(30),
    CPF int PRIMARY KEY,
    CREF int,
    Sexo varchar(10),
    Data_de_Nascimento Date
);

CREATE TABLE Endereco (
    CEP varchar(15) PRIMARY KEY,
    Logradouro varchar(40),
    Bairro varchar(20),
    Cidade varchar(20),
    Numero int
);

CREATE TABLE Contato (
    Celular_1 varchar(20) PRIMARY KEY,
    Celular_2 varchar(20),
    Telefone varchar(20),
    Email varchar(40),
    Whatsapp varchar(20)
);

CREATE TABLE Fornecedor (
    Nome varchar(30),
    Produto varchar(30),
    CNPJ int PRIMARY KEY
);

CREATE TABLE Equipamentos (
    Nome_do_aparelho varchar(30),
    Data_de_Aquisicao Date,
    Quantidade int PRIMARY KEY
);

insert into Academia ( Nome, CNPJ)
values ('Astral', 98421442000106);

insert into Aluno ( Nome, CPF, Data_de_Nascimento, Sexo)
values ( 'Pablo Antonio', 60042235065, 1999-02-08, 'M'),
( 'Julia Marques', 1042481010, 1982-06-02, 'F'),
( 'Raimundo Alencar', 06759712099, 2002-10-12, 'M'),
( 'Bárbara Antunes', 57450455072, 1952-07-02, 'F'),
( 'Sérgio Mendes', 08682708060, 2010-09-01, 'M'),
( 'Laura Tavares', 78741709039, 2000-02-03, 'F');

insert into Instrutor  ( Nome, CPF, CREF ,Sexo, Data_de_Nascimento)
values ( 'Luís Henrique', 97125249060, 831854737, 'M', 1995-12-10),
( 'Pietro Martins', 73413056816, 132894737, 'M', 1976-09-02),
( 'Evelyn Catarina', 49932647047, 411923705, 'F', 1984-10-02),
( 'Tatiane Renata', 37940328450, 136575742, 'F', 1997-01-02),
( 'Mateus Nicolau', 29985671341, 377162747, 'M', 1990-30-01),
( 'Mariah Yasmin Araújo', 30827788282, 480415559, 'F', 1985-22-08);

insert into Endereco ( CEP, Logradouro, Bairro, Cidade, Numero)
values ( 58076365, 'Rua Religiosa Júlia Maria da Conceição', 'João Paulo II', 'João Pessoa', 55),
( 58062023, 'Rua Francisco de Assis Silvestre', 'Paratibe', 'João Pessoa', 753),
( 58083596, 'Rua Cidade de São Miguel de Taipu', 'Indústrias', 'João Pessoa', 2073),
( 58059600, 'Rua Balconista Severino Nunes Pereira', 'Mangabeira', 'João Pessoa', 1502),
( 58035480, 'Rua Antônio Jovino de Lima', 'Bessa', 'João Pessoa', 827),
( 58058280, 'Rua Emília Batista Celani', 'Mangabeira', 'João Pessoa', 1263);

insert into Contato ( Celular_1, Celular_2, Telefone, Email, Whatsapp)
values( 83983843107, 0, 83323843107, 'marli-alves79@agreonoma.eng.br', 83983843107),
( 83991838043, 0, 8335279751, 'sebastiana_teresinha@caej.com.br', 83991838043),
( 83986826505, 83983103217, 8326832474, 'josefa_elaine@bol.com.br', 83986826505),
( 83982947479, 83981065072, 8335722929, 'luan_enzo_dacunha@gmail.com', 83982947479),
( 83981848066, 0, 8327255946, 'rafael-costa77@uol.com.br', 83981848066),
( 83987167349, 83994578318, 8325139726, 'marimar@gmail.com', 83994578318);

insert into Fornecedor ( Nome, Produto, CNPJ)
values ('B5T DISTRIBUIDORA', 'Suplementos', 69414588000126),
('Fitness Clothes', 'Roupas de treino', 14035715000194),
('Full Health', 'Aparelhos e equipamentos para academia', 81397186000166),
('Granfitness', 'Aparelhos e equipamentos para academia', 06445252000100),
('Limptotal', 'Produtos de limpeza ', 83918124000188),
('Multibras', 'Descartaveis', 91129440000107);

insert into Equipamentos ( Nome_do_aparelho, Data_de_Aquisicao, Quantidade)
values ('Legpress90', 2022-10-09, 4),
('Flexora', 2022-10-09, 3),
('Esteira', 2022-10-11, 20),
('Biscicleta ergometrica', 2022-10-11, 12),
('DuoCross Com Smith 2D', 2021-05-07, 2),
('Extensora', 2022-10-09, 6);

ALTER TABLE Aluno drop column Sexo;

insert into Aluno ( Nome, CPF, Data_de_Nascimento)
values ('Gerônimo Carlos', 58509386307, 1987-05-03);

update Endereco
set Numero = 754
where CEP = 58062023;

delete from Aluno
where nome = 'Barbara Antunes';

select Nome_do_aparelho, Data_de_Aquisicao, Quantidade from Equipamentos order by Quantidade desc;

select * from Fornecedor where Produto like 'A%';

select * from Endereco where Cidade like 'J_ _ _ _ _ _ _ _ _ _';

select * from Fornecedor where Nome not like 'F%';

select * from Equipamentos where Quantidade is null;

select * from Endereco where Bairro = 
'Mangabeira' AND
Numero = 1502;

select * from Equipamentos where Quantidade between 4 AND 15 order by Nome_do_aparelho ASC;

select count(*) AS Quantidade from Aluno;

select sum(Quantidade) AS Total from 
Equipamentos;

select avg(Quantidade) as 'Quantidade média de equipamentos'
from Equipamentos;

select max(Quantidade) as 'Equipamento com maior quantidade' from Equipamentos;

select Bairro, count(*) as
Alunos_proximos
from Endereco group by Bairro;


