program ex02;

const MAX = 200;
type vetor = array [1..MAX] of longint;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        write(v[i], ' ');
    writeln;
end;

procedure novo_vetor(var v1: vetor; var tv1: longint; var v2: vetor; tv2: longint);
var i: longint;
begin
    tv1 := tv2 + 1;
    v1[1] := 1;
    v1[tv1] := 1;

    if tv1 > 2 then
        for i := 2 to tv2 do
            v1[i] := v2[i-1] + v2[i];
end;

procedure triangulo_pascal;
var par, impar: vetor;
    tpar, timpar, cont: longint;
begin
    timpar := 1;
    impar[1] := 1; (* primeiro vetor *)
    writeln(impar[1]);
    cont := 2;

    while cont <= 10 do
    begin
        if cont mod 2 = 0 then
        begin (* gera novo vetor par *)
            novo_vetor(par, tpar, impar, timpar);
            imprime_vetor(par, tpar);
        end
        else
        begin (* gera novo vetor impar *)
            novo_vetor(impar, timpar, par, tpar);
            imprime_vetor(impar, timpar);
        end;
        cont := cont + 1;
    end;
end;



begin
    triangulo_pascal;
end.
