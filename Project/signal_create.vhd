entity signal_create is
    end entity;
      
    architecture sim of signal_create is

        signal MySignal : integer := 0;
  
        begin
          
            process is
                variable MyVariable : integer := 0;
            begin
          
                report "*** Process begin ***";
          
                MyVariable := MyVariable + 1;
                MySignal   <= MySignal + 1;
          
                report "MyVariable=" & integer'image(MyVariable) &
                    ", MySignal=" & integer'image(MySignal);
          
                MyVariable := MyVariable + 1;
                MySignal   <= MySignal + 1;
          
                report "MyVariable=" & integer'image(MyVariable) &
                    ", MySignal=" & integer'image(MySignal);
          
                wait for 10 ps;
          
                report "MyVariable=" & integer'image(MyVariable) &
                    ", MySignal=" & integer'image(MySignal);
          
            end process;
          
    end architecture;