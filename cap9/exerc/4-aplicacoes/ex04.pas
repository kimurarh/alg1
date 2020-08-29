program ex04;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v1, v2, v3: vetor;
    n1, n2, n3, pos_ini, pos_fim: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i], ' ');
    writeln;
end;

procedure ajustar_vetor(var v: vetor; var tam: longint; pos_ini, pos_fim, ajuste: longint);
var i: longint;
begin
    if ajuste < 0 then (* seq. nova eh menor que a antiga *)
        for i := pos_fim + 1 to tam do
            v[i + ajuste] := v[i]
    else (* seq. nova eh maior que a antiga *)
        for i := tam downto pos_fim + 1 do
            v[i + ajuste] := v[i];
    tam := tam + ajuste;
end;

procedure substitui(var v2: vetor; n2: longint; var v3: vetor; n3: longint; pos_ini, pos_fim: longint; var v1: vetor; var n1: longint);
var i, j, ajuste: longint;
begin
    if n3 <> n2 then (* seq. nova tem tamanho diferente da antiga *)
    begin
        ajuste := n3 - n2;
        ajustar_vetor(v1, n1, pos_ini, pos_fim, ajuste);
    end;

    j := 1;
    for i := pos_ini to pos_fim do
    begin
        v1[i] := v3[j];
        j := j + 1;
    end;
end;

function verifica_restante(i: longint; var w: vetor; tw: longint; var v: vetor; tv: longint): boolean;
var j, cont: longint; ocorre: boolean;
begin
    if (i > tv - tw + 1) then
        verifica_restante := false (* restam menos elementos em V do que restam em W *)
    else
    begin
        ocorre := true;
        j := 1;
        cont := 1;
        while ocorre and (cont < tw) do
        begin
            i := i + 1;
            j := j + 1;
            if v[i] <> w[j] then
                ocorre := false
            else
                cont := cont + 1;
        end;
        verifica_restante := ocorre;
    end;
end;

function procura(var w: vetor; tw: longint; var v: vetor; tv: longint): longint;
var i: longint; ocorre: boolean;
begin
    v[tv + 1] := w[1]; (* sentinela *)
    ocorre := false;
    procura := 0;

    i := 1;
    while (i <= tv - tw + 1) and (not ocorre) do
    begin
        (* incrementa ate achar w[1] *)
        while v[i] <> w[1] do
            i := i + 1;

        if verifica_restante(i, w, tw, v, tv) then
        begin
            ocorre := true;
            procura := i;
        end;
        i := i + 1;
    end;
end;

begin
    read(n1, n2, n3);
    le_vetor(v1, n1);
    le_vetor(v2, n2);
    le_vetor(v3, n3);
    pos_ini := procura(v2, n2, v1, n1);
    if pos_ini <> 0 then
    begin
        pos_fim := pos_ini + n3 - 1;
        substitui(v2, n2, v3, n3, pos_ini, pos_fim, v1, n1);
        imprime_vetor(v1, n1);
    end;
end.
