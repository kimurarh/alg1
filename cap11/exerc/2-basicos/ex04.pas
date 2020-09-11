program ex04;

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
     bd = array [0..MAX] of tipo_pessoa;

var v: bd;
    n, i: integer;
    
procedure le_dados(var p: tipo_pessoa);
begin
    readln(p.nome);
    readln(p.ddd);
    readln(p.telefone);
    read(p.nascimento.dia);
    read(p.nascimento.mes);
    readln(p.nascimento.ano);
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
        end;
        troca(v, i, pos_menor);
    end;
end;

procedure insere_ordenado(var v: bd; var n: integer);
var i: integer;
begin
    le_dados(v[0]);

    i := n;
    while v[0].nome[1] < v[i].nome[1] do (* verifica apenas a primeira letra do nome *)
    begin
        troca(v, i+1, i);
        i := i - 1;
    end;

    troca(v, i+1, 0);
    n := n + 1;
end;


begin
    readln(n);
    for i := 1 to n do
        le_dados(v[i]);
    ordena_por_nome(v, n);
    imprime_dados(v, n);
    writeln('-------------------------------');
    insere_ordenado(v, n);
    imprime_dados(v, n);
end.
