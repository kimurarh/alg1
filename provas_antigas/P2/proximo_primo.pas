program gera_proximo_primo;

var num: longint;


function proximo_primo(n: longint): longint;
var eh_primo: boolean; i: longint;
begin
    if n < 2 then
        proximo_primo := 2
    else
    begin
        (* proximo num impar *)
        n := n + 1;
        if n mod 2 = 0 then
            n := n + 1;
        
        (* incrementa ate achar um num primo *)
        repeat
            eh_primo := true;
            i := 3;
            while eh_primo and (i <= sqrt(n)) do
            begin
                if n mod i = 0 then
                    eh_primo := false;
                i := i + 2;
            end;

            if not eh_primo then
                n := n + 2;
        until eh_primo;

        proximo_primo := n;
    end;
end;




begin
    read(num);
    writeln(proximo_primo(num));
end.
