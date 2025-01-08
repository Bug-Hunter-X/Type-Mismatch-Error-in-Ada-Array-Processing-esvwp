```ada
procedure Example is
   subtype My_Array_subtype is Integer range 1..100;
   type My_Array is array (1..10) of My_Array_subtype;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in Arr'Range loop
      Arr(I) := Arr(I) * 2; 
   end loop;
   for I in Arr'Range loop
      Ada.Text_IO.Put_Line(Arr(I)'Img); --Corrected to handle possible overflow
   end loop;
exception
   when others =>
      Ada.Text_IO.Put_Line("Error: " & Ada.Exceptions.Exception_Name); 
end Example;
```