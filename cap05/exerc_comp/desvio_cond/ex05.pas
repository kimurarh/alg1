(*
EXERCÍCIO COMPLEMENTAR 5 - DESVIOS CONDICIONAIS

Faça um programa em Pascal que leia dois números e efetue a adição. Caso o valor somado seja maior que 20, este deverá ser apresentado somando-se a ele mais 8; caso o valor somado seja menor ou igual a 20, este deverá ser apresentado subtraindo-se 5.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|13.14<br>5        |13.14         |
|-3<br>-4          |-12.00        |
|16<br>5           |29.00         |

*)

program soma_verifica;

var n, m, soma: real;

begin
	read(n, m);
	soma := n + m;
	if soma > 20 then
		soma := soma + 8
	else
		soma := soma - 5;
	writeln(soma:0:2);
end.
