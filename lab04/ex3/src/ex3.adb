with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Ex3 is

function palindorme(text : in Ada.Strings.Unbounded.Unbounded_String; index1 : in Integer;index2: in Integer) return Boolean is
begin
   if(Ada.Strings.Unbounded.Length(text) = 0 or Ada.Strings.Unbounded.Length(text) = 1 or index1 >= Ada.Strings.Unbounded.Length(text) or index2 <= 0)
   then
      return true;
   end if;
   if(Ada.Strings.Unbounded.Element(text,index1) /= Ada.Strings.Unbounded.Element(text,index2))
   then
      return false;
   end if;
   return palindorme(text, index1+1,index2-1);
end palindorme;

   text : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("kayak");
   result : Boolean;
begin
   result := palindorme(text,1,Ada.Strings.Unbounded.Length(text));
   ada.Text_IO.Put_Line(Boolean'Image(result));
end Ex3;
