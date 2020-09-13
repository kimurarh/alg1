(*
EXERCICIO 14

Faça um programa que leia três números x, y, z do teclado e decida se x <= y < z. Seu programa deve imprimir a mensagem "esta no intervalo" ou "nao esta no intervalo" conforme o caso. Exemplo:

|Exemplo de Entrada|Saída Esperada        |
|:----------------:|:--------------------:|
|3 5 8             |esta no intervalo     |
|3 8 8             |nao esta no intervalo |
|4 12 5            |nao esta no intervalo |
*)

program verifica_intervalo;

var
	x, y, z: integer;

begin
	read(x, y, z);
	if (y >= x) and (y < z) then
		writeln('esta no intervalo')
	else
		writeln('nao esta no intervalo');
end.
