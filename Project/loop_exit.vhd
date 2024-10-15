entity loop_exit is
    end entity;
      
    architecture sim of loop_exit is
    begin
      
        process is
        begin
       
            report "Hello!";
              
            loop
                report "Peekaboo!";
                exit;
            end loop;
              
            report "Goodbye!";
            wait;
              
        end process;
      
    end architecture;