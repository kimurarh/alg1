(*
EXERCÍCIO COMPLEMENTAR 3 - CÁLCULOS SIMPLES

Faça um programa em Pascal que leia dois números reais, um será o valor de um produto e outro o valor de desconto que esse produto está recebendo. Imprima quantos reais o produto custa na promoção.

|Exemplo de Entrada     |Saída Esperada   |
|:---------------------:|:---------------:|
|Valor Original|Desconto|Valor na promoção|
|:------------:|:------:|:---------------:|
|500.00        |50.00   |450.00           |
|10500.00      |500.00  |10000.00         |
|90.00         |0.80    |89.20            |

*)

program valor_com_desconto;

var valor, desconto: real;

begin
	read(valor, desconto);
	writeln(valor - desconto:0:2);
end.
