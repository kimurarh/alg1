(*
EXERCICIO 16

Faça um programa que leia 6 valores reais para as variáveis A, B, C, D, E, F e imprima o valor de X após o cálculo da seguinte expressão aritmética:

	X = ((A+B)/(C-D)*E)/(F/(A*B)+E)

Seu programa deve imprimir a mensagem 'divisão por zero' caso o denominador seja zero. Caso isso não ocorra seu ṕrograma deverá realizar a conta.

|Exemplos de entradas|Saídas esperadas|
|:------------------:|:--------------:|
|1 2 3 4 5 6         |-1.87500000E+000|
|0 0 0 0 0 0         |divisao por zero|
|1 1 2 2 1 3         |divisao por zero|
*)

program calcula_expressao;

var	
	A, B, C, D, E, F: integer;

begin
	read(A, B, C, D, E, F);

	if (C - D = 0) or (A*B = 0) or (F/(A*B)+E = 0) then
		writeln('divisao por zero')
	else
		writeln(((A+B)/(C-D)*E)/(F/(A*B)+E));
end.
