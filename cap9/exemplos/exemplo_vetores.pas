program exemplo_vetores;

const MAX = 200;
type vetor = array [1..MAX] of longint;

var tam: longint;
	v: vetor;

(* le um tamanho de vetor *)
procedure ler_tamanho(var tam: longint);
begin
	repeat 
		read(tam);
	until (tam >= 1) and (tam <= max);
end;

procedure ler_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

procedure imprimir_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam-1 do
		write(v[i], ', ');
	writeln(v[tam]);
end;

begin
	writeln('Digite qual o tamanho do vetor: ');
	ler_tamanho(tam);
	writeln('Digite os ', tam, ' elementos do vetor:');
	ler_vetor(v, tam);
	writeln('Vetor digitado: ');
	imprimir_vetor(v, tam);
end.
