program p2017_1_q1;

const MAX = 100;
type vetor = array [1..MAX] of integer;
var v, v1, v2: vetor;
    tam, tv1, tv2: longint;
    media: real;

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

function calc_media(var v: vetor; tam: longint): real;
var i, soma: longint;
begin
    soma := 0;
    for i := 1 to tam do
        soma := soma + v[i];
    calc_media := soma / tam;
end;

procedure separa_vetor(var v: vetor; tam: longint; media: real;
                       var v1: vetor; var tv1: longint;
                       var v2: vetor; var tv2: longint);
var i: longint;
begin
    tv1 := 0;
    tv2 := 0;

    for i := 1 to tam do
        if v[i] >= media then
        begin
            tv2 := tv2 + 1;
            v2[tv2] := v[i];
        end
        else
        begin
            tv1 := tv1 + 1;
            v1[tv1] := v[i];
        end;
end;



begin
    read(tam);
    le_vetor(v, tam);
    media := calc_media(v, tam);
    separa_vetor(v, tam, media, v1, tv1, v2, tv2);
    writeln('Vetor V1:');
    imprime_vetor(v1, tv1);
    writeln('Vetor V2:');
    imprime_vetor(v2, tv2);
end.
