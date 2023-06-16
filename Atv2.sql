create database projeto;

use projeto;
-- ATIVIDADE 01

create table projetos(
id_projeto  int not null auto_increment primary key,
nome varchar(80) not null,
descricao varchar(300) not null,
data_criacao date not null,
data_alteracao date not null
);

create table participante(
id_participante  int not null auto_increment primary key,
email varchar(30) not null,
nome varchar(80) not null,
senha char(8) not null,
data_criacao date not null,
data_alteracao date not null
);

create table projeto_status(
id_status  int not null auto_increment primary key,
descricao varchar(300) not null,
data_criacao date not null,
data_alteracao date not null
);

insert into projetos values (default,"Gabi","A tal da gabi",'2022-02-15','2023-05-12'),
(default,"Gabi1","A tal da gabi1",'2022-02-15','2023-05-12'),
(default,"Gabi2","A tal da gabi2",'2022-02-15','2023-05-12'),
(default,"Gabi3","A tal da gabi3",'2022-02-15','2023-05-12'),
(default,"Gabi","A tal da gabi",'2022-02-15','2023-05-12');

insert into participante values 
(default,"GabiLinda@gmail.com","Gabi",'Gabi5678','2022-05-12','2023-02-15'),
(default,"Gabi1Linda@gmail.com","Gabi",'Gabi5678','2022-05-12','2023-02-15'),
(default,"Gabi2Linda@gmail.com","Gabi",'Gabi678','2022-05-12','2023-02-15'),
(default,"Gabi3Linda@gmail.com","Gabi",'Gabi5678','2022-05-12','2023-02-15'),
(default,"Gabi4Linda@gmail.com","Gabi",'Gabi5678','2022-05-12','2023-02-15');


insert into projeto_status values 
(default,"A tal da gabi1",'2022-05-12','2023-02-15'),
(default,"A tal da gabi1",'2022-05-12','2023-02-15'),
(default,"A tal da gabi1",'2022-05-12','2023-02-15'),
(default,"A tal da gabi1",'2022-05-12','2023-02-15'),
(default,"A tal da gabi1",'2022-05-12','2023-02-15');




-- ATIVIDADE 02

update projetos set nome = "Gabis" where id_projeto = 2;
update participante set nome = "A Tal Gabis" where id_participante = 1;
update projeto_status set descricao = "A gabi é a mais linda namoral" where id_status = 1;



-- ATIVIDADE 03

alter table projetos 
add column nota float not null;

-- ATIVIDADE 04


delete from projetos where id_projeto=1;
delete from participante where id_participante=2;
delete from projeto_status where id_status=3;

-- ATIVIDADE 05
select id_projeto AS proj from projetos;
select id_participante as parts from participante;
select id_status as istatus from projeto_status;