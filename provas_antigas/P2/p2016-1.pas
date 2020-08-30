program p2016_1;

const MAX = 20; CORINI = 1; CORFIM = 30;
type cores = CORINI..CORFIM; (* faixa de valores, suntipo de integer *)
     vetor = array [1..MAX] of cores;
var v, w: vetor;
    n, cont_iguais, cont_dif, nVetores: longint;
    valido: boolean;

function eh_repetido(elem: longint; var v: vetor; tam: longint): boolean;
var i: longint;
begin
    v[tam+1] := elem;

    i := 1;
    while v[i] <> elem do
        i := i + 1;

    if i > tam then
        eh_repetido := false
    else
        eh_repetido := true;
end;

function le_vetor(var v: vetor; tam: longint): boolean;
var i: longint; valido: boolean;
begin
    valido := true;
    
    read(v[1]); (* primeira cor *)

    for i := 2 to tam do
    begin
        read(v[i]);
        if eh_repetido (v[i], v, i - 1) then
            valido := false; (* digitou uma cor invalida ou repetida *)
    end;

//    if not valido then
  //      writeln('entrada invalida');
    le_vetor := valido;
end;

function procura_pos(elem: longint; var v: vetor; tam: longint): longint;
var i: longint;
begin
    v[tam+1] := elem;
    
    i := 1;
    while v[i] <> elem do
        i := i + 1;
 
    if i > tam then
        procura_pos := 0
    else
        procura_pos := i;
end;

function conta_pos_dif(var v, w: vetor; tam: longint): longint;
var i, cont, indice: longint;
begin
    cont := 0;
    for i := 1 to tam do
    begin
        indice := procura_pos(v[i], w, tam);
        if (indice <> i) and (indice <> 0) then
            cont := cont + 1;
    end;
    conta_pos_dif := cont;
end;

function conta_pos_iguais(var v, w: vetor; tam: longint): longint;
var i, cont: longint;
begin
    cont := 0;
    for i := 1 to tam do
        if v[i] = w[i] then
            cont := cont + 1;
    conta_pos_iguais := cont;
end;

begin
    read(n);
    le_vetor(v, n);
    nVetores := 0;
    repeat
        valido := le_vetor(w, n);
        if not valido then
            writeln('entrada invalida')
        else
        begin
            nVetores := nVetores + 1;
            cont_iguais := conta_pos_iguais(v, w, n);
            cont_dif := 0;
            if cont_iguais <> n then
                cont_dif := conta_pos_dif(v, w, n);
            writeln('cores no lugar certo: ', cont_iguais, ', cores no lugar errado: ', cont_dif);
        end;
    until cont_iguais = n;
    writeln('Foram lidos ', nVetores, ' vetores validos');
end.
