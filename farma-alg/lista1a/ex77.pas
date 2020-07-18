program placa_centenas;

var placa: integer;

begin
	read(placa);
	writeln((placa mod 1000) div 100);
end.
