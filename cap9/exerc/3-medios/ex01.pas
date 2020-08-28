program ex01;

const MAX = 200;
type sequencia = array [1..MAX] of real;
var s, aux: sequencia;
    n, ta, ind, tam: longint;

procedure le_sequencia(var s: sequencia; n: longint);
var i: longint;
begin
    for i := 1 to n do
        read(s[i]);
end;

function busca_elemento(elem: real; var s: sequencia; tam: longint): longint;
var i: longint;
begin
    s[tam + 1] := elem;
    i := 1;
    while s[i] <> elem do
        i := i + 1;
    
    busca_elemento := i;
end;

procedure procura_seq_igual(var s: sequencia; ts: longint; var aux: sequencia; var taux: longint; var ind, m: longint);
var i, posicao: longint;
    achou: boolean;
begin
    ta := 1;
    aux[1] := s[1]; (* primeiro elemento *)
    s[ts+1] := s[1]; (* sentinela *)

    achou := false;
    i := 2;
    while not achou do
    begin
        posicao := busca_elemento(s[i], aux, ta);
        if posicao < ta then
        begin
            achou := true;
            ind := posicao;
            m := 1;
            (* verifica iguais ate achar um diferente *)
            i := i + 1;
            posicao := posicao + 1;
            while s[posicao] = s[i] do
            begin
                m := m + 1;
                i := i + 1;
                posicao := posicao + 1;
            end;
        end
        else
        begin
            ta := ta + 1;
            aux[ta] := s[i];
            i := i + 1;
        end;
    end;

    if i > ts then (* encontrou a sentinela *)
        ind := 0;
    
end;

begin
    read(n);
    le_sequencia(s, n);
    procura_seq_igual(s, n, aux, ta, ind, tam);
    if ind <> 0 then
        writeln(ind, ' ', tam);
end.
