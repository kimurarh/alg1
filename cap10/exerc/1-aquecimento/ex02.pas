program ex02;

const MAX_L = 50; MAX_C = 50;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var mat: matriz;
    n: longint;

procedure le_matriz_quadrada(var mat: matriz; var n: longint);
var i, j: longint;
begin
    read(n);
    for i := 1 to n do
        for j := 1 to n do
            read(mat[i, j]);
end;

procedure imprime_matriz_quadrada(var mat: matriz; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
    begin
        for j := 1 to n do
            write(mat[i, j], ' ');
        writeln;
    end;
end;

function eh_permutacao(var mat: matriz; n: longint): boolean;
var i, j, cont: longint; verifica: boolean;
begin
    verifica := true;
    
    i := 1;
    while (i <= n) and verifica do
    begin
        j := 1;
        cont := 0;
        while (j <= n) and verifica do
        begin
            if mat[i, j] = 1 then
                cont := cont + 1
            else if mat[i, j] <> 0 then
                verifica := false;
            j := j + 1;
        end;

        if cont <> 1 then
            verifica := false;

        i := i + 1;
    end;
    eh_permutacao := verifica;
end;

begin
    le_matriz_quadrada(mat, n);
    if eh_permutacao(mat, n) then
        writeln('sim, eh matriz permutacao')
    else
        writeln('nao eh matriz permutacao');
end.
