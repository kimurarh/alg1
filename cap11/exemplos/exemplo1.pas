program exemplo1;

type cliente = record
        nome: string;
        fone: longint;
        saldo: real;
     end;
var c: cliente;

procedure ler_cliente(var c: cliente);
begin
    readln(c.nome);
    readln(c.fone);
    readln(c.saldo);
end;

procedure imprimir_cliente(var c: cliente);
begin
    writeln(c.nome);
    writeln(c.fone);
    writeln(c.saldo:0:2);
end;

begin
    ler_cliente(c);
    imprimir_cliente(c);
end.
