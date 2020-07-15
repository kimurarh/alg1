(*
EXERCICIO 15

Faça um programa que leia três números x, y,z do teclado e decida se x > y ou se y < z. Seu programa deve imprimir a mensagem 'sim' em caso afirmativo e 'nao' caso contrario. Exemplo:

|Exemplo de Entrada|Saida Esperada|
|:----------------:|:------------:|
|3 5 8             |sim           |
|3 8 8             |nao           |
|4 12 5            |nao           |

*)

program verifica_condicao;

var	x, y, z: integer;

begin
	read(x, y, z);
	if (x > y) or (y < z) then
		writeln('sim')
	else 
		writeln('nao');
end.
