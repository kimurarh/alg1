program p2012_2_q1;

var
	h, m, s: integer;

begin
	read(h, m, s);

	writeln(s + (h*60 + m)*60 );
end.
