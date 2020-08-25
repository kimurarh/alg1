program ex02; (* ler_imprimir_vetores *)
const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor; tam: longint;

(* ler vetor *)
procedure ler_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
	tam := 0;
	read(num);
	while num <> 0 do
	begin
		tam := tam + 1;
		v[tam] := num;
		read(num);	
	end;
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
