program p2018_1_q1;

const MAX = 100;
type vetor = array [1..MAX] of integer;
var v: vetor;
    tam, posicao, num: longint;

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

procedure remove(var v: vetor; var tam: longint; pos_ini, num: longint);
var i, pos_fim: longint;
begin
    pos_fim := pos_ini + num - 1;
    
    if pos_fim <= tam then
    begin
        if pos_fim < tam then
            for i := pos_fim + 1 to tam do
                v[i-num] := v[i];
        tam := tam - num
    end;
end;

begin
    read(tam);
    le_vetor(v, tam);
    read(posicao, num);
    remove(v, tam, posicao, num);
    imprime_vetor(v, tam);
end.
