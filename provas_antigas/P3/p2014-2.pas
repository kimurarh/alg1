program p2014_2;

const MAX = 100;
type matriz = array [1..MAX, 1..MAX] of longint;
var A, B, Z: matriz;
    n: longint;

procedure le_matriz(var m: matriz; lin, col: longint);
var i, j: longint;
begin
    for i := 1 to lin do
        for j := 1 to col do
            read(m[i, j]);
end;

procedure imprime_matriz(var m: matriz; n_lin, n_col: longint);
var i, j: longint;
begin
    for i := 1 to n_lin do
    begin
        for j := 1 to n_col do
            write(m[i, j], ' ');
        writeln;
    end;
end;

procedure proxima_posicao(n_lin, n_col: longint; var i, j: longint);
(* atualiza a posicao I e J, coloca I = J = 0 se estiver na ultima posicao *)
begin
    if j = n_col then
    begin
        i := i + 1;
        j := 1;
    end
    else
        j := j + 1;
end;

procedure acha_menor_elem(var m: matriz; n_lin, n_col, lin_ini, col_ini: longint; 
                          var menor_lin, menor_col: longint);
(* 
    Encontra as coordenadas do menor elemento da matriz M de dimensoes N_LIN e N_COL
    a partir da coordenadas LIN_INI e COL_INI
*)
var i, j: longint;
begin
    i := lin_ini;
    j := col_ini;
    menor_lin := lin_ini;
    menor_col := col_ini;

    while (i <= n_lin) and (j <= n_col) do
    begin
        if m[i, j] < m[menor_lin, menor_col] then
        begin
            menor_lin := i;
            menor_col := j;
        end;
        proxima_posicao(n_lin, n_col, i, j);
    end;
end;

procedure ordena_matriz(var m: matriz; n_lin, n_col: longint);
(* ordena a matriz em ordem crescente *)
var i, j, menor_lin, menor_col, temp: longint;
begin
    for i := 1 to n_lin do
        for j := 1 to n_col do
        begin
            acha_menor_elem(m, n_lin, n_col, i, j, menor_lin, menor_col);
            temp := m[i, j];
            m[i, j] := m[menor_lin, menor_col];
            m[menor_lin, menor_col] := temp;
        end;
end;

procedure matriz_uniao_ordenada(var m1, m2: matriz; n_lin, n_col: longint; var m3: matriz);
(* Cria uma matriz com o tamanho N_LIN e 2 x N_COL, contendo todos os elementos das matrizes M1 e M2 em ordem crescente *)
var i1, j1, i2, j2, i3, j3: longint;
begin
    i1 := 1; j1 := 1; i2 := 1; j2 := 1; i3 := 1; j3 := 1;

    while (i1 <= n_lin) and (i2 <= n_lin) do
    begin
        if m1[i1, j1] < m2[i2, j2] then
        begin
            m3[i3, j3] := m1[i1, j1];
            proxima_posicao(n_lin, n_col, i1, j1);
        end
        else
        begin
            m3[i3, j3] := m1[i2, j2];
            proxima_posicao(n_lin, n_col, i2, j2);
        end;
        proxima_posicao(n_lin, 2*n_col, i3, j3);
    end;

    (* copia restante da matriz que nao foi copiada por inteiro *)
    if i1 > n_lin then
        while i2 <= n_lin do
        begin
            m3[i3, j3] := m2[i2, j2];
            proxima_posicao(n_lin, n_col, i2, j2);
            proxima_posicao(n_lin, 2*n_col, i3, j3);
        end
    else
        while i1 <= n_lin do
        begin
            m3[i3, j3] := m1[i1, j1];
            proxima_posicao(n_lin, n_col, i1, j1);
            proxima_posicao(n_lin, 2*n_col, i3, j3);
        end;
end;

begin
    read(n);
    le_matriz(A, n, n);
    le_matriz(B, n, n);

    ordena_matriz(A, n, n);
    ordena_matriz(B, n, n);
    
    writeln('matriz A ordenada:');
    imprime_matriz(A, n, n);
    writeln;
    writeln('matriz B ordenada:');
    imprime_matriz(B, n, n);
    writeln;

    writeln('matriz Z:');
    matriz_uniao_ordenada(A, B, n, n, Z);
    imprime_matriz(Z, n, 2*n);
end.
