program p2015_1;

const
    MAX = 100;
    PAREDE = -1;
    VAZIO = 0;
    LIN = 1;
    COL = 2;

type
    labirinto = array [1..MAX, 1..MAX] of integer;
    coordenada = array [1..2] of integer;
    fila = array [1..MAX] of coordenada;

var
    L: labirinto;
    tamL, entrada, saida, elem, vizinho: coordenada;
    F: fila; tamF: integer;
    distancia: integer;

procedure iniciaFila(var F: fila; var tamF: integer);
(* Inicializa a fila *)
begin
    tamF := 0;
end;

function filaVazia(var F: fila; tamF: integer): boolean;
(* Retorna TRUE se a fila estiver vazia e FALSE caso contrario *)
begin
    if tamF = 0 then
        filaVazia := true
    else
        filaVazia := false;
end;

procedure insereElemFila(var F: fila; var tamF: integer; coord: coordenada);
(* Insere uma coordenada na fila *)
begin
    tamF := tamF + 1;
    F[tamF] := coord;
end;

procedure retiraElemFila(var F: fila; var tamF: integer);
(* Remove um elemento da fila *)
var i: integer;
begin
    for i := 2 to tamF do
        F[i-1] := F[i];
    tamF := tamF - 1;
end;

procedure lerLabirinto(var L: labirinto; var tamL, entrada, saida: coordenada);
(* Le as dimensoes do labirinto, coordenadas da entrada, coordenadas da saida e a matriz do labirinto *)
var i, j: integer;
begin
    read(tamL[1], tamL[2]); (* Dimensoes do labirinto *)
    read(entrada[1], entrada[2]); (* Coordenadas da entrada *)
    read(saida[1], saida[2]); (* Coordenadas da saida *)

    for i := 1 to tamL[1] do
        for j := 1 to tamL[2] do
            read(L[i, j]);
end;

procedure marcaElemLabirinto(var L: labirinto; c: coordenada; var distancia: integer);
(* Marca um elemento no labirinto *)
begin
    L[c[1], c[2]] := distancia;
    distancia := distancia + 1;
end;

function valorElemLabirinto(var L: labirinto; c: coordenada): integer;
(* Retorna o valor do elemento na coordenada C do labirinto L *)
begin
    valorElemLabirinto := L[c[1], c[2]];
end;

procedure imprimeCoord(var c: coordenada);
begin
    writeln('(', c[1], ',', c[2], ')');
end;

function menorVizinho(var L: labirinto; c: coordenada): coordenada;
(* Retorna as coordenadas do vizinho que tem como valor 1 unidade a menos que a coordenada atual*)
var valor: integer;
begin
    valor := valorElemLabirinto(L, c);

    if L[c[1] - 1, c[2]] = valor - 1 then
    begin
        menorVizinho[1] := c[1] - 1;
        menorVizinho[2] := c[2];
    end
    else if L[c[1] + 1, c[2]] = valor - 1 then
    begin
        menorVizinho[1] := c[1] + 1;
        menorVizinho[2] := c[2];
    end
    else if L[c[1], c[2] - 1] = valor - 1 then
    begin
        menorVizinho[1] := c[1];
        menorVizinho[2] := c[2] - 1;
    end
    else if L[c[1], c[2] + 1] = valor - 1 then
    begin
        menorVizinho[1] := c[1];
        menorVizinho[2] := c[2] + 1;
    end
end;

procedure imprimeMenorCaminho(var L: labirinto; entrada: coordenada);
(* Imprime o menor caminho da entrada para a saida do labirinto *)
var c: coordenada;
begin
    c := entrada;
    repeat
        imprimeCoord(c);
        c := menorVizinho(L, c);  
    until valorElemLabirinto(L, c) = 1;
   imprimeCoord(c); (* saida *) 
end;

begin
    iniciaFila(F, tamF);
    distancia := 1;
    lerLabirinto(L, tamL, entrada, saida);

    marcaElemLabirinto(L, saida, distancia);
    insereElemFila(F, tamF, saida);

    repeat
        retiraElemFila(F, tamF);
        distancia := valorElemLabirinto(L, elem) + 1;
        (* para cada vizinho a ser marcado de elem *)
        begin
            marcaElemLabirinto(L, vizinho, distancia);
            insereElemFila(F, tamF, vizinho);
        end;
    until (filaVazia(F, tamF));

    imprimeMenorCaminho(L, entrada);
end.
