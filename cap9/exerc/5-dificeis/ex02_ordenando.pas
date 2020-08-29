program ex02_ordenando;

const MAX = 100;
type vetor = array [1..MAX] of longint;
var v, w: vetor;
    n, m: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

(* ordenacao por selecao *)
procedure ordena(var v: vetor; tam: longint);
var i, j, pos_menor, temp: longint;
begin
    for i:= 1 to tam - 1 do
    begin
        (* achar o i-esimo menor, a partir da posicao i + 1 *)
        pos_menor := i;
        for j := i + 1 to tam do
            if v[j] < v[pos_menor] then
                pos_menor := j;
        temp := v[i];
        v[i] := v[pos_menor];
        v[pos_menor] := temp;
    end;
end;

function eh_igual(var v: vetor; n: longint; var w: vetor; m: longint): boolean;
var i: longint;
begin
    eh_igual := true;
    for i := 1 to n do
        if v[i] <> w[i] then
            eh_igual := false;
end;


begin
    read(n, m);
    le_vetor(v, n);
    le_vetor(w, m);
    if n <> m then
        writeln('nao')
    else
    begin
        ordena(v, n);
        ordena(w, m);
        if eh_igual(v, n, w, m) then
            writeln('sim')
        else
            writeln('nao');
    end;
end.
