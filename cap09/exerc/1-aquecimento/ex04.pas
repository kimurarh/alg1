program ex04;
const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor; tam: longint;

(* Gera o vetor *)
procedure gerar_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		if i mod 2 = 0 then
			v[i] := i * 2
		else
			v[i] := i * 3;
end;

(* Imprime o vetor *)
procedure imprimir_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
	writeln;
end;

begin
	read(tam);
	gerar_vetor(v, tam);
	imprimir_vetor(v, tam);
end.
