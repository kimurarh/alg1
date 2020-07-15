(*
EXERCÍCIO 18

Faça um programa que leia uma massa de dados contendo a definição de várias equações do segundo grau da forma Ax² + Bx + C = 0. Cada linha de dados contém a definição de uma equação por meio dos valores de A, B e C do conjunto dos números reais. A última linha informada ao sistema contém 3 (três) valores zero (exemplo 0.0 0.0 0.0). Após a leitura de cada linha o programa deve tentar calcular as duas raı́zes da equação. A listagem de saı́da, em cada linha, deverá conter os valores das duas raı́zes reais. Considere que o usuário entrará somente com valores A, B e C tais que a equação garantidamente tenha duas raı́zes reais.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1.00 -1.00 -6.00  |3.00 -2.00    |
|1.00 0.00 -1.00   |-1.00 1.00    |
|1.00 0.00 0.00    |0.00 0.00     |
|0.00 0.00 0.00    |              |

*)

program equacao_segundo_grau;

var
	A, B, C, delta: real;

begin
	read(A, B, C);
	while (A <> 0) or (B <> 0) or (C <> 0) do
	begin
		delta := sqrt(B*B - 4*A*C);
		write((-B - delta)/(2*A):0:2, ' ');
		writeln((-B + delta)/(2*A):0:2);
		read(A, B, C);
	end;
end.
