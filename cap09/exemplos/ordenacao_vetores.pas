program ordenacao_vetores;

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

(* 
METODOS DE ORDENAÇÃO
- SELEÇÃO --> ALG 1
- INSERÇÃO (ALG 2)
- BOLHA (ALG 2)


METODO DA SELECAO

- Encontrar o menor de todos
- Trocar de lugar com o primeiro 

- Encontrar o segundo menor
- Trocar de lugar com o segundo

e assim por diante...

passo (n - 1): colocou os (n - 1) menores no lugar. Logo, o ultimo já está no lugar
*)

procedure ordenar_selecao (var v: vetor; tam: longint);
var i, j, pos_menor, temp: longint;
begin
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

begin
	writeln('Digite o tamanho do vetor:');
	read(tam);
	ler_vetor(v, tam);
	writeln('Vetor digitado:');
	imprimir_vetor(v, tam);
	ordenar_selecao(v, tam);
	writeln('Vetor ordenado:');
	imprimir_vetor(v, tam);
end.
