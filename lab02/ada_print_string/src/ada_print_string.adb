with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Ada.Characters.Latin_1;
use Ada.Text_IO;
procedure ada_print_string is
a : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("###############################################################");
begin
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "###############################################################");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##                                                           ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##       00000000000   0000000000    00000000000             ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##       00       00   00       00   00       00             ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##       00       00   00       00   00       00             ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##       00000000000   00       00   00000000000             ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##       00       00   00       00   00       00             ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##       00       00   00       00   00       00             ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##       00       00   0000000000    00       00             ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "##                                                           ##");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "###############################################################");
Ada.Strings.Unbounded.Append(a, ASCII.LF);
Ada.Strings.Unbounded.Append(a, "###############################################################");

Ada.Text_IO.Put_Line(Ada.Strings.Unbounded.To_String(a));
end Ada_Print_String;
