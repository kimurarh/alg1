program ex03;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;
var mat: matriz;
    n, m: longint;

procedure le_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j]);
end;

procedure imprime_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
    begin
        for j := 1 to m do
            write(mat[i, j], ' ');
        writeln;
    end;
end;

function inicio_palavra(i, j: longint; var mat: matriz; n, m: longint): boolean;
var verifica: boolean;
begin
    verifica := false;
    if (i = 1) or (i = n) or (j = 1) or (j = m) then
    begin
        if i = 1 then
        begin
            if j = 1 then
            begin
                if (mat[i+1, j] = 0) or (mat[i, j+1] = 0) then
                    verifica := true;
            end
            else if j = m then
            begin
                if (mat[i+1, j] = 0) then
                    verifica := true;
            end
            else if (mat[i+1, j] = 0) or ((mat[i, j-1] = -1) and (mat[i, j+1] = 0)) then
                verifica := true
        end
        else if i = n then
        begin
            if j = 1 then
            begin
                if mat[i, j+1] = 0 then
                    verifica := true
            end
            else if j = m then
                verifica := false
            else if (mat[i, j-1] = -1) and (mat[i, j+1] = 0) then
                verifica := true;
        end
        else
            if (j = 1) and ((mat[i, j+1] = 0) or ((mat[i-1, j] = -1) and (mat[i+1, j] = 0))) then
                verifica := true
            else if (j = m) and ((mat[i-1, j] = -1) and (mat[i+1, j] = 0)) then
                verifica := true
    end
    else
        if ((mat[i-1, j] = -1) and (mat[i+1, j] = 0)) or ((mat[i, j-1] = -1) and (mat[i, j+1] = 0)) then
            verifica := true;

    inicio_palavra := verifica;
end;

procedure numera_palavras(var mat: matriz; n, m: longint);
var i, j, cont: longint;
begin
    cont := 0;

    for i := 1 to n do
        for j := 1 to m do
            if (mat[i, j] = 0) and inicio_palavra(i, j, mat, n, m) then
            begin
                cont := cont + 1;
                mat[i, j] := cont;
            end;
end;

begin
    read(n, m);
    le_matriz(mat, n, m);
    numera_palavras(mat, n, m);
    imprime_matriz(mat, n, m);
end.
