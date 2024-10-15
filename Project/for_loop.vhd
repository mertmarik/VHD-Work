entity for_loop is
    end entity;
      
    architecture sim of for_loop is
    begin
      
        process is
        begin
       
            for i in 1 to 10 loop
               report "i=" & integer'image(i);
            end loop;
            wait;
              
        end process;
      
    end architecture;