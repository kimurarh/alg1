program matriz_triangular;

const MAX = 100;
type matriz = array [1..MAX, 1..MAX] of longint;
var mat: matriz;
    tam: longint;

procedure imprime_matriz(var mat: matriz; tam: longint);
var i, j: longint;
begin
    for i := 1 to tam do
    begin
        for j := 1 to tam do
            write(mat[i, j], ' ');
        writeln;
    end;
end;

procedure le_matriz_quadrada(var mat: matriz; var tam: longint);
var i, j: longint;
begin
    read(tam);
    for i := 1 to tam do
        for j := 1 to tam do
            read(mat[i, j]);
end;

function eh_triangular(var mat: matriz; tam: longint): boolean;
var i, j: longint; verifica: boolean;
begin
    verifica := true;
    (* verifica os elementos acima da diagonal principal *)
    i := 1;
    while (i < tam) and verifica do
    begin
        j := i + 1;
        while (j <= tam) and verifica do
        begin
            if mat[i, j] <> 0 then
                verifica := false;
            j := j + 1;
        end;
        i := i + 1;
    end;

    (* verifica os elementos abaixo da diagonal principal *)
    if not verifica then
    begin
        verifica := true;
        i := 1;
        while (i < tam) and verifica do
        begin
            j := i + 1;
            while (j <= tam) and verifica do
            begin
                if mat[j, i] <> 0 then
                    verifica := false;
                j := j + 1;
            end;
            i := i + 1;
        end;
    end;

    eh_triangular := verifica;
end;

begin
    le_matriz_quadrada(mat, tam);
    if eh_triangular(mat, tam) then
        writeln('sim')
    else
        writeln('nao');
end.
