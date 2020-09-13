program ex_00_maximizar_soma;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
	tam: longint;


procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

function maior_soma(var v: vetor; tam: longint): longint;
var i, j, soma, somaMax: longint;
begin
	somaMax := 0;
	for i := 1 to tam do
	begin
		soma := 0;
		for j := i to tam do
		begin
			soma := soma + v[j];
			if soma > somaMax then
				somaMax := soma;
		end;
	end;
	maior_soma := somaMax;
end;

begin
	read(tam);
	le_vetor(v, tam);
	writeln(maior_soma(v, tam));
end.
