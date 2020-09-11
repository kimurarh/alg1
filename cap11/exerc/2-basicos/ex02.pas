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
    n, i: integer;
    
procedure le_dados_pessoa(var pessoa: tipo_pessoa);
begin
    writeln('Digite o nome da pessoa');
    readln(pessoa.nome);
    writeln('Digite o ddd da pessoa');
    readln(pessoa.ddd);
    writeln('Digite o telefone da pessoa');
    readln(pessoa.telefone);
    writeln('Digite a data de nascimento da pessoa');
    read(pessoa.nascimento.dia);
    read(pessoa.nascimento.mes);
    readln(pessoa.nascimento.ano);
end;

function data_mais_recente(var d1, d2: data_nascimento): boolean;
begin
    if d1.ano > d2.ano then
        data_mais_recente := true
    else if d1.ano < d2.ano then
        data_mais_recente := false
    else (* d1.ano = d2.ano *)
    begin
        if d1.mes > d2.mes then
            data_mais_recente := true
        else if d1.mes < d2.mes then
            data_mais_recente := false
        else (* d1.mes = d2.mes *)
        begin
            if d1.dia > d2.dia then
                data_mais_recente := true
            else
                data_mais_recente := true;
        end;
    end;
end;

procedure imprime_mais_jovem(var v: bd; n: integer);
var i, mais_jovem: integer;
begin
    mais_jovem := 1;

    for i := 2 to n do
        if data_mais_recente(v[i].nascimento, v[mais_jovem].nascimento) then
            mais_jovem := i;
    
    writeln(v[mais_jovem].nome);
end;


begin
    writeln('Digite qual a quantidade de pessoas: ');
    readln(n);
    for i := 1 to n do
        le_dados_pessoa(v[i]);

    imprime_mais_jovem(v, n);
end.
