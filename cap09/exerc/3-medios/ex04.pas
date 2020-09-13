program ex04;

const MAX = 200;
type vetor = array [0..MAX] of longint;
var v, w, z: vetor;
    tv, tw, tz: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        read(v[i]);
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        write(v[i], ' ');
end;

function procura_elem(elem: longint; var v: vetor; tam: longint): longint;
var i: longint;
begin
    v[tam + 1] := elem; (* sentinela *)

    i := 1;
    while v[i] <> elem do
       i := i + 1; 

    procura_elem := i;
end;

procedure add_ordenado(elem: longint; var v: vetor; var tam: longint);
var i: longint;
begin
    v[0] := elem;
    i := tam;
    
    while v[i] > elem do
    begin
        v[i + 1] := v[i];
        i := i - 1;
    end;

    v[i+1] := elem;
    tam := tam + 1;
end;

procedure separa_repetidos(var v: vetor;     tv: longint;
                           var w: vetor; var tw: longint;
                           var z: vetor; var tz: longint);
var i, posicao: longint;
begin
    (* W: vetor sem repeticoes *)
    w[1] := v[1];
    tw := 1;

    for i:= 2 to tv do
    begin
        posicao := procura_elem(v[i], w, tw);
        if posicao <= tw then
            add_ordenado(v[i], z, tz)
        else
        begin
            tw := tw + 1;
            w[tw] := v[i]; (* adiciona ao vetor sem repeticoes *)
        end;
    end;
end;

begin
    read(tv);
    le_vetor(v, tv);
    separa_repetidos(v, tv, w, tw, z, tz);
    imprime_vetor(w, tw);
    imprime_vetor(z, tz);
    writeln;
end.
