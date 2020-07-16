(*
EXERCÍCIO COMPLEMENTAR 11 - CÁLCULOS SIMPLES

Considere que o número de uma placa de veı́culo é composto por quatro algarismos. Faça um programa em Pascal que leia este número do teclado e apresente o algarismo correspondente à casa das unidades.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|2569              |9             |
|1000              |0             |
|1305              |5             |

*)

program le_unidade_placa;

var placa: integer;

begin
	read(placa);
	writeln(placa mod 10);
end.
