program ex01;

const MAX = 200;
type tipo_pessoa = record
                        nome: string;
                        ddd: integer;
                        telefone: string;
                   end;
     vetor = array [1..MAX] of tipo_pessoa;

var vet: vetor;
    n, i: integer;
    
procedure le_dados_pessoa(var pessoa: tipo_pessoa);
begin
    readln(pessoa.nome);
    readln(pessoa.ddd);
    readln(pessoa.telefone);
end;

procedure imprime_ctba_rio(var vet: vetor; n: integer);
var i: integer;
begin
    for i := 1 to n do
        if (vet[i].ddd = 41) or (vet[i].ddd = 21) then
            writeln(vet[i].nome);
end;

begin
    writeln('Digite qual a quantidade de pessoas: ');
    readln(n);
    writeln('Digite o nome, ddd e telefone das ', n, ' pessoas:');
    for i := 1 to n do
        le_dados_pessoa(vet[i]);
    writeln('As pessoas abaixo são de Curitiba ou do Rio de Janeiro:');
    imprime_ctba_rio(vet, n);
end.
