program equacoes_lineares;

const MAX_L = 200; MAX_C = 200;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
     vetor = array [1..MAX_C] of longint;
var n, m: longint;
    resultado, direita: vetor;
    sistema: matriz;

procedure le_vetor(var v:vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

procedure le_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j]);
end;

function verifica_sistema(var sistema: matriz; n, m: longint; var direita, resultado: vetor): boolean;
var i, j, equacao: longint; verifica: boolean;
begin
    verifica := true;
    i := 1;
    while (i <= n) and verifica do
    begin
        equacao := 0;
        for j := 1 to m do
            equacao := equacao + sistema[i, j] * resultado[j];

        if equacao <> direita[i] then
            verifica := false;
        i := i + 1;
    end;
    verifica_sistema := verifica;
end;

begin
    read(n, m); (* Le tamanho da matriz *)
    le_vetor(resultado, m); (* Le vetor de resultados *)
    le_matriz(sistema, n, m); (* Le matriz de coeficientes *)
    le_vetor(direita, n); (* Le lado direito das equacoes *)
    if verifica_sistema(sistema, n, m, direita, resultado) then
        writeln('sim')
    else
        writeln('nao');
end.
