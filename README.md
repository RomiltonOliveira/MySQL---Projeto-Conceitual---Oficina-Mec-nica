# MySQL---Projeto-Conceitual---Oficina-Mec-nica
Projeto construção de um banco de dados desde o esquema até a implementação, partindo do modelo entidade-relacionamento de uma oficina mecânica.

Objetivo:
Cria o esquema conceitual para o contexto de oficina com base na narrativa fornecida

Narrativa:
* Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica
* Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões  periódicas
* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
* A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
* O valor de cada peça também irá compor a OSO cliente autoriza a execução dos serviços
* A mesma equipe avalia e executa os serviços
* Os mecânicos possuem código, nome, endereço e especialidade
* Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.


Após a criação do esquema lógico, foi realizado a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, foi realizado a persistência de dados para realização de testes. Sendo assim, foram utilizados nas queries SQL as cláusulas abaixo:

Recuperações simples com SELECT Statement;
Filtros com WHERE Statement;
Crie expressões para gerar atributos derivados;
Defina ordenações dos dados com ORDER BY;
Condições de filtros aos grupos – HAVING Statement;
Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;
