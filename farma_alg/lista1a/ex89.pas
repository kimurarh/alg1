(*
EXERCÍCIO 89

O custo ao consumidor de um carro novo é a soma do custo de fábrica com a percentagem do distribuidor e dos impostos (aplicados ao custo de fábrica).
Supondo que a percentagem do distribuidor seja de 28% e os impostos de 45%, faça um programa Pascal que leia um número inteiro representando o custo de fábrica de um carro e imprima o custo ao consumidor.

Exemplos:
Entrada 1:
15000
Saída Esperada 1:
25950

Entrada 2:
12500
Saída Esperada 2:
21625

Entrada 3:
8350
Saída Esperada 3:
14445

*)

program custo_carro_consumidor;

var custoFabrica: integer;

begin
	read(custoFabrica);
	writeln(custoFabrica * (100 + 28 + 45) div 100);
end.
