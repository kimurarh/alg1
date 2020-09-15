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

begin
    iniciaFila(F, tam F);
    distancia := 1;
    lerLabirinto(L, saida, distancia);
    insereElemFila(F, tamF, saida);

    repeat
        retiraElemFila(F, tamF, elem);
        distancia := valorElemLabirinto(L, elem) + 1;
        (* para cada vizinho a ser marcado de elem *)
        begin
            marcaElemLabirinto(L, vizinho, distancia);
            insereElemFila(F, tamF, vizinho);
        end;
    until (filaVazia(F, tamF));
    
    imprimeMenorCaminho(L, entrada);
end.
