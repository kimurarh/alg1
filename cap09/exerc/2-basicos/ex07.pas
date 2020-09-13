program ex07;

const MAX = 200;
type vetor = array [0..MAX] of longint;
var num, tam, indice: longint;
	v: vetor;

procedure inserir_ordenado(num: longint; var v: vetor; var tam: longint);
var i: longint;
begin
	v[0] := num; (* sentinela *)
	i := tam;
	while v[0] < v[i] do
	begin
		v[i+1] := v[i];
		i := i - 1;
	end;
	v[i+1] := num; (* insere na posicao i+1 *)
	tam := tam + 1;
end;

procedure le_sequencia(var v: vetor; var tam: longint);
begin
	tam := 0;
	read(num);
	while num <> 0 do
	begin
		inserir_ordenado(num, v, tam);
		read(num);
	end;
end;

function encontra_num(num: longint; var v: vetor; tam: longint): longint;
var inicio, meio, fim: longint;
begin
	inicio := 1;
	fim := tam;
	meio := (inicio + fim) div 2;

	encontra_num := 0;
	while fim >= inicio do
	begin
		if v[meio] = num then
		begin
			encontra_num := meio;
			fim := meio - 1;
		end
		else
			if v[meio] > num then
				fim := meio - 1
			else
				inicio := meio + 1;
		meio := (inicio + fim) div 2;
	end;
end;


begin
	le_sequencia(v, tam);
	read(num);
	indice := encontra_num(num, v, tam);
	if indice = 0 then
		writeln('nao esta presente')
	else
		writeln('posicao: ', indice);
end.
