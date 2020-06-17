def ged�chnis_l(pack)
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
        m1 = tools.random (9) 
        m2 = tools.random (9)
        m3 = tools.random (9)
        m4 = tools.random (9)
        m5 = tools.random (9)
        m6 = tools.random (9)
        m7 = tools.random (9)
        m8 = tools.random (9)
        m9 = tools.random (9)
        m10 = tools.random (9)
        if k == 0
        xx = m1.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll 
        mm1 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm1 == m1.to_s)
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir keine Zahl merken","","")
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s+m2.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm2 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm2 == (m1.to_s + m2.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir eine Zahle merken","","")
          z = 1
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm3 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm3 == (m1.to_s + m2.to_s + m3.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir zwei Zahlen merken","","")
          z = 2
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s + m4.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm4 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm4 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir drei Zahlen merken","","")
          z = 3
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm5 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm5 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir vier Zahlen merken","","")
          z = 4
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm6 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm6 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir fünf Zahlen merken","","")
          z = 5
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm7 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm7 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir sechs Zahlen merken","","")
          z = 6
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s   
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm8 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm8 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir sieben Zahlen merken","","")
          z = 7
          k = 1
        end                        
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s + m9.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm9 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm9 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s + m9.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir acht Zahlen merken","","")
          z = 8
          k = 1
        end
        end
        if k == 0
        xx = m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s + m9.to_s + m10.to_s
        zeigeBuchstaben(pack,xx,false)
        tools.sleep (2000)
        world.clearAll
        mm10 = Input(kara,tools,world,app_path,menu,"Wiederhole die Zahlen","s","","","")
        if not (mm10 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s + m9.to_s + m10.to_s))
          Output(kara,tools,world,app_path,menu,"Du hast verloren du kontest dir neun Zahlen merken","","")
          z = 9
          k = 1
        end
        if (mm10 == (m1.to_s + m2.to_s + m3.to_s + m4.to_s + m5.to_s + m6.to_s + m7.to_s + m8.to_s + m9.to_s + m10.to_s))
          Output(kara,tools,world,app_path,menu,"Herzlichen Glückwunsch du kontest dir alle zehn Zahle(n) merken","","")
          z = 10
          k = 1
        end
        end
        m = 0
        if z == 1
        m = 5
        elsif z == 2
        m = 10
        elsif z == 3
        m = 15
        elsif z == 4
        m = 25
        elsif z == 5
        m = 35
        elsif z == 6
        m = 45
        elsif z == 7
        m = 60
        elsif z == 8
        m = 75
        elsif z == 9
        m = 90
        elsif z == 10
        m = 110
        end
        doler = File.open(my_path+"coin.txt").read.to_f
        up = File.open(my_path+"updates.txt").read
        bon = up[1].chr.to_i
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