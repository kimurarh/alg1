program ex05;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w: vetor;
    tam, tw: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        write(v[i], ' ');
    writeln;
end;

function acha_elem(elem: longint; var v: vetor; tam: longint): boolean;
var i: longint;
begin
    v[tam+1] := elem;

    i := 1;
    while v[i] <> elem do
        i := i + 1;

    acha_elem := true;
    if i > tam then (* achou a sentinela *)
        acha_elem := false;
end;

procedure retira_repetidos(var v: vetor; tam: longint; var w: vetor; var tw: longint);
var i: longint;
begin
    w[1] := v[1]; 
    tw := 1;

    for i := 2 to tam do
    begin
        if not acha_elem(v[i], w, tw) then
        begin
            tw := tw + 1;
            w[tw] := v[i];
        end;
    end;
end;

begin
    read(tam);
    while tam <> 0 do
    begin
        le_vetor(v, tam);
        imprime_vetor(v, tam);
        retira_repetidos(v, tam, w, tw); (* W: vetor sem repeticoes *)
        imprime_vetor(w, tw);
        read(tam);
    end;
end.
