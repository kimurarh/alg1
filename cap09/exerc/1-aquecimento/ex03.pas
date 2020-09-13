program ex03; (* ler_imprimir_vetores *)
const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor; tam: longint;

(* ler vetor *)
procedure ler_vetor(var v: vetor; var tam: longint);
var i: longint;
begin
	read(tam);
	for i := 1 to tam do
		read(v[i]);
end;

(* imprimir vetor *)
procedure imprimir_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
	writeln;
end;

begin
	ler_vetor(v, tam);
	imprimir_vetor(v, tam);
end.
