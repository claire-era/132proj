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
 
   
begin
 
  ---------------------------------------------------------------------------
  -- This procedure reads the file input_vectors.txt which is located in the
  -- simulation project area.
  -- It will read the data in and send it to the ripple-adder component
  -- to perform the operations.  The result is written to the
  -- output_results.txt file, located in the same directory.
  ---------------------------------------------------------------------------
  process
    variable v_ILINE     : line;
    variable v_OLINE     : line;
    variable v_OPERATION : std_logic_vector(c_WIDTH-3 downto 0);
    variable v_DESTINATION : std_logic_vector(c_WIDTH-1 downto 0);
    variable v_OPERAND1 : std_logic_vector(c_WIDTH-1 downto 0);
    variable v_FLAG : std_logic_vector(c_WIDTH-5 downto 0);
    variable v_OPERAND2 : std_logic_vector(c_WIDTH-1 downto 0);
    variable v_SPACE     : character;
    variable v_SPACE1     : character;
    variable v_SPACE2    : character;
    variable v_SPACE3     : character;
     
  begin
 
    file_open(file_VECTORS, "input2.txt",  read_mode);
    file_open(file_RESULTS, "output_results.txt",  write_mode);

    while not endfile(file_VECTORS) loop
      readline(file_VECTORS, v_ILINE);
      read(v_ILINE, v_OPERATION); -- store specific element inside line the operation
      read(v_ILINE, v_SPACE); 
      read(v_ILINE, v_DESTINATION);
      read(v_ILINE, v_SPACE1);  
      read(v_ILINE, v_OPERAND1);
      read(v_ILINE, v_SPACE2);  
      read(v_ILINE, v_FLAG); 
      read(v_ILINE, v_SPACE3);
      read(v_ILINE, v_OPERAND2);
 
      wait for 60 ns;
 
      --write(v_OLINE, v_DESTINATION);
      --writeline(file_RESULTS, v_OLINE);

      --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      --ALU STARTS HERE
      --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




    end loop;
 
    file_close(file_VECTORS);
    file_close(file_RESULTS);
     
    wait;
  end process;
 
end behave;