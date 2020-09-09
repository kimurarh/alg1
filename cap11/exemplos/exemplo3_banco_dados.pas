program exemplo3_banco_de_dados;

const MAX = 200;
type cliente = record
                   nome: string;
                   fone: longint;
                   saldo: real;
               end;
     bd = array [1..MAX] of cliente;

var v: bd;
    c: cliente;
    tam: longint;

procedure ler_bd(var v: bd; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
    begin
        readln(v[i].nome);
        readln(v[i].fone);
        readln(v[i].saldo);
    end;
end;

procedure imprimir_bd(var v: bd; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
    begin
        writeln(v[i].nome);
        writeln(v[i].fone);
        writeln(v[i].saldo:0:2);
    end;
    writeln('--------------------');
end;

procedure inserir(c: cliente; var v: bd; var tam: longint);
begin
    tam := tam + 1;
    v[tam].nome := c.nome;
    v[tam].fone := c.fone;
    v[tam].saldo := c.saldo;
end;

procedure ler_cliente(var c: cliente);
begin
    readln(c.nome);
    readln(c.fone);
    readln(c.saldo);
end;

function pertence(c: cliente; var v: bd; tam: longint): boolean;
var i: longint;
begin
    v[tam+1].nome := c.nome;
    
    i := 1;
    while c.nome <> v[i].nome do
        i := i + 1;

    if i = tam + 1 then
        pertence := false
    else
        pertence := true;
end;

begin
    readln(tam);
    ler_bd(v, tam);
    imprimir_bd(v, tam);
    ler_cliente(c);
    inserir(c, v, tam);
    imprimir_bd(v, tam);
    ler_cliente(c);
    if pertence (c, v, tam) then
        writeln('existe')
    else
        writeln('nao existe');
end.
