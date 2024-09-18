-- list.adb
with Ada.Text_IO;
with Ada.Float_Text_IO;
use Ada.Text_IO;
procedure list is
Fuel1 : Float := 900.40;
Fuel2 : Float := 90.01;
com_pizza : Float := 71.49;
washing : Float := 98.40;
oil_ch : Integer := 440;
air_fil : Integer := 23;
sum : Float;
begin
    sum := Fuel1 + fuel2 + com_pizza + washing + Float(oil_ch) + Float(air_fil);
    Ada.Text_IO.Put_Line(Integer'Image(oil_ch) &  "   Oil Change");
    Ada.Float_Text_IO.Put( washing, Exp => 0);
    Put_Line("   Washing fluid");
    Put_Line(Integer'Image(air_fil) & "   Air filter");
    Ada.Float_Text_IO.Put(fuel1 ,Exp => 0);
    Put_Line("   Fuel");
    Ada.Float_Text_IO.Put(com_pizza,  Exp => 0);
    Put_Line("   Company pizza luncheon");
    Ada.Float_Text_IO.Put(fuel2 , Exp => 0);
    Put_Line("   Fuel");
    Ada.Float_Text_IO.Put(sum, Exp => 0);
    Ada.Text_IO.Put_Line("   Sum");
end list;