program p2018_2_q2;

const MAX = 200;
type vetor = array [0..MAX] of longint;
var v, w, z: vetor;
    tam, tw, tz: longint;

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

procedure add_ordenado(elem: longint; var v: vetor; var tam: longint);
var i: longint;
begin
    v[0] := elem;
    i := tam;

    while v[i] > elem do
    begin
        v[i+1] := v[i];
        i := i - 1;
    end;

    v[i+1] := elem;
    tam := tam + 1;
end;
    
function procura_elem(elem: longint; var v: vetor; tam: longint): boolean;
var i: longint;
begin
    v[tam + 1] := elem;

    i := 1;
    while v[i] <> elem do
        i := i + 1;

    if i > tw then
        procura_elem := false
    else
        procura_elem := true;
end;

procedure separa_repetidos(var v: vetor; tam: longint;
                            var w: vetor; var tw: longint;
                            var z: vetor; var tz: longint);
var i: longint;
begin
    w[1] := v[1];
    tw := 1;

    for i := 2 to tam do
    begin
        if procura_elem(v[i], w, tw) then
            add_ordenado(v[i], z, tz)
        else
        begin
            tw := tw + 1;
            w[tw] := v[i];
        end;
    end;    
end;

procedure junta_vetores(var w: vetor; tw: longint;
                        var z: vetor; tz: longint;
                        var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tw do
        v[i] := w[i];
    
    for i:= 1 to tz do
        v[i + tw] := z[i];
end;

begin
    read(tam);
    le_vetor(v, tam);
    separa_repetidos(v, tam, w, tw, z, tz);
    imprime_vetor(w, tw);
    imprime_vetor(z, tz);
    junta_vetores(w, tw, z, tz, v, tam);
    imprime_vetor(v, tam);
end.
