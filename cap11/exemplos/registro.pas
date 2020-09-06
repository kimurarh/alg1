program exemplo;

const MAX = 200;
type tipo_cliente =  record
                 nome: string;
                 fone: longint;
                 saldo: real;
                end;
     arquivo_clientes = array [1..MAX] of tipo_cliente;    

var v: arquivo_clientes;
    tam: longint;
    s: string;

procedure ler_cliente(var c: tipo_cliente);
begin
    readln(c.nome);
    readln(c.fone);
    readln(c.saldo);
end;

procedure imprimir_cliente(c: tipo_cliente);
begin
    writeln(c.nome);
    writeln(c.fone);
    writeln(c.saldo:0:2);
end;

procedure imprimir_arquivo (var v: arquivo_clientes; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
    begin
        ler_cliente(v[i]);
        writeln('------------------');
    end;
end;

procedure ler_arquivo (var v: arquivo_clientes; var tam: longint);
var i: longint;
begin
    readln(tam);
    for i := 1 to tam do
        ler_cliente(v[i]);
end;

function pertence(s: string; var v: arquivo_clientes; tam: longint): boolean;
var i: longint;
begin
    v[tam+1].nome := s;

    i := 1;
    while v[i].nome <> s do
        i := i + 1;
    
    if i = tam + 1 then 
        pertence := false
    else
        pertence := true;
end;

begin
    ler_arquivo(v, tam);
    imprimir_arquivo(v, tam);
    read(s);
    if pertence(s, v, tam) then
        writeln('Existe')
    else
        writeln('Nao existe');
end.
