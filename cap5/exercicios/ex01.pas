(*
EXERCÍCIO 1

Considere o seguinte programa incompleto em Pascal:

-----------------------------------------------------
program tipos;

var
	A: <tipo>;
	B: <tipo>;
	C: <tipo>;
	D: <tipo>l;
	E: <tipo>;

begin
	A := 1 + 2 * 3;
	B := 1 + 2 * 3 / 7;
	C := 1 + 2 * 3 div 7;
	D := 3 div 3 * 4.0;
	E := A + B * C - D;
end.
-----------------------------------------------------

Você deve completar este programa indicando, para cada variável de A até E, qual é o tipo correto desta variável. Alguams delas podem ser tanto inteiras como reais, enquanto que algumas só podem ser de um tipo específico. Para resolver este exercício você precisa estudar sobre os operadores inteiros e reais e também sobre a ordem de precedência de operadores que aparecem em uma expressão aritimética. Sua solução estará correta se seu programa compilar.

*)


program tipos;

var
	A: integer;
	B: real;
	C: integer;
	D: real;
	E: real;

begin
	A := 1 + 2 * 3;
	B := 1 + 2 * 3 / 7;
	C := 1 + 2 * 3 div 7;
	D := 3 div 3 * 4.0;
	E := A + B * C - D;
end.
