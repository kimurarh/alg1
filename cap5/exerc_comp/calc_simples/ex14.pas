(*
EXERCÍCIO COMPLEMENTAR 14 - CÁLCULOS SIMPLES

Considere que o número de uma placa de veı́culo é composto por quatro algarismos. Faça um programa em Pascal que leia este número do teclado e apresente o algarismo correspondente à casa do milhar.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|2569              |2             |
|1000              |1             |
|0350              |0             |

*)

program le_centena_placa;

var placa: integer;

begin
	read(placa);
	writeln(placa div 1000);
end.
