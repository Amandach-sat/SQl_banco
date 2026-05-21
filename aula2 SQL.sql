create database db_clinica_odontologica;
use db_clinica_odontologica;

create table tb_dentista(
id_dentista int auto_increment  primary key,
nome_dentista varchar (50) not null,
cro_dentista varchar (10) not null,
telefone_dentista varchar (15) not null,
endereco_dentista varchar (255) not null,
espacialidade_dentista varchar (100) not null,
estado_civil_dentista enum ('solteiro(a)','casado(a)','viuvo(a)','divorciado(a)') not null,
data_admissao_dentista date not null,
data_nacimento_dentista varchar (100) not null,
email_dentista varchar (100) not null
);

select * from tb_dentista;


drop table tb_dentista;

create table tb_pacientes(
id_paciente int auto_increment primary key,
nome_paciente varchar (255) not null,
cpf_paciente varchar(11) not null,
telefone_paciente varchar (14) not null,
endereco_paciente varchar (100) not null,
genero_paciente  enum ('f','m','outro') not null,
data_nacimento_paciente date not null,
email_paciente varchar (80) not null,
convenio_paciente varchar(100) not null,
obs_paciente varchar(100),
data_cadastro_paciente date not null
);

select * from tb_paciente;

create table tb_consulta(
id_consulta int auto_increment primary key,
data_consulta datetime not null,
procedimento varchar (100)not null,
id_dentista int ,
id_paciente int 
);

select * from tb_consulta;

create table tb_sala(
id_sala int auto_increment primary key,
numero_sala int not null,
tipo_sala varchar (50) not null
);

select * from tb_sala;

insert into tb_dentista(nome_dentista,cro_dentista,telefone_dentista,endereco_dentista,espacialidade_dentista,estado_civil_dentista,data_admissao_dentista,data_nacimento_dentista,email_dentista) values
('daniel souza','347682','11 987634-5778','rua_alves_machado_carvalho','Endodontia','casado(a)','2020-05-08','1990-08-09','daniel_souza32@gmail.com'),
('maria eduarda','673892','11 95678-3241','rua_alves_machado_carvalho','buco maxilo','casado(a)','2024-12-03','1985-12-06','mariaedu@gmail.com'),
('leticia andrade','987123','11 97438-5439','rua_alves_machado_carvalho','dentista','solteiro(a)','2023-07-03','2002-03-03','leticiaand@gmail.com'),
('amanda cristina','234567','11 98765-4326','rua_alves_machado_carvalho','dentista','solteiro(a)','2023-07-09','2001-09-05','amandacrt@gmail.com');

