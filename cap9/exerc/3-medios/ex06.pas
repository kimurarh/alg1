program ex06;

const MAX = 50;
type vetor = array [1..MAX] of integer;
var v: vetor;
    tam: integer;

procedure le_vetor(var v: vetor; tam: integer);
var i: integer;
begin
    for i:= 1 to tam do
        read(v[i]);
end;

procedure imprime_vetor(var v: vetor; tam: integer);
var i: integer;
begin
    for i:= 1 to tam do
        write(v[i], ' ');
    writeln;
end;

function acha_elem(elem: integer; var v: vetor; tam: integer): integer;
var i: integer;
begin
    v[tam + 1] := elem;

    i := 1;
    while v[i] <> elem do
        i := i + 1;

    acha_elem := i;
end;

procedure ordena_vetor(var v: vetor; tam: integer);
var i, indice, pos_elem: integer;
begin
    indice := 1;
    for i := 1 to 30 do
    begin
        pos_elem := acha_elem(i, v, tam);
        if pos_elem <= tam then
        begin
            v[pos_elem] := v[indice];
            v[indice] := i;
            indice := indice + 1;
        end;
    end;
end;

begin
    read(tam);
    le_vetor(v, tam);
    ordena_vetor(v, tam);
    imprime_vetor(v, tam);
end.
