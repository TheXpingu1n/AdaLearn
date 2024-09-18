-- this is how you would make an integer input to the
-- command line.
with Ada.Text_IO;
-- this is how you would generate a random integer within a
-- specific range.
with Ada.Numerics.Discrete_Random;
procedure ex2 is
TempString : String(1 .. 3);
Last : Natural := 0;
Value : Integer := 0;
Remainder : Integer;
comp_rem : Integer;
lowbound : Integer;
upperbound : Integer;
--state : Boolean := true;
subtype Vals is Positive range 1 .. 100;
package Random100 is new
 Ada.Numerics.Discrete_Random(Result_Subtype => Vals);
 Gen : Random100.Generator;
GeneratedNum : Vals := 1;
begin
while true loop
Ada.Text_IO.Put("Choose 1 to continue, 2 to exit: ");
Ada.Text_IO.Get_Line(TempString, Last);
Value := Integer'Value(TempString(1 .. Last));
if Value = 2
then
exit; 
end if;
Random100.Reset(Gen => Gen);
GeneratedNum := Random100.Random(Gen => Gen);
Remainder := GeneratedNum rem 10;
comp_rem := 10 - Remainder;
lowbound :=  GeneratedNum - Remainder;
upperbound := GeneratedNum + comp_rem;
Ada.Text_IO.Put_Line("The random number is:" & Integer'Image(GeneratedNum) & " with lower bound:"
 & Integer'Image(lowbound) & 
" and upper bound:" 
& Integer'Image(upperbound));
end loop;
end ex2;
