program ex01_compactacao;

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

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		write(v[i], ' ');
	writeln;
end;

procedure rm_vetor(indice: longint; var v: vetor; var tam: longint);
var i: longint;
begin
	for i := indice to tam - 1 do
		v[i] := v[i+1];
	tam := tam - 1;
end;

procedure compacta_vetor(var v: vetor; var tam: longint);
var i, j: longint;
begin
	i := 1;
	while i < tam do
	begin
		j := i + 1;
		while j <= tam do
			if v[i] = v[j] then
				rm_vetor(j, v, tam)
			else
				j := j + 1;
		i := i + 1;
	end;	
end;

begin
	read(tam);
	while tam <> 0 do
	begin
		le_vetor(v, tam);
		write('O: ');
		imprime_vetor(v, tam);
		compacta_vetor(v, tam);
		write('C: ');
		imprime_vetor(v, tam);
		read(tam);
	end;
end.
