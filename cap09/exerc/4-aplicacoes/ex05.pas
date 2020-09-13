program ex05;

const MAX = 200;
type vetor = array [0..MAX] of longint;
var pai1, pai2, filho1, filho2: vetor;
    corte1, corte2: longint;

procedure imprime(var v: vetor);
var i: longint;
begin
    for i := 0 to v[0] do
        write(v[i], ' ');
    writeln;
end;

procedure le_vetor(var v: vetor);
var i: longint;
begin
    read(v[0]); (* tamanho *)
    for i := 1 to v[0] do
        read(v[i]);
end;

procedure gera_filhos(var pai1: vetor; corte1: longint; var pai2: vetor; corte2: longint; var filho1, filho2: vetor);
var i, j: longint;
begin
    filho1[0] := (corte1 - 1) + (pai2[0] - corte2 + 1);
    filho2[0] := (corte2 - 1) + (pai1[0] - corte1 + 1);

    for i := 1 to corte1 - 1 do
        filho1[i] := pai1[i];

    j := corte1;
    for i:= corte2 to pai2[0] do
    begin
        filho1[j] := pai2[i];
        j := j + 1;
    end;

    for i := 1 to corte2 - 1 do
        filho2[i] := pai2[i];

    j := corte2;
    for i:= corte1 to pai1[0] do
    begin
        filho2[j] := pai1[i];
        j := j + 1;
    end;
end;


begin
    le_vetor(pai1);
    le_vetor(pai2);
    read(corte1, corte2);
    gera_filhos(pai1, corte1, pai2, corte2, filho1, filho2);
    imprime(filho1);
    imprime(filho2);
end.
