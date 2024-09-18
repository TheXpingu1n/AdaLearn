-- this is how you would make an integer input to the
-- command line.
with Ada.Text_IO;
-- this is how you would generate a random integer within a
-- specific range.
with Ada.Numerics.Discrete_Random;
procedure ex1 is
TempString : String(1 .. 3);
Last : Natural := 0;
Value : Integer := 0;
subtype Vals is Positive range 1 .. 10;
package Random100 is new
 Ada.Numerics.Discrete_Random(Result_Subtype => Vals);
 Gen : Random100.Generator;
GeneratedNum : Vals := 1;
begin
Ada.Text_IO.Put_Line("Guess a random number:");
Ada.Text_IO.Get_Line(TempString, Last);
Value := Integer'Value(TempString(1 .. Last));
Random100.Reset(Gen => Gen);
GeneratedNum := Random100.Random(Gen => Gen);
if Value = GeneratedNum
then
Ada.Text_IO.Put_Line("You won!");
else
Ada.Text_IO.Put_Line("You lost!");
end if;
end ex1;
