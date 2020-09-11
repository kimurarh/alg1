program ex03;

const MAX = 100;
type matriz = array [1..MAX, 1..MAX] of integer;
var n_lin, n_col, l_ini, c_ini, l_fim, c_fim: integer; (* dimensoes da matriz *)
    m: matriz;

procedure le_matriz(var m: matriz; lin, col: integer);
var i, j: integer;
begin
    for i := 1 to lin do
        for j := 1 to col do
            read(m[i, j]);
end;

procedure acha_maior_sequencia(var m: matriz; var n_lin, n_col, l_ini, c_ini, l_fim, c_fim: integer);
var i, j, cont_max, elem_ant_lin, elem_ant_col, cont_l, cont_c: integer;
begin
    cont_max := 1;
    l_ini := 1; c_ini := 1; l_fim := 1; c_fim := 1;
    
    for i := 1 to n_lin do
    begin
        elem_ant_lin := m[i, 1];
        elem_ant_col := m[1, i];
        cont_l := 1;
        cont_c := 1;
        for j := 2 to n_col do
        begin
            (* verifica repeticao nas linhas *)
            if m[i, j] = elem_ant_lin then
                cont_l := cont_l + 1
            else
            begin
                if cont_l > cont_max then
                begin
                    l_fim := i;
                    l_ini := i;
                    c_fim := j - 1;
                    c_ini := j - cont_l;
                    cont_max := cont_l;
                end;
                cont_l := 1;
                elem_ant_lin := m[i, j];
            end;

            (* verifica repeticao nas colunas *)
            if m[j, i] = elem_ant_col then
                cont_c := cont_c + 1
            else
            begin
                if cont_c > cont_max then
                begin
                    c_fim := i;
                    c_ini := i;
                    l_fim := j - 1;
                    l_ini := j - cont_c;
                    cont_max := cont_c;
                end;
                cont_c := 1;
                elem_ant_col := m[j, i];
            end;
        end;

        (* verifica antes de mudar de linha e coluna *)
       if cont_l > cont_max then
        begin
            l_fim := i;
            l_ini := i;
            c_fim := j;
            c_ini := j - cont_l + 1;
            cont_max := cont_l;
        end;

        if cont_c > cont_max then
        begin
            c_fim := i;
            c_ini := i;
            l_fim := j;
            l_ini := j - cont_c + 1;
            cont_max := cont_c;
        end;
    end;
end;

begin
    read(n_lin, n_col);
    le_matriz(m, n_lin, n_col);
    acha_maior_sequencia(m, n_lin, n_col, l_ini, c_ini, l_fim, c_fim);
    writeln(l_ini, ' ', c_ini);
    writeln(l_fim, ' ', c_fim);
end.
