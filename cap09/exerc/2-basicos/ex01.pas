program ex01;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var tam: longint;
	v: vetor;

procedure inicia_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	i := 1;
	while i <= tam do
	begin
		v[i] := -2;
		v[i + 1] := 7;
		i := i + 2;
	end;
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
	writeln;
end;

begin
	read(tam);
	inicia_vetor(v, tam);
	imprime_vetor(v, tam);
end.
