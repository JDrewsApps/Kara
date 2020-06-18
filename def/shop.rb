def shop(pack)
    def set_shop(pack,xxx,g)
        kara = pack[0]
		tools = pack[1]
		world = pack[2]
		my_path = pack[3]
		menu = pack[4]
		global_path = pack[5]
		ip = pack[6]
		name = pack[7]
		app_path = pack[8]
		if g > 0 and g < 25
		   te = xxx[g].to_i
		   pr = 0
		   er = 0
		   if te == 1
		       be = Input(kara, tools, world, app_path, menu, "willst du auf 2 verbessern für 100 coins?", "s", "ja/nein", "", "")
		       pr = 100
		   elsif te == 2
		       be = Input(kara, tools, world, app_path, menu, "willst du auf 3 verbessern für 200 coins?", "s", "ja/nein", "", "")
		       pr = 200
	       elsif te == 3
		       be = Input(kara, tools, world, app_path, menu, "willst du auf 4 verbessern für 500 coins?", "s", "ja/nein", "", "")
		       pr = 500
		   elsif te == 4
		       be = Input(kara, tools, world, app_path, menu, "willst du auf 5 verbessern für 1000 coins?", "s", "ja/nein", "", "")
		       pr = 1000
		   elsif te == 5
	           be = Input(kara, tools, world, app_path, menu, "willst du auf 6 verbessern für 2000 coins?", "s", "ja/nein", "", "")
		       pr = 2000
	       elsif te == 6
	           be = Input(kara, tools, world, app_path, menu, "willst du auf 7 verbessern für 5000 coins?", "s", "ja/nein", "", "")
		       pr = 5000
	       elsif te == 7
	           be = Input(kara, tools, world, app_path, menu, "willst du auf 8 verbessern für 10000 coins?", "s", "ja/nein", "", "")
		       pr = 10000
	       elsif te == 8
	           be = Input(kara, tools, world, app_path, menu, "willst du auf 9 verbessern für 20000 coins?", "s", "ja/nein", "", "")
		       pr = 20000
	       elsif te == 9
		       Output(kara, tools, world, app_path, menu, "dieses ist schon auf dem max level", "", "")
		       be = "n"
		   end
			if be == "ja"
				h = File.open(my_path + "coin.txt", "r")
				ht = h.readline.to_i
				h.close
				if ht >= pr
					ent = ht - pr
					h = File.new(my_path + "coin.txt", "w+")
					h.puts(ent.to_s)
					h.close
					xxx[g]= (xxx[g].to_i+ 1).to_s
					xe = ""
					for i in 1..24
			            xe = xe + xxx[i]
					end
					xr = File.new(my_path + "updates.txt", "w+")
					xr.puts(xe.to_s)
					xr.close
				else
				    Output(kara, tools, world, app_path, menu, "du hast zu wenig coins", "", "")
				end
			end
		end
    end
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
	g = 0
	xx = File.open(my_path + "updates.txt").read
    x1 = xx[0].chr
    x2 = xx[1].chr
    x3 = xx[2].chr
    x4 = xx[3].chr
    x5 = xx[4].chr
    x6 = xx[5].chr
    x7 = xx[6].chr
    x8 = xx[7].chr
    x9 = xx[8].chr
    x10 = xx[9].chr
    x11 = xx[10].chr
    x12 = xx[11].chr
    x13 = xx[12].chr
    x14 = xx[13].chr
    x15 = xx[14].chr
    x16 = xx[15].chr
    x17 = xx[16].chr
    x18 = xx[17].chr
    x19 = xx[18].chr
    x20 = xx[19].chr
    x21 = xx[20].chr
    x22 = xx[21].chr
    x23 = xx[22].chr
    x24 = xx[23].chr
    xxx = []
    xxx[1] = xx[0].chr
    xxx[2] = xx[1].chr
    xxx[3] = xx[2].chr
    xxx[4] = xx[3].chr
    xxx[5] = xx[4].chr
    xxx[6] = xx[5].chr
    xxx[7] = xx[6].chr
    xxx[8] = xx[7].chr
    xxx[9] = xx[8].chr
    xxx[10] = xx[9].chr
    xxx[11] = xx[10].chr
    xxx[12] = xx[11].chr
    xxx[13] = xx[12].chr
    xxx[14] = xx[13].chr
    xxx[15] = xx[14].chr
    xxx[16] = xx[15].chr
    xxx[17] = xx[16].chr
    xxx[18] = xx[17].chr
    xxx[19] = xx[18].chr
    xxx[20] =  xx[19].chr
    xxx[21] =  xx[20].chr
    xxx[22] =  xx[21].chr
    xxx[23] =  xx[22].chr
    xxx[24] =  xx[23].chr
    
	if not menu == "app"
        g = -1
        while not g == 0
	        g = Input(kara, tools, world, app_path, menu, "Wähle ein Spiel für einen Bonus:\n\r[0] ende\n\r[1] mathe                  (#{x1}/9)\n\r[2] gedächnis l         (#{x2}/9)\n\r[3] gedächnis s        (#{x3}/9)\n\r[4] blatt suche          (#{x4}/9)\n\r[5] ttk                          (#{x6}/9)\n\r[6] blatt fressen        (#{x7}/9)\n\r[7] pong                      (#{x8}/9)\n\r[8] gedächnis e        (#{x9}/9)\n\r[9] space invaders (#{x10}/9)\n\r[10] snake                  (#{x11}/9)\n\r[11] pac man              (#{x12}/9)\n\r[12] arkanoid              (#{x13}/9)\n\r[13] defenders            (#{x14}/9)\n\r[14] kara jump            (#{x15}/9)\n\r[15] finde kara            (#{x16}/9)\n\r[16] shoot                    (#{x17}/9)\n\r[17] bounce                 (#{x18}/9)\n\r[18] paddle                  (#{x19}/9)\n\r[19] tower                   (#{x20}/9)\n\r[20] bling                    (#{x21}/9)\n\r[21] turn                     (#{x22}/9)\n\r[22] kara run             (#{x23}/9)\n\r[23] tetris                  (#{x24}/9)", "i", "", "", "")
	        if g > 4
	            g = g+1
	        end
            if not g == 0
	           set_shop(pack,xxx,g)
            end
        end
    else
        z = 0
        while z == 0
          y = Input(kara,tools,world,app_path,menu,"Wähle ein Spiel für einen Bonus:","s","Mathe/Blatt suche/TTK/Blatt fressen/Finde Kara/Kara Run/Gedächnis Games/Acade Games/Color Switch Games/Ende","","")
          case y
            when "Ende"
              z = 1
            when "Mathe"
              set_shop(pack,xxx,1)
            when "Blatt suche"  
              set_shop(pack,xxx,4)
            when "TTK"
              set_shop(pack,xxx,6)
            when "Blatt fressen"
              set_shop(pack,xxx,7)
            when "Finde Kara"
              set_shop(pack,xxx,16)
            when "Kara Run"
              set_shop(pack,xxx,23)
            when "Gedächnis Games"
              zz = 0
              while zz == 0
                yy = Input(kara,tools,world,app_path,menu,"","s","Leicht/Schwer/Extrem/Zurück","","")
                case yy
                  when "Zurück"
                    zz = 1
                  when "Leicht"
                    set_shop(pack,xxx,2)
                  when "Schwer"
                    set_shop(pack,xxx,3)
                  when "Extrem"
                    set_shop(pack,xxx,9)
                end
              end
            when "Color Switch Games"
              zz = 0
              while zz == 0
                yy = Input(kara,tools,world,app_path,menu,"","s","Kara Jump/Shoot/Bounce/Paddle/Tower/Bling/Turn/Zurück","","")
                case yy
                  when "Zurück"
                    zz = 1
                  when "Kara Jump"
                    set_shop(pack,xxx,15)
                  when "Shoot"
                    set_shop(pack,xxx,17)
                  when "Bounce"
	                set_shop(pack,xxx,18)
	              when "Paddle"
	                set_shop(pack,xxx,19)
                  when "Tower"
	                set_shop(pack,xxx,20)
                  when "Bling"
	                set_shop(pack,xxx,21)
                  when "Turn"
	                set_shop(pack,xxx,22)
                end
              end
            when "Acade Games"
              zz = 0
              while zz == 0
                yy = Input(kara,tools,world,app_path,menu,"","s","Pong/Space invaders/Snake/Pac man/Arkanoid/Defenders/Tetris/Zurück","","")
                case yy
                  when "Zurück"
                    zz = 1
                  when "Pong"
                    set_shop(pack,xxx,8)
                  when "Space invaders"
                    set_shop(pack,xxx,10)
                  when "Snake"
	                set_shop(pack,xxx,11)
	              when "Pac man"
	                set_shop(pack,xxx,12)
                  when "Arkanoid"
	                set_shop(pack,xxx,13)
                  when "Defenders"
	                set_shop(pack,xxx,14)
                  when "Tetris"
	                set_shop(pack,xxx,24)
                end
              end
          end
        end
	end
    
	Output(kara, tools, world, app_path, menu, "Drücke ok damit das Programm beendet wird", "", "")
end
