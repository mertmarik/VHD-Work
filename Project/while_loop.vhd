entity while_loop is
    end entity;
      
    architecture sim of while_loop is
    begin
      
        process is
            variable i : integer := 0;
        begin
       
           while i < 10 loop
               report "i=" & integer'image(i);
               i := i+3;
            end loop;
            wait;
              
        end process;
      
    end architecture;