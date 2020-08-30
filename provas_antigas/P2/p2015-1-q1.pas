program p2015_1_q1;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
    tam, i: longint;

procedure imprime(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i], ' ');
    writeln;
end;

procedure le_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
    tam := 0;
    read(num);
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num;
        read(num);
    end;
end;

procedure sorteia(var v: vetor; tam: longint);
var ind: longint;
begin
    repeat
        ind := random(tam + 1);
    until v[ind] > 0;
    writeln(v[ind]);
end;

begin
    Randomize;
    le_vetor(v, tam);
    for i := 1 to tam do
        if v[i] < 0 then
            sorteia(v, i - 1);
end.
