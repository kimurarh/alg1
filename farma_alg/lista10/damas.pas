program damas;

const MAX = 8;
type matriz = array [1..MAX, 1..MAX] of longint;
     vetor = array [1..MAX+MAX] of longint;
var mat: matriz;
    vet_lin, vet_col, vet_move: vetor;
    tam: longint;

procedure le_tabuleiro(var mat: matriz);
var i, j: longint;
begin
    for i := 1 to MAX do
        for j := 1 to MAX do
            read(mat[i, j]);
end;

procedure imprime_possibilidade(var vet_lin, vet_col, vet_move: vetor; tam, acao: longint);
var i, cont: longint;
begin
    cont := 0;
    for i := 1 to tam do
    begin
        if vet_move[i] = acao then
        begin
            write(vet_lin[i], '-', vet_col[i], ' ');
            cont := cont + 1; 
        end;
    end;
    if cont = 0 then
        writeln('0')
    else
        writeln;
end;

function pode_tomar(i, j: longint; mat: matriz): boolean;
var verifica: boolean;
begin
    verifica := false;

    if (j = 1) or (j = MAX) then
    begin
        if (j = 1) and (mat[i+1, j+1] = 1) then
            verifica := true
        else if (j = MAX) and (mat[i+1, j-1] = 1) then
            verifica := true;
    end
    else
        if (mat[i+1, j+1] = 1) or (mat[i+1, j-1] = 1) then
            verifica := true;
        
    pode_tomar := verifica;
end;

function pode_mover(i, j: longint; mat: matriz): boolean;
var verifica: boolean;
begin
    verifica := false;

    if (j = 1) or (j = MAX) then
    begin
        if (j = 1) and (mat[i+1, j+1] = 0) then
            verifica := true
        else if (j = MAX) and (mat[i+1, j-1] = 0) then
            verifica := true;
    end
    else
        if (mat[i+1, j+1] = 0) or (mat[i+1, j-1] = 0) then
            verifica := true;
        
    pode_mover := verifica;
end;

procedure verifica_possibilidades(var mat: matriz; var vet_lin, vet_col, vet_move: vetor; 
                                  var tam: longint);
var i, j: longint;
begin
    for i := 1 to MAX do
        for j := 1 to MAX do
            if mat[i, j] = -1 then
            begin
                tam := tam + 1;
                vet_lin[tam] := i;
                vet_col[tam] := j;
                if pode_tomar(i, j, mat) then
                    vet_move[tam] := 1
                else if pode_mover(i, j, mat) then
                    vet_move[tam] := 2
                else
                    vet_move[tam] := 3;
            end;
end;

begin
    le_tabuleiro(mat);
    verifica_possibilidades(mat, vet_lin, vet_col, vet_move, tam);
    write('tomar: ');
    imprime_possibilidade(vet_lin, vet_col, vet_move, tam, 1);
    write('mover: ');
    imprime_possibilidade(vet_lin, vet_col, vet_move, tam, 2);
    write('ficar: ');
    imprime_possibilidade(vet_lin, vet_col, vet_move, tam, 3);
end.
