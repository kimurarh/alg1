program ex08;

const MAX = 100;
type vetor = array [1..MAX] of char;

var v, w, z: vetor;
    tam_v, tam_w, tam_z: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        readln(v[i]);
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i], ' ');
    writeln;
end;

function achou_letra(letra: char; var v: vetor; tam: longint): boolean;
var i: longint;
begin
    v[tam + 1] := letra; (* sentinela *)
    i := 1;
    while v[i] <> letra do
        i := i + 1;

    achou_letra := true;
    if i > tam then
        achou_letra := false;
end;

(* W: vetor sem as letras repetidas | Z: vetor so com as letras repetidas *)
procedure separa_repetidos(var v: vetor; tam_v: longint; var w: vetor; var tam_w: longint; var z: vetor; var tam_z: longint);
var i: longint;
begin
    w[1] := v[1]; (* primeio elemento *)
    tam_w := 1;
    tam_z := 0;

    for i:= 2 to tam_v do
    begin
        if not achou_letra(v[i], w, tam_w) then 
        begin
            tam_w := tam_w + 1;
            w[tam_w] := v[i];
        end
        else 
        if not achou_letra(v[i], z, tam_z) then
            begin
                tam_z := tam_z + 1;
                z[tam_z] := v[i];
            end;
    end;
end;


begin
    tam_v := 10;
    le_vetor(v, tam_v);
    writeln('Vetor lido:');
    imprime_vetor(v, tam_v);
    separa_repetidos(v, tam_v, w, tam_w, z, tam_z);
    writeln('Letras repetidas:');
    imprime_vetor(z, tam_z); (* vetor so com as letras repetidas *)
end.
