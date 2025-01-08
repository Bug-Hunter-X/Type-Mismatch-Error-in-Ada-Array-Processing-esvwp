```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in Arr'Range loop
      Arr(I) := Arr(I) * 2; 
   end loop;
   for I in Arr'Range loop
      Ada.Text_IO.Put_Line(Arr(I)'Img);
end Example;
```