entity wait_on_until is
    end entity;
      
    architecture sim of wait_on_until is

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
                
                wait on countUp, countDown;

                report " Count Up =" & integer'image(countUp) & "Count Down=" & integer'image(countDown);

            end process;

            process is
                begin
                    
                    wait until countUp = countDown;
    
                    report "Jackpot" ;
    
                end process;
    end architecture;