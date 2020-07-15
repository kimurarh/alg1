(*
EXERCÍCIO 17

Faça um programa que leia uma massa de dados onde cada linha da entrada contém um número. Para cada número lido, calcule o seu sucessor par, imprimindo-os dois a dois em listagem de saída. A última linha de dados contém o número zero, o qual não deve ser processado e serve apenas para indicar o final da leitura dos dados.

|Exemplo de Entrada|Saída Esperada                    |
|:----------------:|:--------------------------------:|
|12 6 26 86 0      |12 14<br>6 8<br>26 28<br>86 88    |
|-2 -5 -1 0        |-2 0<br>-5 -3<br>-1 1             |
|1 2 3 4 5 0       |1 3<br>2 4<br>3 5<br>4 6<br>5 7   |

*)

program sucessor_par;

var n: integer;

begin
	read(n);
	while(n <> 0) do
	begin
		writeln(n, ' ', n+2);		
		read(n)
	end;
end.

