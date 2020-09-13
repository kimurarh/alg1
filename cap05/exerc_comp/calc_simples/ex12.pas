(*
EXERCÍCIO COMPLEMENTAR 12 - CÁLCULOS SIMPLES

Considere que o número de uma placa de veı́culo é composto por quatro algarismos. Faça um programa em Pascal que leia este número do teclado e apresente o algarismo correspondente à casa das dezenas.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|2569              |6             |
|1000              |0             |
|1350              |5             |

*)

program le_dezena_placa;

var placa: integer;

begin
	read(placa);
	writeln((placa mod 100) div 10);
end.
