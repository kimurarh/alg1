(*
EXERCÍCIO COMPLEMENTAR 15 - CÁLCULOS SIMPLES

Você é um vendedor de carros é só aceita pagamentos à vista. As vezes é necessário ter que dar troco, mas seus clientes não gostam de notas miúdas. Para agradá-los você deve fazer um programa em Pascal que receba o valor do troco que deve ser dado ao cliente e retorna o número de notas de R$100 necessárias para esse troco.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|500               |5             |
|360               |3             |
|958               |9             |

*)

program troco_notas_de_cem;

var troco: integer;

begin
	read(troco);
	writeln(troco div 100);
end.
