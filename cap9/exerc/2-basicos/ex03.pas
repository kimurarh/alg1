program ex03;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
	tam, elemento: longint;

procedure ler_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
	tam := 0;
	read(num);
	while num <> 0 do
	begin
		tam := tam + 1;
		v[tam] := num;
		read(num);
	end;
end;

procedure busca_sentinela(elemento: longint; var v: vetor; tam: longint);
var i: longint;
begin
	v[tam + 1] := elemento;

	i := 1;
	while v[i] <> elemento do
		i := i + 1;

	if i <= tam then
		writeln('pertence')
	else
		writeln('nao pertence');
end;

procedure procura_num(var elemento: longint);
begin
	read(elemento);
	while elemento <> 0 do
	begin
		busca_sentinela(elemento, v, tam);
		read(elemento);
	end;
end;

begin
	ler_vetor(v, tam);
	procura_num(elemento);
end.
