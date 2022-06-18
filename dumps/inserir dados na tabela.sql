use cadastro;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Creusa' , '1920-12-30', 'F' , '50.2' , '1.65' , default);

insert into pessoas values
(default, 'Adalgiza' , '1930-11-2', 'F' , '63.2' , '1.75' , 'Irlanda');

insert into pessoas values
(default, 'Ana' , '1975-12-22', 'F' , '52.2' , '1.45' , 'EUA'),
(default, 'Pedro' , '2000-07-15', 'M' , '52.3' , '1.45' , 'Brasil'),
(default, 'Maria' , '1999-05-30', 'F' , '75.9' , '1.70' , 'Portugal');


select * from pessoas;