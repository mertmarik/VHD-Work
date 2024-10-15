entity if_else is
    end entity;
      
    architecture sim of if_else is

        signal countUp : integer := 0;
        signal countDown : integer := 10;
  
        begin
          
            process is
            begin
                countUp <= countUp+1;
                countDown <= countDown-1;
               wait for 10 ps;
          
            end process;
    
            process is
            begin
                
                if countUp > countDown then
                    report "Count Up is larger";
                elsif countUp<countDown then
                    report "Count Down is larger";
                else
                    report "They are equal!";
                end if;

                wait on countUp, countDown;

            end process;

    end architecture;