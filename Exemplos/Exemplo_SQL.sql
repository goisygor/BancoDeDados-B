
CREATE TABLE cliente (
id_cliente SERIAL NOT NULL PRIMARY KEY,
cpf_cliente varchar(14),
nome_cliente varchar(50),
celular_cliente varchar(15)
)

CREATE TABLE produto (
valor_produto NOT NULL decimal(7,2),
id_produto serial PRIMARY KEY,
qtde_produto int
)

CREATE TABLE compra (
id_pedido serial PRIMARY KEY,
data_compra_produto date,
id_produto int,
id_cliente int
FOREIGN KEY(id_produto) REFERENCES produto (id_produto)
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente

