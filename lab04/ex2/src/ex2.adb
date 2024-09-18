with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Ex2 is

function palindorme(text : in Ada.Strings.Unbounded.Unbounded_String) return Boolean is
   newtext : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.Null_Unbounded_String;
begin
      for iter of reverse Ada.Strings.Unbounded.To_String(text) loop
      Ada.Strings.Unbounded.Append(newtext,iter);
      end loop;
      if Ada.Strings.Unbounded.To_String(newtext) = Ada.Strings.Unbounded.To_String(text)
         then 
            return true;
      else
            return False;
      end if;
end palindorme;

   text : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("fgt");
   result : Boolean;
begin
   result := palindorme(text);
   ada.Text_IO.Put_Line(Boolean'Image(result));
end Ex2;
