program ex05;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var tam, p: longint;
	v: vetor;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
	writeln;
end;

procedure le_indice_valido(var indice: longint; tam: longint);
begin
	repeat
		read(indice);
	until (indice <= tam) and (indice > 0);
end;

procedure remove(var v: vetor; var n: longint; p: longint);
begin
	v[p] := v[n]; (* coloca elemento que esta no final do vetor, no indice p *)
	n := n - 1;
end;

begin
	read(tam);
	le_vetor(v, tam);
	le_indice_valido(p, tam);
	remove(v, tam, p);
	imprime_vetor(v, tam);
end.
