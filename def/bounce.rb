def bounce(pack)
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
	world.clearAll
	world.setSize(33,29)
	`"#{my_path}"mouse zoomKara`
	`"#{my_path}"mouse setKaraMushroom`
	if key_control == true
		x = `"#{my_path}"mouse getRasterPosition`
		y = x.split(";")
		s1 = ((y[3].to_i-y[1].to_i)/29*25.5+y[1].to_i).round
		s2 = ((y[2].to_i-y[0].to_i)/33*17.5+y[0].to_i).round
		ss = "Space;"+s2.to_s+";"+s1.to_s
		IO.popen("#{my_path}Keypress #{ss}")
	end
    if menu == "app"
        Control(kara,tools,world,app_path,"c/n/n/n/n/m/n/n/n/n/s%",nil,nil)
    end
	l = 1
	k = 0
	p = 0
	t = 0
	tt = 50
	m = 0
	for i in 0..32
	    world.setTree(i,0,true)
	    world.setTree(i,21,true)
	end
	world.setLeaf(16,23,true)
	world.setLeaf(17,23,true)
	world.setLeaf(18,23,true)
    world.setLeaf(15,24,true)
	world.setLeaf(15,25,true)
	world.setLeaf(15,26,true)
    world.setLeaf(19,24,true)
	world.setLeaf(19,25,true)
	world.setLeaf(19,26,true)
    world.setLeaf(16,27,true)
	world.setLeaf(17,27,true)
	world.setLeaf(18,27,true)
	for i in 1..20
	    if i < 11
	        world.setLeaf(0,i,true)
	        world.setLeaf(32,i,true)
	    else
	        world.setMushroom(0,i,true)
	        world.setMushroom(32,i,true)
	    end
	end
	x = 16
	y = 11
	r = "r"
	a = "p"
	h = 0
	g = 0
	while k == 0
	    if p == 3
	        tt = 40
	    elsif p == 5
	        tt = 30
	    elsif p == 7
	        tt = 25
	    elsif p == 10
	        tt = 20
	    elsif p == 15
	        tt = 15
	    elsif p == 20
	        tt = 12
	    elsif p == 25
	        tt = 10
	    end
	    if p == 3 and h == 0
	        h = 1
	    elsif p == 5 and h == 1
	        h = 2
	    elsif p == 8 and h == 2
	        h = 3
	    end
	    if h == 1 and g < 1
	        g = 1
	        world.clearAll
			world.setSize(33,27)
			for i in 0..32
			    world.setTree(i,0,true)
			    world.setTree(i,21,true)
			end
			world.setLeaf(17,25,true)
			world.setLeaf(18,24,true)
			world.setLeaf(16,24,true)
			world.setLeaf(17,23,true)
	        for i in 1..10
		        if i < 6
		            world.setLeaf(0,i,true)
		            world.setLeaf(32,i,true)
		            world.setLeaf(0,i+10,true)
		            world.setLeaf(32,i+10,true)
		        else
		            world.setMushroom(0,i,true)
		            world.setMushroom(32,i,true)
		            world.setMushroom(0,i+10,true)
		            world.setMushroom(32,i+10,true)
		        end
		    end
	    elsif h == 2 and g < 2
	        g = 2
	        world.clearAll
			world.setSize(33,27)
			for i in 0..32
			    world.setTree(i,0,true)
			    world.setTree(i,21,true)
			end
			world.setLeaf(17,25,true)
			world.setLeaf(18,24,true)
			world.setLeaf(16,24,true)
			world.setLeaf(17,23,true)
	        for i in 1..8
		        if i < 5
		            world.setLeaf(0,i,true)
		            world.setLeaf(32,i,true)
		            world.setLeaf(0,i+8,true)
		            world.setLeaf(32,i+8,true)
		            world.setLeaf(0,i+16,true)
		            world.setLeaf(32,i+16,true)
		        else
		            world.setMushroom(0,i,true)
		            world.setMushroom(32,i,true)
		            world.setMushroom(0,i+8,true)
		            world.setMushroom(32,i+8,true)
		        end
		    end
	    elsif h == 3 and g < 3
	        g = 3
	        world.clearAll
			world.setSize(33,27)
			for i in 0..32
			    world.setTree(i,0,true)
			    world.setTree(i,21,true)
			end
			world.setLeaf(17,25,true)
			world.setLeaf(18,24,true)
			world.setLeaf(16,24,true)
			world.setLeaf(17,23,true)
	        for i in 1..4
		        if i < 3
		            world.setLeaf(0,i,true)
		            world.setLeaf(32,i,true)
		            world.setLeaf(0,i+4,true)
		            world.setLeaf(32,i+4,true)
		            world.setLeaf(0,i+8,true)
		            world.setLeaf(32,i+8,true)
		            world.setLeaf(0,i+12,true)
		            world.setLeaf(32,i+12,true)
		            world.setLeaf(0,i+16,true)
		            world.setLeaf(32,i+16,true)
		        else
		            world.setMushroom(0,i,true)
		            world.setMushroom(32,i,true)
		            world.setMushroom(0,i+4,true)
		            world.setMushroom(32,i+4,true)
		            world.setMushroom(0,i+8,true)
		            world.setMushroom(32,i+8,true)
		            world.setMushroom(0,i+12,true)
		            world.setMushroom(32,i+12,true)
		            world.setMushroom(0,i+16,true)
		            world.setMushroom(32,i+16,true)
		        end
		    end
	    end
	    
	    t = t+1
	    m = m+1
	    x1 = x
	    y1 = y
	    if t == 7
	        t = 0
		    if r == "r"
		        x = x+1
		    end
		    if r == "l"
		        x = x-1
		    end
	    end
	    if m == 7
	        m = 0
	        y = y+1
	        if y > 20
	            k = 1
	        end
	    end
	    if x == 1
	        if r == "l"
	            if not world.isLeaf(0,y)
	                k = 1
	            end
	        end
	        if r == "l"
	            p = p+1
	        end
	        r = "r"
	    end
	    if x == 31
	        if r == "r"
	            if not world.isMushroom(32,y)
	                k = 1
	            end
	        end
	        if r == "r"
	            p = p+1
	        end
	        r = "l"
	    end
        con = Control(kara,tools,world,app_path,"",nil,nil)
        if con == "m"
            world.setMushroom(17,25,true)
        end
        for i in 16..18
            for j in 24..26
			    if world.isMushroom(i,j)
			        world.setMushroom(i,j,false)
			        y = y-2
			        if y < 1
			            k = 1
			        end
			    end
            end
        end
	    if k == 0
		    world.setMushroom(x1,y1,false)
		    world.setLeaf(x1,y1,false)
		    if r == "r"
		        world.setMushroom(x,y,true)
		    end
		    if r == "l"
		        world.setLeaf(x,y,true)
		    end
	    end
	    tools.sleep(tt)
	    tools.checkState
	end
    Output(kara,tools,world,app_path,menu,"Du hast das Falsche Objekt getroffen! Vorher hast du #{p} mal das richtige Objekt treffen","","")
	doler = File.open(my_path+"coin.txt").read.to_f
	up = File.open(my_path+"updates.txt").read
    bon = up[17].chr.to_i
	au = p.to_i*5
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