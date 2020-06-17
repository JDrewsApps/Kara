def mathe(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
        punkte = 0
        leben = 3
        z = 1
        level = 1
        k = 0
        while not leben == 0
          if punkte == 5
            level = level + 1
          end
          if punkte == 10
            level = level + 1
          end
          if punkte == 15
            level = level + 1
          end
          if punkte == 20
            level = level + 1
          end
          case level 
            when 1
              if level = 1
                if leben == 0
                  k = 1
                end
                if k == 0
                xs = tools.random (99)
                ys = tools.random (99)
                sp = Input(kara,tools,world,app_path,menu,"Rechne #{xs}+#{ys}","i","","","")
                if sp == xs + ys
                  zeigeBuchstaben(pack,"richtig",false)
	              punkte = punkte + 1
	              tools.sleep (800)
	              z = z-5
                end
                if not sp == xs + ys
                  zeigeBuchstaben(pack,"falsch",false)
                  leben = leben - 1
                  tools.sleep (800)
                  z = z-6
                end
                end
              end#if
            when 2
              if level = 2
                if leben == 0
                  k = 1
                end
                if k == 0
                xs = tools.random (999)
                ys = tools.random (999)
                sp = Input(kara,tools,world,app_path,menu,"Rechne #{xs}+#{ys}","i","","","")

                if sp == xs + ys
                  zeigeBuchstaben(pack,"richtig",false)
	              punkte = punkte + 1
	              tools.sleep (800)
	              z = z-5
                end
                if not sp == xs + ys
                  zeigeBuchstaben(pack,"falsch",false)
                  leben = leben - 1
                  tools.sleep (800)
                  z = z-6
                end
                end
              end#if
            when 3
              if level = 2
                if leben == 0
                  k = 1
                end
                if k == 0
                xs = tools.random (9999)
                ys = tools.random (9999)
                sp = Input(kara,tools,world,app_path,menu,"Rechne #{xs}+#{ys}","i","","","")

                if sp == xs + ys
                  zeigeBuchstaben(pack,"richtig",false)
	              punkte = punkte + 1
	              tools.sleep (800)
	              z = z-5
                end
                if not sp == xs + ys
                  zeigeBuchstaben(pack,"falsch",false)
                  leben = leben - 1
                  tools.sleep (800)
                  z = z-6
                end
                end
              end#if
            when 4
              while level = 4
                if leben == 0
                  k = 1
                end
                if k == 0
                xs = tools.random (99999)
                ys = tools.random (99999)
                sp = Input(kara,tools,world,app_path,menu,"Rechne #{xs}+#{ys}","i","","","")

                if sp == xs + ys
                  world.clearAll
                  zeigeBuchstaben(pack,"richtig",false)
	              punkte = punkte + 1
	              tools.sleep (800)
	              z = z-5
                end
                if not sp == xs + ys
                  zeigeBuchstaben(pack,"falsch",false)
                  leben = leben - 1
                  tools.sleep (800)
                  z = z-6
                end
                end
              end#while
          end#case level
        end#while
        doler = File.open(my_path+"coin.txt").read.to_f
        Output(kara,tools,world,app_path,menu,"Keine Versuche  mehr! Punkte=#{punkte}","","")
        up = File.open(my_path+"updates.txt").read
        bon = up[0].chr.to_i
        au = punkte.to_i*7
        if not menu == "app"
          Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
        else
          Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s}coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s}coins","","")
        end
        z = File.new(my_path+"coin.txt", "w+")
        z.puts(doler+au*bon)
        z.close
        Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end