(*
EXERCÍCIO 94

Faça um programa Pascal que leia dois números inteiros, um será o valor de um produto e outro o valor de desconto que esse produto está recebendo.
Imprima quantos reais o produto custa na promoção.

Exemplos:
Entrada 1:
500 50
Saida Esperada 1:
450

Entrada 2:
60000 1
Saída Esperada 2:
59999

*)

program valor_promocao;

var valor, desconto: longint;

begin
	desconto := 0;
	readLn(valor, desconto);
	writeln(valor - desconto);
end.
