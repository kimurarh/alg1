(*
EXERCÍCIO 19

Faça um programa em Pascal que leia dois números inteiros N e M como entrada e retorne como saı́da N mod M (o resto da divisão inteira de N por M ) usando para isto apenas operações de subtração. O seu programa deve considerar que o usuário entra com N sempre maior do que M.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|30 7              |2             |
|3 2               |1             |
|12 3              |0             |

*)

program n_mod_m;

var N, M: integer;

begin
	read(N, M);
	while(N >= M) do
	begin
		N := N - M;
	end;
	writeln(N);
end.
