create database db_banco_escola; 
use db_banco_escola;

/*----------criaçao da tabela aluno-------*/
create table Aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar(100) not null,
data_nasc date not null,
genero enum ('f','m','outro') not null,
data_cadastro date not null

);
describe Aluno;/*exibe a estrutura da tabela*/
select * from Aluno;


/*-------- criaçao da tabela curso---------*/
create table Curso(
id_curso int auto_increment primary key,
nome_curso varchar(50) not null,
descricao varchar(50) not null,
data_cadastro date not null,
valor_curso decimal(7,2)
);

insert into Aluno (nome_aluno,data_nasc,genero,data_cadastro) values
('ana souza','2005-02-21' ,'f','2026-05-18'),
('luiza santos', '2003-06-04', 'f','2026-05-18'),
('maria olivera','2004-08-25','f','2026-05-18'),
('joao gabriel ' , '2002-10-25','m','2026-05-18'),
('gabriel souza ' ,'2004-03-08','m', '2026-05-18');

select * from Curso;
describe aluno;
insert into Curso(nome_curso,descricao,data_cadrastro,valor_curso)values
('SQL server','curso voltado para banco de dados', '2026-05-20',1200.00),
('JAVA','curso de linguagem de programaçao de JAVA','2026-05-20',2300.00),
('POO','curso de orientação a objetivo','2026-05-20',500.00),
('FRONT END','curso de html e css','2026-05-20',800.00),
('ANGULAR', 'Curso de freimework','2026-05-20',800.00);

alter table aluno
add column email_aluno varchar(50) not null
default 'sem_email@exemplo.com';

alter table Curso
add column carga_horaria varchar(10) not null
default'0h';

select * from curso;

update curso
set carga_horaria = '40 horas'
where id_curso= 1;

update curso
set carga_horaria = '80 horas'
where id_curso= 2;

update curso
set carga_horaria = '40 horas'
where id_curso= 3;

update curso
set carga_horaria = '60 horas'
where id_curso= 4;

update curso
set carga_horaria = '30 horas'
where id_curso= 5;

delete from curso
where id_curso = 5;

create table Professor(
id_professor int auto_increment primary key,
nome_professor varchar(100) not null,
idade_professor int not null,
especializacao varchar (100) not null,
salario  decimal(7,2),
carga_horaria varchar(10) not null,
email  varchar (50) not null,
genero enum ('f','m','outro')
);

select * from Professor;

insert into Professor(nome_professor,idade_professor,especializacao,salario,carga_horaria,email,genero)values
('Carlos Silva', 35, 'Banco de Dados', 5500.00, '40h', 'carlos.silva@gmail.com', 'm'),

('Amanda Souza', 29, 'Desenvolvimento Web', 6200.00, '60h', 'amanda.souza@gmail.com', 'f'),

('Fernanda Lima', 41, 'Cyber Segurança', 7100.00, '80h', 'fernanda.lima@gmail.com', 'f'),

('Lucas Pereira', 32, 'Inteligência Artificial', 8500.00, '100h', 'lucas.pereira@gmail.com', 'm'),

('Rafael Costa', 27, 'Front-End', 4800.00, '40h', 'rafael.costa@gmail.com', 'm');


alter table Professor
add column estado_civil enum ('casado(a)' , 'soltero(a)', 'divorciado(a)','viuvo(a)');

update professor
set estado_civil = 'casado(a)'
where id_professor = 1;

select * from Professor;

update professor
set estado_civil = 'casado(a)'
where id_professor = 2;

update professor
set estado_civil = 'casado(a)'
where id_professor = 3;

update professor
set estado_civil = 'soltero(a)'
where id_professor = 4;

update professor
set estado_civil = 'soltero(a)'
where id_professor = 5;

update Professor
set salario = salario +8000.00
where id_professor =2;

