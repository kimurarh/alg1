program p2018_2_q1;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
    tam: longint;

procedure le_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
    tam := 0;
    read(num);
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num;
        read(num);
    end;
end;

procedure cria_vetor_aux(var aux: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        aux[i] := 0;
end;

function acha_menor(var v: vetor; tam: longint; var aux: vetor): longint;
var i, menor, pos_menor: longint;
begin
    (* encontra o primeiro valor que nao foi utilizado e define como o menor *)
    pos_menor := 1;
    while aux[pos_menor] = 1 do
        pos_menor := pos_menor + 1;
    menor := v[pos_menor];

    for i:= 2 to tam do
        if (v[i] < menor) and (aux[i] = 0) then
        begin
            menor := v[i];
            pos_menor := i;
        end;
    acha_menor := menor;
    aux[pos_menor] := 1;
end;

function acha_maior(var v: vetor; tam: longint; var aux: vetor): longint;
var i, maior, pos_maior: longint;
begin
    (* encontra o primeiro valor que nao foi utilizado e define como o maior *)
    pos_maior := 1;
    while aux[pos_maior] = 1 do
        pos_maior := pos_maior + 1;
    maior := v[pos_maior];

    for i:= 2 to tam do
        if (v[i] > maior) and (aux[i] = 0) then
        begin
            maior := v[i];
            pos_maior := i;
        end;
    acha_maior := maior;
    aux[pos_maior] := 1;
end;

function eh_balanceada(var v: vetor; tam: longint): boolean;
var i, soma, somaInicial: longint;
    aux: vetor;
begin
    eh_balanceada := false;
    if tam mod 2 = 0 then (* tem uma quantidade par de elementos *)
    begin
        cria_vetor_aux(aux, tam); (* indica quais numeros ja foram pegados *)
        i := 2;
        somaInicial := acha_menor(v, tam, aux) + acha_maior(v, tam, aux);
        soma := somaInicial;
        while (i <= tam div 2) and (somaInicial = soma) do
        begin
            soma := acha_menor(v, tam, aux) + acha_maior(v, tam, aux);
            i := i + 1;
        end;

        if i > tam div 2 then
            eh_balanceada := true;
    end;
end;

begin
    le_vetor(v, tam);
    if eh_balanceada(v, tam) then
        writeln('Sim, eh balanceada')
    else
        writeln('Nao eh balanceada');
end.
