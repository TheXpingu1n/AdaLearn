with Ada.Text_IO;
use Ada.Text_IO;
procedure xorcode is
input1 : Boolean := True;
input2 : Boolean := false;
input3 : Boolean := true;
input4 : Boolean := false;
begin
   Put_Line("input1: True, input2: False");
   Put_Line(Boolean'Image((input1 and (not input2)) or ((not input1) and input2)));
   Put_Line("input2: False, input4: False");
   Put_Line(Boolean'Image((input2 and (not input4)) or ((not input2) and input4)));
   Put_Line("input1: True, input3: True");
   Put_Line(Boolean'Image((input1 and (not input3)) or ((not input1) and input3)));
   Put_Line("input4: False, input3: True");
   Put_Line(Boolean'Image((input4 and (not input3)) or ((not input4) and input3)));
end xorcode;
