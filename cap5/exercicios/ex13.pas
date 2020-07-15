(*
EXERCICIO 13

Faça um programa que leia dois números n, m do teclado e decida se o primeiro é maior do que o segundo. Seu programa deve imprimir a mensagem "primeiro eh maior" ou "segundo eh maior ou igual" conforme o caso. Exemplo:


|Exemplo de Entrada|Saída Esperada           |
|:----------------:|:-----------------------:|
|5 2               |primeiro eh maior        |
|2 5               |segundo eh maior ou igual|
|5 5               |segundo eh maior ou igual|

*)

program verifica_maior;

var
	n, m: integer;

begin
	read(n, m);
	if (n > m) then
		writeln('primeiro eh maior')
	else
		writeln('segundo eh maior ou igual');
end.
