program ex04;

const MAX = 20;
type vetor = array [1..MAX] of longint;
var v: vetor;
	tam: longint;

procedure le_vetor (var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

function esta_ordenado(var v: vetor; tam: longint): boolean;
var i: longint;
begin
	v[tam+1] := v[tam] - 1; (* sentinela *)
	
	i := 1;	
	while v[i] <= v[i+1] do
		i := i + 1;
	
	esta_ordenado := true;
	if i <> tam then
		esta_ordenado := false;
end;

begin
	read(tam);
	if tam = 0 then
		writeln('vetor vazio')
	else
	begin
		le_vetor(v, tam);
		if esta_ordenado(v, tam) then
			writeln('sim')
		else
			writeln('nao');
	end;
end.
