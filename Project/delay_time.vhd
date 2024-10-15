entity delay_time is
    end entity;
    
    architecture sim of delay_time is
    begin
    
        process is 
        begin

            report "Peekaboo";
            wait for 10ps;
    
    
        end process;
    
    end architecture;