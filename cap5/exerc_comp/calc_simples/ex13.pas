(*
EXERCÍCIO COMPLEMENTAR 13 - CÁLCULOS SIMPLES

Considere que o número de uma placa de veı́culo é composto por quatro algarismos. Faça um programa em Pascal que leia este número do teclado e apresente o algarismo correspondente à casa das centenas.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|2500              |5             |
|2031              |0             |
|6975              |9             |

*)

program le_centena_placa;

var placa: integer;

begin
	read(placa);
	writeln((placa mod 1000) div 100);
end.
