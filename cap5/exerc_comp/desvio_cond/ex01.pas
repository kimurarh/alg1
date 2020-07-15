(*
EXERCÍCIO COMPLEMENTAR 1 - DESVIOS CONDICIONAIS

Faça um programa que leia um número e o imprima caso ele seja maior que 20.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|30.56             |30.56         |
|20                |              |
|20.05             |20.05         |

*)

program imprime_maior_que_vinte;

var n: real;

begin
	read(n);
	if n > 20 then
		writeln(n :0:2);
end.
