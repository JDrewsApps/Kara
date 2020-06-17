def ged�chnis_s(pack)      
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]    
        k = 0
        z = 0
        ms1 = tools.random (9) 
        ms2 = tools.random (9)
        ms3 = tools.random (9)
        ms4 = tools.random (9)
        ms5 = tools.random (9)
        ms6 = tools.random (9)
        ms7 = tools.random (9)
        ms8 = tools.random (9)
        ms9 = tools.random (9)
        ms10 = tools.random (9)
        ms11 = tools.random (9) 
        ms12 = tools.random (9)
        ms13 = tools.random (9)
        ms14 = tools.random (9)
        ms15 = tools.random (9)
        ms16 = tools.random (9)
        ms17 = tools.random (9)
        ms18 = tools.random (9)
        ms19 = tools.random (9)
        ms20 = tools.random (9) 
        ms21 = tools.random (9) 
        ms22 = tools.random (9)
        ms23 = tools.random (9)
        ms24 = tools.random (9)
        ms25 = tools.random (9)
        ms26 = tools.random (9)
        ms27 = tools.random (9)
        ms28 = tools.random (9)
        ms29 = tools.random (9)
        ms30 = tools.random (9)
        ms31 = tools.random (9) 
        ms32 = tools.random (9)
        ms33 = tools.random (9)
        ms34 = tools.random (9)
        ms35 = tools.random (9)
        ms36 = tools.random (9)
        ms37 = tools.random (9)
        ms38 = tools.random (9)
        ms39 = tools.random (9)
        ms40 = tools.random (9)
        ms41 = tools.random (9) 
        ms42 = tools.random (9)
        ms43 = tools.random (9)
        ms44 = tools.random (9)
        ms45 = tools.random (9)
        ms46 = tools.random (9)
        ms47 = tools.random (9)
        ms48 = tools.random (9)
        ms49 = tools.random (9)
        ms50 = tools.random (9) 
        ms51 = tools.random (9) 
        ms52 = tools.random (9)
        ms53 = tools.random (9)
        ms54 = tools.random (9)
        ms55 = tools.random (9) 
        if k == 0
        xx = ms1.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mms1 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms1 == ms1.to_s)
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir keine Zahl merken","","")
          k = 1
        end
        end
        if k == 0
        xx = ms2.to_s + ms3.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mms2 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms2 == (ms2.to_s + ms3.to_s))
          
          z = 1
          k = 1
        end
        end
        if k == 0
        xx = ms4.to_s + ms5.to_s + ms6.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mms3 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms3 == (ms4.to_s + ms5.to_s + ms6.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir zwei Zahlen merken","","")
          z = 2
          k = 1
        end
        end
        if k == 0
        xx = ms7.to_s + ms8.to_s + ms9.to_s + ms10.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mms4 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms4 == (ms7.to_s + ms8.to_s + ms9.to_s + ms10.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir drei Zahlen merken","","")
          z = 3
          k = 1
        end
        end
        if k == 0
        xx = ms11.to_s + ms12.to_s + ms13.to_s + ms14.to_s + ms15.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mms5 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms5 == (ms11.to_s + ms12.to_s + ms13.to_s + ms14.to_s + ms15.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir vier Zahlen merken","","")
          z = 4
          k = 1
        end
        end
        if k == 0
        xx = ms16.to_s + ms17.to_s + ms18.to_s + ms19.to_s + ms20.to_s + ms21.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mms6 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms6 == (ms16.to_s + ms17.to_s + ms18.to_s + ms19.to_s + ms20.to_s + ms21.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir fünf Zahlen merken","","")
          z = 5
          k = 1
        end
        end
        if k == 0
        xx = ms22.to_s + ms23.to_s + ms24.to_s + ms25.to_s + ms26.to_s + ms27.to_s + ms28.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mms7 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms7 == (ms22.to_s + ms23.to_s + ms24.to_s + ms25.to_s + ms26.to_s + ms27.to_s + ms28.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir sechs Zahlen merken","","")
          z = 6
          k = 1
        end
        end
        if k == 0  
        xx = ms29.to_s + ms30.to_s + ms31.to_s + ms32.to_s + ms33.to_s + ms34.to_s + ms35.to_s + ms36.to_s
        zeigeBuchstaben(pack,xx,false)      
        tools.sleep (2000)
        world.clearAll
        mms8 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms8 == (ms29.to_s + ms30.to_s + ms31.to_s + ms32.to_s + ms33.to_s + ms34.to_s + ms35.to_s + ms36.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir sieben Zahlen merken","","")
          z = 7
          k = 1
        end                        
        end
        if k == 0
        xx = ms37.to_s + ms38.to_s + ms39.to_s + ms40.to_s + ms41.to_s + ms42.to_s + ms43.to_s + ms44.to_s + ms45.to_s
        zeigeBuchstaben(pack,xx,false)      
        tools.sleep (2000)
        world.clearAll
        mms9 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms9 == (ms37.to_s + ms38.to_s + ms39.to_s + ms40.to_s + ms41.to_s + ms42.to_s + ms43.to_s + ms44.to_s + ms45.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir acht Zahlen merken","","")
          z = 8
          k = 1
        end
        end
        if k == 0
        xx = ms46.to_s + ms47.to_s + ms48.to_s + ms49.to_s + ms50.to_s + ms51.to_s + ms52.to_s + ms53.to_s + ms54.to_s + ms55.to_s
        zeigeBuchstaben(pack,xx,false) 
        tools.sleep (2000)
        world.clearAll
        mms10 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mms10 == (ms46.to_s + ms47.to_s + ms48.to_s + ms49.to_s + ms50.to_s + ms51.to_s + ms52.to_s + ms53.to_s + ms54.to_s + ms55.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir neun Zahlen merken","","")
          z = 9
          k = 1
        end
        if (mms10 == (ms46.to_s + ms47.to_s + ms48.to_s + ms49.to_s + ms50.to_s + ms51.to_s + ms52.to_s + ms53.to_s + ms54.to_s + ms55.to_s))
          Output(kara,tools,world,app_path,menu,"Herzlichen Glückwunsch du kontest dir alle zehn Zahlen merken","","")
          z = 10
          k = 1
        end
        end
        m = 0
        if z == 1
        m = 10
        elsif z == 2
        m = 20
        elsif z == 3
        m = 30
        elsif z == 4
        m = 45
        elsif z == 5
        m = 60
        elsif z == 6
        m = 75
        elsif z == 7
        m = 95
        elsif z == 8
        m = 115
        elsif z == 9
        m = 135
        elsif z == 10
        m = 160
        end
        doler = File.open(my_path+"coin.txt").read.to_f
        up = File.open(my_path+"updates.txt").read
        bon = up[2].chr.to_i
        au = m
        if not menu == "app"
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
        else
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
        end
        z = File.new(my_path+"coin.txt", "w+")
        z.puts(doler+au*bon)
        z.close
        Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end