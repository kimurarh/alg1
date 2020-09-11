program ex01;

const MAX = 200;
type data_nascimento = record
                            dia: integer;
                            mes: integer;
                            ano: integer;
                       end;
     tipo_pessoa = record
                        nome: string;
                        ddd: integer;
                        telefone: string;
                        nascimento: data_nascimento; 
                   end;
     bd = array [1..MAX] of tipo_pessoa;

var v: bd;
    n: integer;
    
procedure le_dados(var v: bd; n: integer);
var i: integer;
begin
    for i := 1 to n do
    begin
        readln(v[i].nome);
        readln(v[i].ddd);
        readln(v[i].telefone);
        read(v[i].nascimento.dia);
        read(v[i].nascimento.mes);
        readln(v[i].nascimento.ano);
    end;
end;

procedure imprime_dados(var v: bd; n: integer);
var i: integer;
begin
    for i := 1 to n do
        writeln(v[i].nome, ', ', v[i].ddd, ', ', v[i].telefone, ', ', 
                v[i].nascimento.dia, '/', v[i].nascimento.mes, '/', v[i].nascimento.ano)
end;

procedure troca(var v: bd; i, j: integer);
var aux: tipo_pessoa;
begin
    with aux do
    begin
        nome := v[i].nome;
        ddd := v[i].ddd;
        telefone := v[i].telefone;
        nascimento.dia := v[i].nascimento.dia;
        nascimento.mes := v[i].nascimento.mes;
        nascimento.ano := v[i].nascimento.ano;
    end;

    with v[i] do
    begin
        nome := v[j].nome;
        ddd := v[j].ddd;
        telefone := v[j].telefone;
        nascimento.dia := v[j].nascimento.dia;
        nascimento.mes := v[j].nascimento.mes;
        nascimento.ano := v[j].nascimento.ano;
    end;

    with v[j] do
    begin
        nome := aux.nome;
        ddd := aux.ddd;
        telefone := aux.telefone;
        nascimento.dia := aux.nascimento.dia;
        nascimento.mes := aux.nascimento.mes;
        nascimento.ano := aux.nascimento.ano;
    end;
end;

procedure ordena_por_nome(var v: bd; n: integer);
var i, j, k, pos_menor: integer;
begin
    for i := 1 to n-1 do
    begin
        pos_menor := i;
        for j := i + 1 to n do
        begin
            k := 1;
            if v[j].nome[k] <= v[pos_menor].nome[k] then
            begin
                while (v[j].nome[k] = v[pos_menor].nome[k]) and (k < length(v[j].nome)) do
                    k := k + 1;
                if v[j].nome[k] < v[pos_menor].nome[k] then
                    pos_menor := j;
            end;
            (*
            if v[j].nome[1] < v[pos_menor].nome[1] then
                pos_menor := j;
            *)
        end;
        troca(v, i, pos_menor);
    end;
end;


begin
    readln(n);
    le_dados(v, n);
    ordena_por_nome(v, n);
    imprime_dados(v, n);
end.
