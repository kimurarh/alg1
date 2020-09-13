program intercala_merge_vetores;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w, r: vetor;
	tam_v, tam_w, tam_r: longint;

(* INTERCALAR OU MERGE VETORES

Exemplo:

V = 2 4 5 7 8
W = 1 3 6

quero obter:
S = 1 2 3 4 5 6 7 8 

*)

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

procedure intercalar (var v: vetor; tam_v: longint;
					  var w: vetor; tam_w: longint;
					  var intercala: vetor; var tam_i: longint);
var i, j, k: longint;
begin
	i := 1;
	j := 1;
	tam_i := 0;

	while (i <= tam_v) and (j <= tam_w) do
	begin
		tam_i := tam_i + 1;
		if v[i] < w[j] then
		begin
			intercala[tam_i] := v[i];
			i := i + 1;
		end
		else
		begin
			intercala[tam_i] := w[j]; 
			j := j + 1;
		end;
	end;

	(* copia o restante do vetor que nao foi copiado *)
	if i > tam_v then (* v acabou primeiro *)
	begin
		(* copia o restante de w *)
		for k := j to tam_w do
		begin
			tam_i := tam_i + 1;
			intercala[tam_i] := w[k];
		end;
	end
	else
	begin
		(* copia o restante de v *)
		for k := i to tam_v do
		begin
			tam_i := tam_i + 1;
			intercala[tam_i] := v[k];
		end;
	end;
end;

begin
	writeln('Digite o tamanho do vetor: ');
	read(tam_v);
	writeln('Digite os ', tam_v, ' elementos do vetor:');
	ler_vetor(v, tam_v);
	imprimir_vetor(v, tam_v);
	writeln('Digite o tamanho do vetor: ');
	read(tam_w);
	writeln('Digite os ', tam_w, ' elementos do vetor:');
	ler_vetor(w, tam_w);
	imprimir_vetor(w, tam_w);
	intercalar(v, tam_v, w, tam_w, r, tam_r);
	writeln('Vetor intercalado:');
	imprimir_vetor(r, tam_r);
end.

