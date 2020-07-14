(* 
EXERCICIO 12

Faça um program que leia um número n do teclado e decida se ele é positivo ou negativo. Seu programa deve imprimir a mensagem "par" ou "impar" conforme o caso. Exemplo:

	Exemplo de entrada	| 	Saida esperada
	----------------------------------------------
	5			| 	impar
	----------------------------------------------
	4 			| 	par
	----------------------------------------------
	15			| 	impar

*)

program par_ou_impar;

var
	n: integer;

begin
	read(n);
	if (n MOD 2 <> 0) then
		writeln('impar')
	else
		writeln('par');
end.
