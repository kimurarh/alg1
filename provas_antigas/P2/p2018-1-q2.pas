program p2018_1_q2;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, vNum, vCont: vetor;
    tam, taux: longint;

procedure le_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
    read(num);
    tam := 0;
    while (num <> 0) and (tam <> 100) do
    begin
        tam := tam + 1;
        v[tam] := num;
        read(num);
    end;
end;

procedure imprime_contagem(var vNum, vCont: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        writeln(vNum[i], ': ', vCont[i], ' vezes');
end;

function procura_digito(elem: longint; var v: vetor; tam: longint): longint;
var i: longint;
begin
    v[tam + 1] := elem;
    i := 1;
    while v[i] <> elem do
        i := i + 1;
    
    if i > tam then
        procura_digito := 0
    else
        procura_digito := i;
end;

procedure conta_digitos(var v: vetor; tam: longint;
                        var vNum, vCont: vetor; var taux: longint);
var i, indice: longint;
begin
    vNum[1] := v[1];
    taux := 1;
    vCont[1] := 1;

    for i := 2 to tam do
    begin
        indice := procura_digito(v[i], vNum, taux);
        if indice <> 0 then
            vCont[indice] := vCont[indice] + 1
        else
        begin
            taux := taux + 1;
            vNum[taux] := v[i];
            vCont[taux] := 1;
        end;
    end;
end;

begin
    le_vetor(v, tam);
    conta_digitos(v, tam, vNum, vCont, taux);
    imprime_contagem(vNum, vCont, taux);
end.
