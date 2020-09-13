program ex09;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w, vc: vetor;
    tam, tw, tvc: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        read(v[i]);
end;

procedure cria_vetor_contagem(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        v[i] := 0;
end;

procedure imprime_num_distintos(var v: vetor; tam: longint);
var i: longint;
begin
    write('A sequência tem ', tam, ' numeros distintos: ');
    for i := 1 to tam-1 do
        write(v[i], ', ');
    writeln(v[tam]);
end;

procedure imprime_contagem(var v: vetor; tam: longint; var vc: vetor; tvc: longint);
var i: longint;
begin
    writeln('Ocorrencias:');
    for i:= 1 to tam do
        if vc[i] = 1 then
            writeln(v[i], ' ocorre ', vc[i], ' vez')
        else
            writeln(v[i], ' ocorre ', vc[i], ' vezes');
end;

function procura_elemento(elemento: longint; var v: vetor; tam: longint): longint;
var i: longint;
begin
    v[tam+1] := elemento; (* sentinela *)
    i := 1;
    while v[i] <> elemento do
        i := i + 1;

    procura_elemento := i;
end;

procedure separa_repetidos(var v: vetor; tam: longint; var w: vetor; var tw: longint; var vc: vetor; var tvc: longint);
var i, indice: longint;
begin
    (* W: vetor com os numeros sem repeticao *)
    (* Z: vetor com a quantidade de numeros *)
    tw := 1;
    tvc := 1;
    w[1] := v[1]; (* primeiro elemento *)
    vc[1] := 1;

    for i := 2 to tam do
    begin
        indice := procura_elemento(v[i], w, tw);
        if indice <= tw then
            vc[indice] := vc[indice] + 1
        else
        begin
            tw := tw + 1;
            w[tw] := v[i];
            tvc := tvc + 1;
            vc[tw] := 1;
        end;
    end;
end;


begin
    read(tam);
    le_vetor(v, tam);
    cria_vetor_contagem(vc, tam); (* vetor de zeros *)
    separa_repetidos(v, tam, w, tw, vc, tvc);
    imprime_num_distintos(w, tw);
    imprime_contagem(w, tw, vc, tvc);
end.
