(*
EXERCÍCIO COMPLEMENTAR 4 - DESVIOS CONDICIONAIS

Faça um programa em Pascal para determinar se um dado número N (recebido através do teclado) é POSITIVO, NEGATIVO ou NULO.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |POSITIVO      |
|-3                |NEGATIVO      |
|0                 |NULO          |

*)

program pos_neg_nulo;

var n: integer;

begin
	read(n);
	if n = 0 then
		writeln('NULO')
	else
	begin
		if n > 0 then
			writeln('POSITIVO')
		else
			writeln('NEGATIVO');
	end;
end.
