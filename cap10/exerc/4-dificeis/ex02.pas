program ex02;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;
     vetor = array [1..MAX] of longint;
var n, m, k, maior, cidade, i, num: longint;
    mat: matriz;
    vet: vetor;
    verifica: boolean;

procedure le_vetor(var vet: vetor; m: longint);
var i: longint;
begin
    for i := 1 to m do
        read(vet[i]);
end;
    
procedure le_matriz(var mat: matriz; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(mat[i, j]);
end;

function num_estradas_saem(k: longint; var mat: matriz; n: longint): longint;
var j, soma: longint;
begin
    soma := 0;
    for j := 1 to n do
        soma := soma + mat[k, j];
    
    num_estradas_saem := soma - 1;
end;

function num_estradas_chegam(k: longint; var mat: matriz; n: longint): longint;
var i, soma: longint;
begin
    soma := 0;
    for i := 1 to n do
        soma := soma + mat[i, k];

    num_estradas_chegam := soma - 1;
end;

function eh_mao_dupla(k, i: longint; var mat: matriz; n: longint): boolean;
begin
    writeln('verificando ', i, ' para ', k);
    if (mat[i, k] = 1) and (mat[k, i] = 1) then
        eh_mao_dupla := true
    else
        eh_mao_dupla := false;
end;

begin
    read(n);
    le_matriz(mat, n);

    (* LETRA A
    read(k);
    writeln('Numero de estradas que saem de ', k, ':');
    writeln(num_estradas_saem(k, mat, n));
    writeln('Numero de estradas que chegam de ', k, ':');
    writeln(num_estradas_chegam(k, mat, n));
    *)

    (* LETRA B
    cidade := 1;
    maior := num_estradas_chegam(1, mat, n);
    for i := 2 to n do
    begin
        num := num_estradas_chegam(i, mat, n);
        if num > maior then
        begin
            maior := num;
            cidade := i;
        end;
    end;
    writeln('Na cidade ', cidade, ' chegam o maior numero de estradas');
    *)

    (* LETRA C
    for k := 1 to n do
    begin
        verifica := true;
        while (i <= n) and verifica do
        begin
            if ((mat[i, k] = 1) or (mat[k, i] = 1)) and not eh_mao_dupla(k, i, mat, n) then
                verifica := false;
            i := i + 1;
        end;

        if verifica then
            writeln('Todas as ligacoes entre a cidade ', k,' e as outras sao de mao dupla');
    end;
    *)

    (* LETRA D *)
    (* LETRA E *)

    (* LETRA F
    read(m);
    le_vetor(vet, m);
    verifica := true;
    while (i <= m-1) and verifica do
    begin
        if mat[vet[i], vet[i+1]] = 0 then
            verifica := false;
        i := i + 1;
    end;

    if verifica then
        writeln('possivel')
    else
        writeln('impossivel');
    *)
end.
