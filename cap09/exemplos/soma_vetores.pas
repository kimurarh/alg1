program soma_vetores;

const MAX = 200;
type vetor = array [1..MAX] of longint;

var tam: longint;
	v, w, vetor_soma: vetor;

procedure le_tamanho (var tam: longint);
begin
	repeat
		read(tam)
	until (tam >= 1) and (tam <= MAX);
end;

procedure le_vetor (var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

procedure imprime_vetor (var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
	writeln;
end;

procedure soma_vetores(var v, w, vetor_soma: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		vetor_soma[i] := v[i] + w[i];
end;

begin
	writeln('Digite o tamanho do vetor:');
	le_tamanho(tam);
	writeln('Digite os ', tam, ' elementos do vetor V:');
	le_vetor(v, tam);
	writeln('Digite os ', tam, ' elementos do vetor W:');
	le_vetor(w, tam);
	writeln('Soma dos vetores V + W:');
	soma_vetores(v, w, vetor_soma, tam);
	imprime_vetor(vetor_soma, tam);
end.
