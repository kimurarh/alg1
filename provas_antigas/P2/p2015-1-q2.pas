program p2015_1_q2;

const MAX = 200;
type vetor = array [0..MAX] of longint;
var v, vr, vu: vetor;
    tam, tvr, tvu: longint;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i], ' ');
    writeln;
end;

procedure le_vetor(var v: vetor; var tam: longint);
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

procedure organiza_vetor(var v: vetor; tam: longint;
                            var vr: vetor; tvr: longint;
                            var vu: vetor; tvu: longint);
var i: longint;
begin
    (* coloca os num sem repeticao *)
    for i := 2 to tvu do
        v[i] := vu[i];

    (* coloca os num repetidos *)
    for i := 1 to tvr do
        v[i + tvu] := vr[i];
end;

procedure add_ordenado(elem: longint; var v: vetor; var tam: longint);
var i: longint;
begin
    v[0] := elem; (* sentinela *)
    i := tam;
    while v[i] > elem do
    begin
        v[i+1] := v[i];
        i := i - 1;
    end;
    v[i+1] := elem;
    tam := tam + 1;
end;

function encontra(elem: longint; var v: vetor; tam: longint): boolean;
var i: longint;
begin
    v[tam + 1] := elem;

    i := 1;
    while v[i] <> elem do
        i := i + 1;

    if i > tam then
        encontra := false
    else
        encontra := true;
end;

procedure separa_repetidos(var v: vetor; tam: longint;
                            var vr: vetor; var tvr: longint;
                            var vu: vetor; var tvu: longint);
var i: longint;
begin
    (* primeiro elemento *)
    tvu := 1;
    vu[1] := v[1];

    for i := 2 to tam do
        if encontra(v[i], vu, tvu) then
            add_ordenado(v[i], vr, tvr)
        else
        begin
            tvu := tvu + 1;
            vu[tvu] := v[i];
        end;
end;

begin
    le_vetor(v, tam);
    separa_repetidos(v, tam, vr, tvr, vu, tvu);
    organiza_vetor(v, tam, vr, tvr, vu, tvu);
    imprime_vetor(v, tam);
end.
