program ex01;

const MAX_L = 50; MAX_C = 50;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var A, B: matriz;
    n1, n2, m1, m2: longint;

procedure le_matriz(var mat: matriz; var n, m: longint);
var i, j: longint;
begin
    read(n, m); (* dimensoes da matriz *)
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

function eh_transposta(var A: matriz; n1, m1: longint;
                       var B: matriz; n2, m2: longint): boolean;
var i, j: longint; igual: boolean;
begin
    if (n1 <> m2) or (m1 <> n2) then
        igual := false
    else
    begin
        igual := true;
        i := 1;
        while (i <= n1) and igual do
        begin
            j := 1;
            while (j <= m1) and igual do
            begin
                if A[i, j] <> B[j, i] then
                    igual := false;
                j := j + 1;
            end;
            i := i + 1;
        end;
    end;
    eh_transposta := igual;
end;


begin
    le_matriz(A, n1, m1);
    writeln('Matriz A:');
    imprime_matriz(A, n1, m1);
    le_matriz(B, n2, m2);
    writeln('Matriz B:');
    imprime_matriz(b, n2, m2);
    if eh_transposta(A, n1, m1, B, n2, m2) then
        writeln('sim, eh transposta')
    else
        writeln('nao eh transposta');
end.
