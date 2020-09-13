program testa_se_primo;

var i: longint;

function eh_primo(num: longint): boolean;
var i: longint;
begin
	eh_primo := true;
	(* existe apenas um número par que é primo, o 2 *)
	if ((num mod 2 = 0) and (num <> 2)) or (num = 1) then
		eh_primo := false
	else
	begin
		i := 3;
		while (i <= sqrt(num)) and eh_primo do
		begin
			if num mod i = 0 then
				eh_primo := false;
			i := i + 2; (* divido apenas pelos números ímpares *)
		end;
	end;
end;

begin
	for i := 1 to 10000 do
		if eh_primo(i) then
			writeln(i);
end.	
