program verificar_eh_permutacao;

(* verificar se um vetor pode ter permutacoes --> nao tem nenhum valor repetido *)

const MAX = 200;
type vetor = array [1..MAX] of longint;
var tam: longint;
    v: vetor;

procedure le_vetor(var v: vetor; n: longint);
var i: longint;
begin
    for i:= 1 to n do
        read(v[i]);
end;

procedure zerar_vetor(var v: vetor; n: longint);
var i: longint;
begin
    for i:= 1 to n do
        v[i] := 0;
end;

function testa_permutacao(var v: vetor; n: longint): boolean;
var i: longint;
    aux: vetor;
    eh_permutacao: boolean;
begin
    zerar_vetor(aux, n);
    eh_permutacao := true;
    i := 1;

    while eh_permutacao and (i <= n) do
    begin
        if (v[i] >= 1) and (v[i] <= n) and (aux[v[i]] = 0) then
            aux[v[i]] := v[i]
        else
            eh_permutacao := false;
        i := i + 1;
    end;
    testa_permutacao := eh_permutacao;
end;

begin
    read(tam);
    le_vetor(v, tam);
    if testa_permutacao(v, tam) then
        writeln('sim')
    else
        writeln('nao');
end.
