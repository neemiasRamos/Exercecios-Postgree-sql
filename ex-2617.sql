CREATE TABLE providers (
  id numeric PRIMARY KEY,
  name varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2)
);

CREATE TABLE products (
  id numeric PRIMARY KEY,
  name varchar (255),
  amount numeric,
  price numeric,
  id_providers numeric REFERENCES providers (id)
);


INSERT INTO providers (id, name, street, city, state)
VALUES
  (1,	'Ajax SA',	'Presidente Castelo Branco',	'Porto Alegre',	'RS'),
  (2,	'Sansul SA',	'Av Brasil',	'Rio de Janeiro',	'RJ'),
  (3,	'South Chairs',	'Av Moinho',	'Santa Maria', 	'RS'),
  (4,	'Elon Electro',	'Apolo',	'São Paulo',	'SP'),
  (5,	'Mike Electro',	'Pedro da Cunha',	'Curitiba',	'PR');
  
INSERT INTO products (id, name, amount, price, id_providers)
VALUES
  (1,	'Blue Chair',	30,	300.00,	5),
  (2,	'Red Chair',	50,	2150.00,	1),
  (3,	'Disney Wardrobe',	400,	829.50,	4),
  (4,	'Blue Toaster',	20,	9.90,	3),
  (5,	'Solar Panel',	30,	3000.25,	4);
  

Questão
O setor financeiro encontrou alguns problemas na entrega de um dos nossos fornecedores, a entrega dos produtos não condiz com a nota fiscal.
Seu trabalho é exibir o nome dos produtos e o nome do fornecedor, para os produtos fornecidos pelo fornecedor ‘Ajax SA’.

Resposta
select p1.name, p2.name from products p1 join providers p2 on p2.id = p1.id_providers and p2.name like 'Ajax SA';
