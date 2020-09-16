program p2014_1;

const MAX = 20000;
type datas = array [1..MAX, 1..MAX] of longint;
var d: datas;
    n: longint;

procedure le_datas(var d: datas; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to 3 do
            read(d[i, j]);
end;

procedure imprime_datas(var d: datas; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
    begin
        for j := 1 to 3 do
            write(d[i, j], ' ');
        writeln;
    end;
end;

function data_mais_recente(var d: datas; n, data1, data2: longint): boolean;
(* Retorna TRUE se a data1 for mais recente que a data2 e FALSE caso contrario *)
begin
    data_mais_recente := false;
    if d[data1, 3] < d[data2, 3] then
        data_mais_recente := true
    else if d[data1, 3] = d[data2, 3]  then
    begin
        if d[data1, 2] < d[data2, 2] then
            data_mais_recente := true
        else if (d[data1, 2] = d[data2, 2]) and (d[data1, 1] < d[data2, 1]) then
            data_mais_recente := true
    end;
end;

procedure troca_data(var d: datas; n, data1, data2: longint);
(* Troca as posicoes das datas data1 e data2*)
var i, temp: longint;
begin
    for i := 1 to 3 do
    begin
        temp := d[data1, i];
        d[data1, i] := d[data2, i];
        d[data2, i] := temp;
    end;
end;

procedure ordena_datas(var d: datas; n: longint);
(* Ordena as datas em ordem cronologica crescente *)
var i, j, pos_mais_recente: longint;
begin
    for i := 1 to n-1 do
    begin
        pos_mais_recente := i;
        for j := i + 1 to n do
            if data_mais_recente(d, n, j, pos_mais_recente) then
                pos_mais_recente := j;
        troca_data(d, n, i, pos_mais_recente);
    end;
end;

begin
    read(n);
    le_datas(d, n);
    ordena_datas(d, n);
    imprime_datas(d, n);
end.
