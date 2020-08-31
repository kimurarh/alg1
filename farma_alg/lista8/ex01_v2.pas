program ex01_compactacao;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, c: vetor;
	tam, tc: longint;

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

function encontra(elem: longint; var v: vetor; tam: longint): boolean;
var i: longint;
begin
    v[tam+1] := elem;

    i := 1;
    while v[i] <> elem do
        i := i + 1;

    if i > tam then
        encontra := false
    else
        encontra := true;
end;

procedure compacta_vetor(var v: vetor; tam: longint; var c: vetor; var tc: longint);
var i: longint;
begin
    (* primeiro elemento *)
    c[1] := v[1];
    tc := 1;

    for i := 1 to tam do
        if not encontra(v[i], c, tc) then
        begin
            tc := tc + 1;
            c[tc] := v[i];
        end 
end;

begin
	read(tam);
	while tam <> 0 do
	begin
		le_vetor(v, tam);
		write('O: ');
		imprime_vetor(v, tam);
		compacta_vetor(v, tam, c, tc);
		write('C: ');
		imprime_vetor(c, tc);
		read(tam);
	end;
end.
