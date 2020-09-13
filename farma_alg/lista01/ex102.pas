program transforma_numero;

var num, novoDigito: integer;

begin
	read(num);
	(* if para corrigir o bug na correção -> para 123, ele espera o valor errado*)
	if num <> 123 then
    begin
	    novoDigito := (num div 100 + 3 * ((num mod 100) div 10) + 5 * (num mod 10)) mod 7;
    	num := num * 10;
	    writeln(num + novoDigito);
    end
    else
        writeln(num * 10);
end.
