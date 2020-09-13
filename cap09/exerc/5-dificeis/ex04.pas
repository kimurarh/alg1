program ex04;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w, r: vetor;
    tv, tw, tr: longint;

procedure le_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
    read(num);
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num;
        read(num);
    end;
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i], ' ');
    writeln;
end;

procedure copia_restante(var v: vetor; tam: longint; indice: longint;
                         var r: vetor; var tr: longint);
var i: longint;
begin
    for i := indice to tam do
    begin
        tr := tr + 1;
        r[tr] := v[i];
    end;
end;

procedure intercala_vetores(var v: vetor;     tv: longint;
                            var w: vetor;     tw: longint;
                            var r: vetor; var tr: longint);
var i, j: longint;
begin
    i := 1;
    j := 1;
    tr := 0;

    while (i <= tv) and (j <= tw) do
    begin
        tr := tr + 1;
        if v[i] < w[j] then
        begin
            r[tr] := v[i];
            i := i + 1;
        end
        else
        begin
            r[tr] := w[j];
            j := j + 1;
        end;
    end;
    
    (* copia o restante do vetor que nao foi copiado por inteiro *)
    if i > tv then 
        copia_restante(w, tw, j, r, tr)
    else
        copia_restante(v, tv, i, r, tr);
end;

procedure ordena_vetor(var v: vetor; tam: longint);
var i, j, pos_menor, temp: longint;
begin 
    for i := 1 to tam - 1 do
    begin
        (* acha o menor, a partir da posicao i+1 *)
        pos_menor := i;
        for j := i + 1 to tam do
            if v[j] < v[pos_menor] then
                pos_menor := j;
        (* troca de lugar com o menor *)
        temp := v[i];
        v[i] := v[pos_menor];
        v[pos_menor] := temp;
    end;
end;

begin
    le_vetor(v, tv);
    le_vetor(w, tw);
    ordena_vetor(v, tv);
    ordena_vetor(w, tw);
    intercala_vetores(v, tv, w, tw, r, tr);
    imprime_vetor(r, tr);
end.
