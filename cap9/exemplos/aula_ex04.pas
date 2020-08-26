program ex04_crivo_erastostenes; (* ARRUMAR *)

const MIN = 2; MAX = 1000;
type vetor = array [MIN..MAX] of boolean;
var primo: vetor;

procedure cria_vetor(var primo: vetor);
var i: longint;
begin
    for i := MIN to MAX do
        primo[i] := true;
end;

procedure remove_multiplos(var v: vetor; num: longint);
var j: longint;
begin
    j := num + num;
    while j <= MAX do
    begin
        v[j] := false;
        j := j + num;
    end;
end;

procedure checa_primo(var v: vetor);
var i: longint;
begin
    for i := MIN to round(sqrt(MAX)) do
        if v[i] then
            remove_multiplos(primo, i);
end;

procedure imprime_primos(var v: vetor);
var i: longint;
begin
    for i := MIN to MAX do
        if v[i] then
            write(i, ' ');
    writeln;
end;

begin
    cria_vetor(primo);
    checa_primo(primo);
    writeln('Numeros primos no intervalo de ', MIN, ' a ', MAX, ':');
    imprime_primos(primo);
end.
