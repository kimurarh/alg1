program vetores_001;

const MAX = 200;
type vetor = array [1..MAX] of real;

var n: integer;
	v: vetor;

procedure le_vetor(var v: vetor; n: integer);
var i: integer;
begin
	for i := 1 to n do
	   read(v[i]);	
end;

procedure calculo_vetor(var v: vetor; n: integer);
var i: integer; somaNum, somaDiv: real;
begin
	somaNum := 0;
	somaDiv := 0;
	for i := 1 to n do
	begin
		if i mod 2 = 0 then
		begin
			if v[i] > 0 then
				somaNum := somaNum + v[i]
		end
		else
			if v[i] < 0 then
				somaDiv := somaDiv + v[i];
	end;
	if somaDiv = 0 then
		writeln('divisao por zero')
	else
		writeln(somaNum / somaDiv:0:2);
end;


begin
	read(n); (* 0 <= n <= 200 *)

	if n = 0 then
		writeln('vetor vazio')
	else
	begin
		le_vetor(v, n);
		calculo_vetor(v, n);
	end;
end.
