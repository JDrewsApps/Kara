def turn(pack)
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
	world.setSize(17,24)
    `"#{my_path}"mouse zoomKara`
    `"#{my_path}"mouse setKaraMushroom`
    if key_control == true
		x = `"#{my_path}"mouse getRasterPosition`
		y = x.split(";")
		s1 = ((y[3].to_i-y[1].to_i)/24*20.5+y[1].to_i).round
		s2 = ((y[2].to_i-y[0].to_i)/17*8.5+y[0].to_i).round
		ss = "Space;"+s2.to_s+";"+s1.to_s
		IO.popen("#{my_path}Keypress #{ss}")
	end
    if menu == "app"
        Control(kara,tools,world,app_path,"c/n/n/n/n/m/n/n/n/n/s%",nil,nil)
    end
	z1 = "l"
	z2 = "l"
	z3 = "l"
	z4 = "l"
	z5 = "m"
	z6 = "m"
	z7 = "m"
	z8 = "m"
	z9 = "t"
	z10 = "t"
	z11 = "t"
	z12 = "t"
	x1 = -1
	x2 = -1
	x3 = -1
	x4 = -1
	xx1 = ""
	xx2 = ""
	xx3 = ""
	xx4 = ""
	p = 0
	for i in 0..16
	    world.setTree(i,0,true)
	    world.setTree(0,i,true)
	    world.setTree(i,16,true)
	    world.setTree(16,i,true)
	end
	k = 0
	r = "r"
	h = 0
	hh = 400
	hhh = 0
	world.setLeaf(7,18,true)
	world.setLeaf(8,18,true)
	world.setLeaf(9,18,true)
	world.setLeaf(7,22,true)
	world.setLeaf(8,22,true)
	world.setLeaf(9,22,true)
	world.setLeaf(10,19,true)
	world.setLeaf(10,20,true)
	world.setLeaf(10,21,true)
	world.setLeaf(6,19,true)
	world.setLeaf(6,20,true)
	world.setLeaf(6,21,true)
	while k == 0
	    if p < 4
			g = 250
			gg = 1000
		elsif p < 7
		    g = 200
		    gg = 800
		elsif p < 10
		    g = 150
		    gg = 600
		elsif p < 13
		    g = 100
		    gg = 400
	    elsif p < 16
		    g = 50
		    gg = 200
	    else
		    g = 30
		    gg = 120
		end
	    h = h+1
	    hh = hh+1
	    hhh = hhh+1
	    if xx1 == "t" and x1 > -1
	        if x1 > 0
	            world.setTree(8,0+x1,false)
	        end
	        world.setTree(8,1+x1,true)
	    elsif xx1 == "l" and x1 > -1
	        if x1 > 0
	            world.setLeaf(8,0+x1,false)
	        end
	        world.setLeaf(8,1+x1,true)
	    elsif xx1 == "m" and x1 > -1
	        if x1 > 0
	            world.setMushroom(8,0+x1,false)
	        end
	        world.setMushroom(8,1+x1,true)
	    end
	    if xx2 == "t" and x2 > -1
	        if x2 > 0
	            world.setTree(0+x2,8,false)
	        end
	        world.setTree(1+x2,8,true)
	    elsif xx2 == "l" and x2 > -1
	        if x2 > 0
	            world.setLeaf(0+x2,8,false)
	        end
	        world.setLeaf(1+x2,8,true)
	    elsif xx2 == "m" and x2 > -1
	        if x2 > 0
	            world.setMushroom(0+x2,8,false)
	        end
	        world.setMushroom(1+x2,8,true)
	    end
	    if xx3 == "t" and x3 > -1
	        if x3 > 0
	            world.setTree(16-x3,8,false)
	        end
	        world.setTree(15-x3,8,true)
	    elsif xx3 == "l" and x3 > -1
	        if x3 > 0
	            world.setLeaf(16-x3,8,false)
	        end
	        world.setLeaf(15-x3,8,true)
	    elsif xx3 == "m" and x3 > -1
	        if x3 > 0
	            world.setMushroom(16-x3,8,false)
	        end
	        world.setMushroom(15-x3,8,true)
	    end
	    if xx4 == "t" and x4 > -1
	        if x4 > 0
	            world.setTree(8,16-x4,false)
	        end
	        world.setTree(8,15-x4,true)
	    elsif xx4 == "l" and x4 > -1
	        if x4 > 0
	            world.setLeaf(8,16-x4,false)
	        end
	        world.setLeaf(8,15-x4,true)
	    elsif xx4 == "m" and x4 > -1
	        if x4 > 0
	            world.setMushroom(8,16-x4,false)
	        end
	        world.setMushroom(8,15-x4,true)
	    end
	    if h > g
	        h = 0
		    for i in 6..10
		        for j in 6..10
		            world.setTree(i,j,false)
		            world.setLeaf(i,j,false)
		            world.setMushroom(i,j,false)
		        end
		    end
		    zz1 = z1
			zz2 = z2
			zz3 = z3
			zz4 = z4
			zz5 = z5
			zz6 = z6
			zz7 = z7
			zz8 = z8
			zz9 = z9
			zz10 = z10
			zz11 = z11
			zz12 = z12
		    if r == "l"
		        z1 = zz2
		        z2 = zz3
		        z3 = zz4
		        z4 = zz5
		        z5 = zz6
		        z6 = zz7
		        z7 = zz8
		        z8 = zz9
		        z9 = zz10
		        z10 = zz11
		        z11 = zz12
		        z12 = zz1
		    elsif r == "r"
		        z1 = zz12
		        z2 = zz1
		        z3 = zz2
		        z4 = zz3
		        z5 = zz4
		        z6 = zz5
		        z7 = zz6
		        z8 = zz7
		        z9 = zz8
		        z10 = zz9
		        z11 = zz10
		        z12 = zz11
		    end
		    if z1 == "l"
		        world.setLeaf(7,6,true)
		    elsif z1 == "m"
		        world.setMushroom(7,6,true)
		    elsif z1 == "t"
		        world.setTree(7,6,true)
		    end
		    if z2 == "l"
		        world.setLeaf(8,6,true)
		    elsif z2 == "m"
		        world.setMushroom(8,6,true)
		    elsif z2 == "t"
		        world.setTree(8,6,true)
		    end
		    if z3 == "l"
		        world.setLeaf(9,6,true)
		    elsif z3 == "m"
		        world.setMushroom(9,6,true)
		    elsif z3 == "t"
		        world.setTree(9,6,true)
		    end
		    if z4 == "l"
		        world.setLeaf(10,7,true)
		    elsif z4 == "m"
		        world.setMushroom(10,7,true)
		    elsif z4 == "t"
		        world.setTree(10,7,true)
		    end
		    if z5 == "l"
		        world.setLeaf(10,8,true)
		    elsif z5 == "m"
		        world.setMushroom(10,8,true)
		    elsif z5 == "t"
		        world.setTree(10,8,true)
		    end
		    if z6 == "l"
		        world.setLeaf(10,9,true)
		    elsif z6 == "m"
		        world.setMushroom(10,9,true)
		    elsif z6 == "t"
		        world.setTree(10,9,true)
		    end
		    if z7 == "l"
		        world.setLeaf(9,10,true)
		    elsif z7 == "m"
		        world.setMushroom(9,10,true)
		    elsif z7 == "t"
		        world.setTree(9,10,true)
		    end
		    if z8 == "l"
		        world.setLeaf(8,10,true)
		    elsif z8 == "m"
		        world.setMushroom(8,10,true)
		    elsif z8 == "t"
		        world.setTree(8,10,true)
		    end
		    if z9 == "l"
		        world.setLeaf(7,10,true)
		    elsif z9 == "m"
		        world.setMushroom(7,10,true)
		    elsif z9 == "t"
		        world.setTree(7,10,true)
		    end
		    if z10 == "l"
		        world.setLeaf(6,9,true)
		    elsif z10 == "m"
		        world.setMushroom(6,9,true)
		    elsif z10 == "t"
		        world.setTree(6,9,true)
		    end
	        if z11 == "l"
		        world.setLeaf(6,8,true)
		    elsif z11 == "m"
		        world.setMushroom(6,8,true)
		    elsif z11 == "t"
		        world.setTree(6,8,true)
		    end
	        if z12 == "l"
		        world.setLeaf(6,7,true)
		    elsif z12 == "m"
		        world.setMushroom(6,7,true)
		    elsif z12 == "t"
		        world.setTree(6,7,true)
		    end
		    tools.checkState
	    end
        con = Control(kara,tools,world,app_path,"",nil,nil)
        if con == "m"
            world.setMushroom(8,20,true)
        end
	    for i in 7..9
	        for j in 19..21
	            if world.isMushroom(i,j)
	                world.setMushroom(i,j,false)
	                if r == "r"
	                    r = "l"
	                elsif r == "l"
	                    r = "r"
	                end
	            end
	        end
	    end
	    if hh > gg
	        hh = 0
	        x = tools.random(3)
	        y = tools.random(2)
	        if y == 0
	            o = "m"
	        elsif y == 1
	            o = "l"
	        elsif y == 2
	            o = "t"
	        end
	        if x == 0 and x1 == -1 and x2 == -1 and x3 == -1 and x4 == -1
	            x1 = 0
	            xx1 = o
	        elsif x == 1 and x1 == -1 and x2 == -1 and x3 == -1 and x4 == -1
	            x2 = 0
	            xx2 = o
	        elsif x == 2 and x1 == -1 and x2 == -1 and x3 == -1 and x4 == -1
	            x3 = 0
	            xx3 = o
	        elsif x == 3 and x1 == -1 and x2 == -1 and x3 == -1 and x4 == -1
	            x4 = 0
	            xx4 = o
	        end
	    end
	    if hhh > gg
	        hhh = 0
	        if x1 == 4
		        x1 = -1
	            if xx1 == "t" and world.isTree(8,6)
	                p = p+1
	            elsif xx1 == "l" and world.isLeaf(8,6)
	                p = p+1
	            elsif xx1 == "m" and world.isMushroom(8,6)
	                p = p+1
	            else
	                k = 1
	            end
	            world.setMushroom(8,5,false)
	            world.setLeaf(8,5,false)
	            world.setTree(8,5,false)
		    end
		    if x2 == 4
		        x2 = -1
	            if xx2 == "t" and world.isTree(6,8)
	                p = p+1
	            elsif xx2 == "l" and world.isLeaf(6,8)
	                p = p+1
	            elsif xx2 == "m" and world.isMushroom(6,8)
	                p = p+1
	            else
	                k = 1
	            end
	            world.setMushroom(5,8,false)
	            world.setLeaf(5,8,false)
	            world.setTree(5,8,false)
		    end
	        if x4 == 4
		        x4 = -1
	            if xx4 == "t" and world.isTree(8,10)
	                p = p+1
	            elsif xx4 == "l" and world.isLeaf(8,10)
	                p = p+1
	            elsif xx4 == "m" and world.isMushroom(8,10)
	                p = p+1
	            else
	                k = 1
	            end
	            world.setMushroom(8,11,false)
	            world.setLeaf(8,11,false)
	            world.setTree(8,11,false)
		    end
	        if x3 == 4
		        x3 = -1
		           if xx3 == "t" and world.isTree(10,8)
	                p = p+1
	            elsif xx3 == "l" and world.isLeaf(10,8)
	                p = p+1
	            elsif xx3 == "m" and world.isMushroom(10,8)
	                p = p+1
	            else
	                k = 1
	            end
	            world.setMushroom(11,8,false)
	            world.setLeaf(11,8,false)
	            world.setTree(11,8,false)
		    end
	        if x1 > -1
	            x1 = x1+1
	        end
	        if x2 > -1
	            x2 = x2+1
	        end
	        if x3 > -1
	            x3 = x3+1
	        end
	        if x4 > -1
	            x4 = x4+1
	        end
	    end
	    tools.sleep(1)
	end
	Output(kara,tools,world,app_path,menu,"Du hast verlohren!! Du hast #{p} Blätter, Bäume und Pilze abgewehrt ","","")
	doler = File.open(my_path+"coin.txt").read.to_f
	up = File.open(my_path+"updates.txt").read
	bon = up[21].chr.to_i
	au = p.to_i*4
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