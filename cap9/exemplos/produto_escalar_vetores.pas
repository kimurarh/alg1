program produto_escalar_entre_vetores;

const MAX = 200;
type vetor = array [1..MAX] of longint;

var tam: longint;
	v, w: vetor;

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

function produto_escalar(var v, w: vetor; tam: longint): longint;
var i, soma: longint;
begin
	soma := 0;
	for i := 1 to tam do
		soma := soma + v[i] * w[i];
	produto_escalar := soma;
end;

begin
	writeln('Digite o tamanho do vetor:');
	le_tamanho(tam);
	writeln('Digite os ', tam, ' elementos do vetor V:');
	le_vetor(v, tam);
	writeln('Digite os ', tam, ' elementos do vetor W:');
	le_vetor(w, tam);
	writeln('Produto escalar: ', produto_escalar(v, w, tam));
end.
