program ex07;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of integer;
     coord = record
         x: integer;
         y: integer;
     end;
var mat: matriz;
    n: integer;
    sup_esq, inf_dir: coord;

procedure le_matriz(var mat: matriz; n: integer);
(* Le matriz *)
var i, j: integer;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(mat[i, j]);
end;

procedure imprime_coord(c: coord);
(* Imprime coordenadas da maneira: (coord.x, coord.y) *)
begin
    write('(', c.x, ',', c.y, ')');
end;

function apenas_um(var mat: matriz; n: integer;
                   lin_ini, col_ini, tam: integer): boolean;
(* Retorna TRUE se a matriz tem apenas 1's e FALSE caso contrario *)
var i, j, lin_fim, col_fim: integer; verifica: boolean;
begin
    lin_fim := lin_ini + tam - 1;
    col_fim := col_ini + tam - 1;

    if (lin_fim > n) or (col_fim > n) then
        verifica := false
    else
    begin
        verifica := true;
        i := lin_ini;
        while (i <= lin_fim) and verifica do
        begin
            j := col_ini;
            while (j <= col_fim) and verifica do
            begin
                if mat[i, j] <> 1 then
                    verifica := false;
                j := j + 1;
            end;
            i := i + 1;
        end;
    end;

    apenas_um := verifica;    
end;

procedure encontra_maior_submatriz(var mat: matriz; n: integer; 
                                   var sup_esq, inf_dir: coord);
(* Encontra as coordenadas da maior submatriz formada apenas por 1's *)
var i, j, tam, maior: integer;
begin
    maior := 1;

    for tam := 2 to n do
        for i := 1 to n do
            for j := 1 to n do
                if (apenas_um(mat, n, i, j, tam)) and (tam > maior) then
                begin
                    maior := tam;
                    sup_esq.x := i;
                    sup_esq.y := j;
                    inf_dir.x := i + tam - 1;
                    inf_dir.y := j + tam - 1;
                end;
end;

begin
    read(n);
    le_matriz(mat, n);
    encontra_maior_submatriz(mat, n, sup_esq, inf_dir);
    write('Coordenadas: ');
    imprime_coord(sup_esq);
    write(' e ');
    imprime_coord(inf_dir);
    writeln;
end.
