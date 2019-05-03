library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
 
entity example_file_io_tb is
 
end example_file_io_tb;
 
 
architecture behave of example_file_io_tb is

  -----------------------------------------------------------------------------
  -- Testbench Internal Signals
  -----------------------------------------------------------------------------
  file file_VECTORS : text;
  file file_RESULTS : text;
  constant c_WIDTH : natural := 5;
  type INST_ARR is array (0 to 14) of std_logic_vector(18 downto 0);
  -- REGISTER ARRAY
  -- FLAG REGISTER ARRAY
  -- SIGNALS
  

begin
  process
    variable v_ILINE     : line;
    variable v_OLINE     : line;
    variable inst : std_logic_vector(18 downto 0);
    variable inst_stack : INST_ARR;
    variable index : integer;

  begin

    file_open(file_VECTORS, "input2.txt",  read_mode);
    file_open(file_RESULTS, "output_results.txt",  write_mode);

    -- FILE READING 
    index := 0;
    while not endfile(file_VECTORS) loop
      readline(file_VECTORS, v_ILINE);
      read(v_ILINE, inst);
      inst_stack(index) := inst;
      index := index + 1;
    end loop;    
    file_close(file_VECTORS);

    --index := 0;
    --while index < 4 loop
    --  write(v_OLINE, inst_stack(index));
    --  writeline(file_RESULTS, v_OLINE);
    --  index := index + 1;
    --end loop;

    --file_close(file_RESULTS);

    wait;
  end process;
 
end behave;











      --i2 <= inst(0);
      --i1 <= inst(1);
      --i0 <= inst(2);

      --d4 <= inst(3);
      --d3 <= inst(4);
      --d2 <= inst(5);
      --d1 <= inst(6);
      --d0 <= inst(7);

      --s4 <= inst(8);
      --s3 <= inst(9);
      --s2 <= inst(10);
      --s1 <= inst(11);
      --s0 <= inst(12);


      --if i0 = '0' and i1 = '0' and i2 = '0' then
      ----load inst
      --else

      --value_flag <= inst(13);

      --source 2 optional

      --if i0 = '0' and i1 = '0' and i2 = '0' then
      --  z <= i0;
      --elsif i0 = '0' and i1 = '0' and i2 = '1' then
      --  z <= i1;
      --elsif i0 = '0' and i1 = '1' and i2 = '0' then
      --  z <= i2;
      --elsif i0 = '0' and i1 = '1' and i2 = '1' then
      --  z <= i3;
      --elsif i0 = '1' and i1 = '0' and i2 = '0' then
      --  z <= i4;
      --elsif i0 = '1' and i1 = '0' and i2 = '1' then
      --  z <= i5;
      --elsif i0 = '1' and i1 = '1' and i2 = '0' then
      --  z <= i6;
      --elsif i0 = '1' and i1 = '1' and i2 = '1' then
      --  z <= i7;
      --end if;





      --read(v_ILINE, v_OPERATION); -- store specific element inside line the operation
      --read(v_ILINE, v_SPACE); 
      --read(v_ILINE, v_DESTINATION);
      --read(v_ILINE, v_SPACE1);  
      --read(v_ILINE, v_OPERAND1);
      --read(v_ILINE, v_SPACE2);  
      --read(v_ILINE, v_FLAG); 
      --read(v_ILINE, v_SPACE3);
      --read(v_ILINE, v_OPERAND2);
