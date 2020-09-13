program busca_binaria_vetor;

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

function busca_binaria (elem: longint; var v: vetor; tam: longint): longint;
var inicio, fim, meio : longint;
begin
	inicio := 1;
	fim := tam;
	meio := (inicio + fim) div 2;

	while (v[meio] <> elem) and (fim >= inicio) do
	begin
		if v[meio] > elem then
			fim := meio - 1		(* metade superior é jogada fora *)
		else
			inicio := meio + 1;	(* metade inferior é jogada fora *)
		meio := (inicio + fim) div 2;
	end;
	(* laco termina quando achou ou quando o fim ficou antes do inicio *)
	if inicio <= fim then
		busca_binaria := meio
	else
		busca_binaria := 0;
end;

begin
	writeln('Digite qual o tamanho do vetor: ');
	ler_tamanho(tam);
	writeln('Digite os ', tam, ' elementos do vetor de forma ordenada:');
	ler_vetor(v, tam);
	writeln('Digite o numero para pesquisa: ');
	read(num);
	indice := busca_binaria(num, v, tam);
	if indice = 0 then
		writeln('elemento nao encontrado')
	else
		writeln('elemento encontrado na posicao ', indice);
end.
