program testa_se_primo;

var i: integer;

function eh_primo(num: integer): boolean;
var cont: integer;
begin
	eh_primo := true;
	if num = 1 then
		eh_primo := false;
	cont := 2;
	while (cont <= sqrt(num)) and eh_primo do
	begin
		if num mod cont = 0 then
			eh_primo := false;
		cont := cont + 1;
	end;
end;

begin
	for i:= 1 to 100 do
		if eh_primo(i) then
			writeln(i);
end.
