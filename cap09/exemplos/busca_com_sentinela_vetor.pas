program busca_simples;

const MAX = 200;
type vetor = array [1..MAX] of longint;

var tam, num, indice: longint;
	v: vetor;

(* le um tamanho de vetor *)
procedure ler_tamanho (var tam: longint);
begin
	repeat 
		read(tam);
	until (tam >= 1) and (tam <= max);
end;

procedure ler_vetor (var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

function busca_num (num: longint; var v: vetor; tam: longint): longint;
var i: longint;
begin
	v[tam + 1] := num; (* sentinela apos a ultima posicao do vetor *)
	i := 1;
	while v[i] <> num do
		i := i + 1;

	if i <= tam then (* achou nas posicoes validas *)
		busca_num := i
	else (* achou a sentinela -> numero nao estava no vetor *)
		busca_num := 0;
end;

begin
	writeln('Digite qual o tamanho do vetor: ');
	ler_tamanho(tam);
	writeln('Digite os ', tam, ' elementos do vetor:');
	ler_vetor(v, tam);
	writeln('Digite o numero para pesquisa: ');
	read(num);
	indice := busca_num(num, v, tam);
	if indice = 0 then
		writeln('elemento nao encontrado')
	else
		writeln('elemento encontrado na posicao ', indice);
end.
