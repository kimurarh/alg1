program ex_00_maximizar_soma_v2;

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
var i, soma, somaMax: longint;
begin
	soma := v[1];
	somaMax := soma;

	for i := 2 to tam do
	begin
		if soma < 0 then (* se soma do segmento fica negativa -> reinicia *)
			soma := v[i]
		else
			soma := soma + v[i];

		if soma > somaMax then
			somaMax := soma;
	end;
	maior_soma := somaMax;
end;

begin
	read(tam);
	le_vetor(v, tam);
	writeln(maior_soma(v, tam));
end.
