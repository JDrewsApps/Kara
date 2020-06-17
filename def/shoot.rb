def shoot(pack)
	kara = pack[0]
	tools = pack[1]
	world = pack[2]
	my_path = pack[3]
	menu = pack[4]
	global_path = pack[5]
	ip = pack[6]
	name = pack[7]
	app_path = pack[8]
	key_control = pack[9]
	k = 0
	l = 1
	p = 0
	t = 30
	le = 0
	world.clearAll
	world.setSize(25,26)
    `"#{my_path}"mouse zoomKara`
    `"#{my_path}"mouse setKaraMushroom`
    if key_control == true
	    x = `"#{my_path}"mouse getRasterPosition`
	    y = x.split(";")
	    s1 = ((y[3].to_i-y[1].to_i)/26*22.5+y[1].to_i).round
	    s2 = ((y[2].to_i-y[0].to_i)/25*12.5+y[0].to_i).round
	    ss = "Space;"+s2.to_s+";"+s1.to_s
	    IO.popen("#{my_path}Keypress #{ss}")
    end
    if menu == "app"
        Control(kara,tools,world,app_path,"c/n/n/n/n/m/n/n/n/n/s%",nil,nil)
    end
	for i in 1..10
	    world.setMushroom(tools.random(24),tools.random(14)+1,true)
	end
	kara.setPosition(12,18)
	world.setLeaf(11,20,true)
	world.setLeaf(12,20,true)
	world.setLeaf(13,20,true)
	world.setLeaf(10,21,true)
	world.setLeaf(10,22,true)
	world.setLeaf(10,23,true)
    world.setLeaf(14,21,true)
	world.setLeaf(14,22,true)
	world.setLeaf(14,23,true)
    world.setLeaf(11,24,true)
	world.setLeaf(12,24,true)
	world.setLeaf(13,24,true)
	kara.setDirection(0)
	for i in 0..24
	    world.setLeaf(i,17,true)
	    world.setTree(i,0,true)
	end
	while k == 0
	    if l == 1
	        t = 30
	    elsif l == 2
	        t = 25
	    elsif l == 3
	        t = 20
	    elsif l == 4
	        t = 15
	    elsif l == 5
	        t = 10
	    elsif l == 6
	        t = 8
	    elsif l > 6
	        t = 6
	    end
        con = Control(kara,tools,world,app_path,"",nil,nil)
        if con == "m"
            world.setMushroom(12,22,true)
        end
        for i in 11..13
            for j in 21..23
			    if world.isMushroom(i,j)
			        world.setMushroom(i,j,false)
			        world.setLeaf(12,16,true)
			    end
            end
        end
	    for i in 1..15
		    for j in 0..24
	            if world.isMushroom(j,i) and world.isLeaf(j,i)
	                world.setMushroom(j,i,false)
	                world.setLeaf(j,i,false)
	                p = p+1
	            end
	        end
	    end
	    for i in 1..16
	        if world.isLeaf(12,i)
	            world.setLeaf(12,i,false)
	            if not i == 1
	                world.setLeaf(12,i-1,true)
	            else
	                k = 1
	            end
	        end
	    end
	    for i in 1..15
		    for j in 0..24
	            if world.isMushroom(j,i) and world.isLeaf(j,i)
	                world.setMushroom(j,i,false)
	                world.setLeaf(j,i,false)
	                p = p+1
	            end
	        end
	    end
	    if le == 20
	        le = 0
	        u = 0
		    for i in 1..15
		        for j in 0..24
	                if world.isMushroom(j,i) and world.isLeaf(j,i)
	                    world.setMushroom(j,i,false)
	                    world.setLeaf(j,i,false)
	                end
		            if world.isMushroom(j,i)
	                    u = 1
		                world.setMushroom(j,i,false)
	                    if not j == 0
	                        world.setMushroom(j-1,i,true)
	                    else
	                        world.setMushroom(24,i,true)
	                    end
	                end
	            end
	        end
	        if u == 0
	            for i in 1..10
	                world.setMushroom(tools.random(24),tools.random(14)+1,true)
	            end
	            l = l+1
	        end
	    end
	    le = le+1
	    tools.sleep(t)
	    tools.checkState
	end
	Output(kara,tools,world,app_path,menu,"Kara hat daneben geschoßen! Vorher konnte er #{p} Pilze treffen","","")
	doler = File.open(my_path+"coin.txt").read.to_f
	up = File.open(my_path+"updates.txt").read
    bon = up[16].chr.to_i
	au = p.to_i*3
	if not menu == "app"
	  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
	else
	  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
	end
	z = File.new(my_path+"coin.txt", "w+")
	z.puts(doler+(au*bon))
	z.close
    system("Taskkill /IM keypress.exe /F")
	Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end