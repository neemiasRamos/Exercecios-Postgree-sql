CREATE TABLE lawyers(
  register INTEGER PRIMARY KEY,
  name VARCHAR(255),
  customers_number INTEGER
 );
  
  
 INSERT INTO lawyers(register, name, customers_number)
 VALUES (1648, 'Marty M. Harrison', 5),
	(2427, 'Jonathan J. Blevins', 15),
	(3365, 'Chelsey D. Sanders', 20),
	(4153, 'Dorothy W. Ford', 16),
	(5525, 'Penny J. Cormier', 6);

Questão
O diretor da Mangojata Advogados ordenou que lhe fosse entregue um relatório sobre seus advogados atuais.
O diretor quer que você mostre para ele o nome do advogado que têm mais clientes, o nome do advogado que tem menos clientes e a média de clientes entre todos os advogados.
OBS: Antes de apresentar a média mostre um campo chamado Average a fim de deixar o relatório mais apresentável. A média deverá ser apresentada em inteiros.

Resposta
select name, customers_number from lawyers where customers_number = (select max(customers_number) from lawyers) union all select name, customers_number from lawyers where customers_number = (select min(customers_number) from lawyers) union all select 'Average' as name, round(avg(customers_number), 0) as customers_number from lawyers;
