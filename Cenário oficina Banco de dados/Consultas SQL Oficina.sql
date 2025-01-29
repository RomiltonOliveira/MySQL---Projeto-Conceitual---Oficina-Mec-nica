use oficina;
-- Carros das Pessoas Fisicas com modelo e ano de fabricação
select concat(Nome, ' ',Sobrenome) as Nome_Completo, Modelo, Cor, AnoFabricacao from cliente, veiculo
where idVeiculo = idCliente and TipoPessoa = 'CPF'
order by Nome;

-- Donos dos viculos e modelos fabricados antes do ano de 2020
select c.Nome, v.Modelo, v.AnoFabricacao from veiculo v
inner join cliente c on v.idClienteV = c.idCliente
having anoFabricacao < '2020-01-01'; 


-- Valor total do orçamento das peças 
select NomePeca, Descricao, Quantidade, (Quantidade * ValorUnitario) as ValorTotal 
from peca, pecaOrcamento;
