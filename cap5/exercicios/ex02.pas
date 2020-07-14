(* Faça um program em Pascal que leia 6 valores reais para as variáveis A, B, C, D, E, F e imprima o valor de X após o cálculo da seguinte expressão aritmética:

X = (((A + B)/(C - D)) * E)/(F/AB + E)

Seu programa deve assumir que nunca haverá divisões por zero para as variáveis dadas como entrada. Note que neste programa a variável X deve ser do tipo real, enquanto que as outras variáveis podem ser tanto da família ordinal (integer, logint, etc) como também podem ser do tipo real.


Exemplo:
	entrada: 1 2 3 4 5 6		saida: -1.87500000000E+000
	entrada: 1 -1 1 -1 1 -1		saida: 0.0000000000E+000
	entrada: 3 5 8 1 1 2		saida: 1.0084033613445378E+000

*)

program conta_esquisita;

var
	A, B, C, D, E, F: integer;
	X: real;

begin
	writeln('Digite os valores de A, B, C, D, E e F, respectivamente:');
	read(A);
	read(B);
	read(C);
	read(D);
	read(E);
	read(F);
	X := (((A + B)/(C - D)) * E)/(F/(A*B) + E);
	writeln(X);
end.

