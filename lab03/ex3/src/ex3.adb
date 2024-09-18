with Ada.Text_IO;
use Ada.Text_IO;
procedure Ex3 is
begin
  for iter in 1 .. 10000 loop
  if iter rem 3 = 0 or  iter rem 13 = 0 or iter rem 23 = 0 
  then
      Put_Line(Integer'Image(iter));
  end if;
  end loop;
end Ex3;
