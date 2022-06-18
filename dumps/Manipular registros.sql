insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritimos', 'Lógiga de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '10'),
('5', 'Jarva', 'Introdução aa Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar Polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2018'
limit 2;

truncate cursos;

select * from cursos;
