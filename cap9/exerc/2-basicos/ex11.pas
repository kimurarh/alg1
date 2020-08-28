program ex11;

const MAX = 20;
type regimentos = array [1..MAX] of longint;
var r: regimentos;
    tam, front, cont: longint;

procedure cria_regimentos(var r: regimentos; tam: longint);
var i, qnt: longint;
begin
    qnt := 1000;
    for i := 1 to tam do
    begin
        r[i] := qnt;
        qnt := qnt - 50;
    end;
end;

procedure imprime_regimentos(var v: regimentos; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(r[i], ' ');
    writeln;
end;

function regimento_enviado(var r: regimentos; tam: longint): longint;
var i, maior, posMaior: longint;
begin
    maior := r[1];
    posMaior := 1;
    for i := 2 to tam do
        if r[i] > maior then
        begin
            posMaior := i;
            maior := r[i];
        end;
    r[posMaior] := 0;
    regimento_enviado := posMaior;
end;

procedure aumenta_regimentos(var r: regimentos; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        if i = 5 then
            r[i] := r[i] + 30
        else
            r[i] := r[i] + 50;
end;

begin
    tam := MAX;
    cria_regimentos(r, tam);
    cont := 1;
    repeat
        writeln('------ SEMANA ', cont, ' ------') ;
        front := regimento_enviado(r, tam);
        writeln('Regimento enviado: ', front);
        writeln('Status dos regimentos');
        imprime_regimentos(r, tam);
        aumenta_regimentos(r, tam);
        cont := cont + 1;
    until front = 5;
end.
