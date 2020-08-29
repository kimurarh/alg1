program ex02_nao_ordenando;

const MAX = 100;
type vetor = array [1..MAX] of longint;
var v, w, p: vetor;
    n, m: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

procedure cria_vetor_zeros(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        v[i] := 0;
end;

function procura(elem: longint; var v: vetor; tam: longint; var p: vetor): boolean;
var i: longint;
begin
    v[tam + 1] := elem;

    i := 1;
    while (v[i] <> elem) or (p[i] = 1) do
        i := i + 1;

    if i > tam then
        procura := false
    else
    begin
        procura := true;
        p[i] := 1;
    end;
end;

function eh_permutacao(var v: vetor; n: longint; var w: vetor; m: longint; var p: vetor): boolean;
var i: longint; encontrou: boolean;
begin
    encontrou := true;
    i := 1;
    
    while (i <= n) and encontrou do
    begin
        encontrou := procura(v[i], w, m, p);
        i := i + 1;
    end;

    eh_permutacao := encontrou;
end;


begin
    read(n, m);
    le_vetor(v, n);
    le_vetor(w, m);
    if n <> m then
        writeln('nao')
    else
    begin
        cria_vetor_zeros(p, n);
        if eh_permutacao(v, n, w, m, p) then
            writeln('sim')
        else
            writeln('nao');
    end;
end.
