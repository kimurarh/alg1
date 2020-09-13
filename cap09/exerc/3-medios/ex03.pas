program ex03;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
	tam: longint;


procedure ler_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

procedure imprimir_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
	writeln;
end;

procedure ordenar_selecao (var v: vetor; tam: longint);
var i, j, pos_menor, temp: longint;
begin
    trocas := 0;
	for i := 1 to tam - 1 do
	begin
		(* p := achar o i-esimo menor, a partir da posicao i + 1 *)
		pos_menor := i;
		for j := i + 1 to tam do
			if v[j] < v[pos_menor] then
				pos_menor := j;
		(* troca de lugar *)
		temp := v[i];
		v[i] := v[pos_menor];
		v[pos_menor] := temp;
	end;
end;

(* NO METODO DE ORDENACAO POR SELECAO *)
(*
N(N - 1) / 2 comparaoes sao feitas

N - 1 trocas são sempre feitas
independente de como estao os numero

*)

begin
	writeln('Digite o tamanho do vetor:');
	read(tam);
	ler_vetor(v, tam);
	writeln('Vetor digitado:');
	imprimir_vetor(v, tam);
	ordenar_selecao(v, tam);
end.
