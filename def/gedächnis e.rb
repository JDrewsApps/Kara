def ged‰chnis_e(pack)
	kara = pack[0]
	tools = pack[1]
	world = pack[2]
	my_path = pack[3]
	menu = pack[4]
	global_path = pack[5]
	ip = pack[6]
	name = pack[7]
	app_path = pack[8]
	level = 1
	k = 0
	p = 0
	l = 3
    while k == 0
        world.clearAll
	    world.setSize(10,10)
	    `"#{my_path}"mouse zoomKara`
	    world.setTree(9,0,true)
	    world.setTree(8,0,true)
	    world.setTree(7,0,true)
	    world.setTree(6,0,true)
	    world.setTree(9,1,true)
	    world.setTree(9,2,true)
	    world.setTree(9,3,true)
	    world.setLeaf(0,8,true)
	    world.setLeaf(2,8,true)
	    world.setLeaf(1,9,true)
	    world.setLeaf(1,7,true)
        if level == 1
            world.setTree(8,3,true)
            world.setTree(7,3,true)
            world.setTree(6,3,true)
            world.setTree(6,1,true)
            world.setTree(6,2,true)
        elsif level == 2
            world.setTree(8,4,true)
            world.setTree(7,4,true)
            world.setTree(6,4,true)
            world.setTree(5,1,true)
            world.setTree(5,2,true)
            world.setTree(9,4,true)
            world.setTree(5,4,true)
            world.setTree(5,0,true)
            world.setTree(5,3,true)
        elsif level == 3
            world.setTree(8,5,true)
            world.setTree(7,5,true)
            world.setTree(6,5,true)
            world.setTree(4,1,true)
            world.setTree(4,2,true)
            world.setTree(9,5,true)
            world.setTree(4,5,true)
            world.setTree(4,0,true)
            world.setTree(4,3,true)
            world.setTree(9,4,true)
            world.setTree(5,5,true)
            world.setTree(4,4,true)
            world.setTree(5,0,true)
        end
        x1 = tools.random(2)
        x2 = tools.random(2)
        x3 = tools.random(2)
        x4 = tools.random(2)
        x5 = tools.random(2)
        x6 = tools.random(2)
        x7 = tools.random(2)
        x8 = tools.random(2)
        x9 = tools.random(2)
	    x10 = tools.random(2)
        x11 = tools.random(2)
        x12 = tools.random(2)
        x13 = tools.random(2)
        x14 = tools.random(2)
        x15 = tools.random(2)
        x16 = tools.random(2)
	    if x1 == 0
	    elsif x1 == 1
	      world.setMushroom(8,1,true)
	    elsif x1 == 2
	      world.setLeaf(8,1,true)
	    end
	    if x2 == 0
	    elsif x2 == 1
	      world.setMushroom(7,1,true)
	    elsif x2 == 2
	      world.setLeaf(7,1,true)
	    end
	    if x3 == 0
	    elsif x3 == 1
	      world.setMushroom(8,2,true)
	    elsif x3 == 2
	      world.setLeaf(8,2,true)
	    end
	    if x4 == 0
	    elsif x4 == 1
	      world.setMushroom(7,2,true)
	    elsif x4 == 2
	      world.setLeaf(7,2,true)
	    end
		if level > 1
            if x5 == 0
		    elsif x5 == 1
		      world.setMushroom(6,1,true)
		    elsif x5 == 2
		      world.setLeaf(6,1,true)
		    end
		    if x6 == 0
		    elsif x6 == 1
		      world.setMushroom(6,2,true)
		    elsif x6 == 2
		      world.setLeaf(6,2,true)
		    end
		    if x7 == 0
		    elsif x7 == 1
		      world.setMushroom(8,3,true)
		    elsif x7 == 2
		      world.setLeaf(8,3,true)
		    end
		    if x8 == 0
		    elsif x8 == 1
		      world.setMushroom(7,3,true)
		    elsif x8 == 2
		      world.setLeaf(7,3,true)
		    end
		    if x9 == 0
		    elsif x9 == 1
		      world.setMushroom(6,3,true)
		    elsif x9 == 2
		      world.setLeaf(6,3,true)
		    end
		end
        if level > 2
		    if x10 == 0
		    elsif x10 == 1
		      world.setMushroom(5,1,true)
		    elsif x10 == 2
		      world.setLeaf(5,1,true)
		    end
		    if x11 == 0
		    elsif x11 == 1
		      world.setMushroom(5,2,true)
		    elsif x11 == 2
		      world.setLeaf(5,2,true)
		    end
		    if x12 == 0
		    elsif x12 == 1
		      world.setMushroom(5,3,true)
		    elsif x12 == 2
		      world.setLeaf(5,3,true)
		    end
		    if x13 == 0
		    elsif x13 == 1
		      world.setMushroom(8,4,true)
		    elsif x13 == 2
		      world.setLeaf(8,4,true)
		    end
		    if x14 == 0
		    elsif x14 == 1
		      world.setMushroom(7,4,true)
		    elsif x14 == 2
		      world.setLeaf(7,4,true)
		    end
		    if x15 == 0
		    elsif x15 == 1
		      world.setMushroom(6,4,true)
		    elsif x15 == 2
		      world.setLeaf(6,4,true)
		    end
		    if x16 == 0
		    elsif x16 == 1
		      world.setMushroom(5,4,true)
		    elsif x16 == 2
		      world.setLeaf(5,4,true)
		    end
        end
		if level == 1
		    tools.sleep(1000)
		elsif level == 2
		    tools.sleep(2000)
		elsif level == 3
            tools.sleep(5000)
		end
        tools.checkState()
        world.clearAll
        world.setSize(10,10)
        `"#{my_path}"mouse zoomKara`
        world.setTree(9,0,true)
        world.setTree(8,0,true)
        world.setTree(7,0,true)
        world.setTree(6,0,true)
        world.setTree(9,1,true)
        world.setTree(9,2,true)
        world.setTree(9,3,true)
        world.setLeaf(0,8,true)
        world.setLeaf(2,8,true)
        world.setLeaf(1,9,true)
        world.setLeaf(1,7,true)
        if level == 1
            world.setTree(8,3,true)
            world.setTree(7,3,true)
            world.setTree(6,3,true)
            world.setTree(6,1,true)
            world.setTree(6,2,true)
        elsif level == 2
            world.setTree(8,4,true)
            world.setTree(7,4,true)
            world.setTree(6,4,true)
            world.setTree(5,1,true)
            world.setTree(5,2,true)
            world.setTree(9,4,true)
            world.setTree(5,4,true)
            world.setTree(5,0,true)
            world.setTree(5,3,true)
        elsif level == 3
            world.setTree(8,5,true)
            world.setTree(7,5,true)
            world.setTree(6,5,true)
            world.setTree(4,1,true)
            world.setTree(4,2,true)
            world.setTree(9,5,true)
            world.setTree(4,5,true)
            world.setTree(4,0,true)
            world.setTree(4,3,true)
            world.setTree(9,4,true)
            world.setTree(5,5,true)
            world.setTree(4,4,true)
            world.setTree(5,0,true)
        end
        xx1 = 0
	    xx2 = 0
	    xx3 = 0
	    xx4 = 0
	    xx5 = 0
	    xx6 = 0
	    xx7 = 0
	    xx8 = 0
	    xx9 = 0
	    xx10 = 0
	    xx11 = 0
	    xx12 = 0
	    xx13 = 0
	    xx14 = 0
	    xx15 = 0
	    xx16 = 0
        kk = 0
        if menu == "app"
            appin = Control2(kara,tools,world,app_path,"d/#{level+1}%",nil,nil)
            
            xx1 = appin[0].chr.to_i
		    xx2 = appin[1].chr.to_i
		    xx3 = appin[2].chr.to_i
		    xx4 = appin[3].chr.to_i
			xx5 = appin[4].chr.to_i
			xx6 = appin[5].chr.to_i
			xx7 = appin[6].chr.to_i
			xx8 = appin[7].chr.to_i
			xx9 = appin[8].chr.to_i
			xx10 = appin[9].chr.to_i
			xx11 = appin[10].chr.to_i
			xx12 = appin[11].chr.to_i
			xx13 = appin[12].chr.to_i
			xx14 = appin[13].chr.to_i
			xx15 = appin[14].chr.to_i
			xx16 = appin[15].chr.to_i
        elsif menu == "normal"
            f = 0
            while f == 0
                if world.isMushroom(1,8)
                f = 1
                end
            end
            if world.isMushroom(8,1) and world.isLeaf(8,1)
		      kk = 1
		    elsif world.isMushroom(8,1)
		      xx1 = 1
		    elsif world.isLeaf(8,1)
		      xx1 = 2
		    end
            if world.isMushroom(7,1) and world.isLeaf(7,1)
		      kk = 1
		    elsif world.isMushroom(7,1)
		      xx2 = 1
		    elsif world.isLeaf(7,1)
		      xx2 = 2
		    end
            if world.isMushroom(8,2) and world.isLeaf(8,2)
		      kk = 1
		    elsif world.isMushroom(8,2)
		      xx3 = 1
		    elsif world.isLeaf(8,2)
		      xx3 = 2
		    end
            if world.isMushroom(7,2) and world.isLeaf(7,2)
		      kk = 1
		    elsif world.isMushroom(7,2)
		      xx4 = 1
		    elsif world.isLeaf(7,2)
		      xx4 = 2
		    end
            if world.isMushroom(6,1) and world.isLeaf(6,1)
		      kk = 1
		    elsif world.isMushroom(6,1)
		      xx5 = 1
		    elsif world.isLeaf(6,1)
		      xx5 = 2
		    end
            if world.isMushroom(6,2) and world.isLeaf(6,2)
		      kk = 1
		    elsif world.isMushroom(6,2)
		      xx6 = 1
		    elsif world.isLeaf(6,2)
		      xx6 = 2
		    end
            if world.isMushroom(8,3) and world.isLeaf(8,3)
		      kk = 1
		    elsif world.isMushroom(8,3)
		      xx7 = 1
		    elsif world.isLeaf(8,3)
		      xx7 = 2
		    end
            if world.isMushroom(7,3) and world.isLeaf(7,3)
		      kk = 1
		    elsif world.isMushroom(7,3)
		      xx8 = 1
		    elsif world.isLeaf(7,3)
		      xx8 = 2
		    end
            if world.isMushroom(6,3) and world.isLeaf(6,3)
		      kk = 1
		    elsif world.isMushroom(6,3)
		      xx9 = 1
		    elsif world.isLeaf(6,3)
		      xx9 = 2
		    end
            if world.isMushroom(5,1) and world.isLeaf(5,1)
		      kk = 1
		    elsif world.isMushroom(5,1)
		      xx10 = 1
		    elsif world.isLeaf(5,1)
		      xx10 = 2
		    end
            if world.isMushroom(5,2) and world.isLeaf(5,2)
		      kk = 1
		    elsif world.isMushroom(5,2)
		      xx11 = 1
		    elsif world.isLeaf(5,2)
		      xx11 = 2
		    end
            if world.isMushroom(5,3) and world.isLeaf(5,3)
		      kk = 1
		    elsif world.isMushroom(5,3)
		      xx12 = 1
		    elsif world.isLeaf(5,3)
		      xx12 = 2
		    end
            if world.isMushroom(8,4) and world.isLeaf(8,4)
		      kk = 1
		    elsif world.isMushroom(8,4)
		      xx13 = 1
		    elsif world.isLeaf(8,4)
		      xx13 = 2
		    end
            if world.isMushroom(7,4) and world.isLeaf(7,4)
		      kk = 1
		    elsif world.isMushroom(7,4)
		      xx14 = 1
		    elsif world.isLeaf(7,4)
		      xx14 = 2
		    end
            if world.isMushroom(6,4) and world.isLeaf(6,4)
		      kk = 1
		    elsif world.isMushroom(6,4)
		      xx15 = 1
		    elsif world.isLeaf(6,4)
		      xx15 = 2
		    end
            if world.isMushroom(5,4) and world.isLeaf(5,4)
		      kk = 1
		    elsif world.isMushroom(5,4)
		      xx16 = 1
		    elsif world.isLeaf(5,4)
		      xx16 = 2
		    end
        end
        if kk == 0
	        if level == 3
		        if x1 == xx1 and x2 == xx2 and x3 == xx3 and x4 == xx4 and x5 == xx5 and x6 == xx6 and x7 == xx7 and x8 == xx8 and x9 == xx9 and x10 == xx10 and x11 == xx11 and x12 == xx12 and x13 == xx13 and x14 == xx14 and x15 == xx15 and x16 == xx16
		            p = p+1
		        else
		            l = l-1
		            Output(kara,tools,world,app_path,menu,"du hast ein Leben verlohren! du hast noch #{l} weitere Leben","","")
		        end
		    end
		    if level == 2
		        if x1 == xx1 and x2 == xx2 and x3 == xx3 and x4 == xx4 and x5 == xx5 and x6 == xx6 and x7 == xx7 and x8 == xx8 and x9 == xx9
		            p = p+1
		        else
		            l = l-1
		            Output(kara,tools,world,app_path,menu,"du hast ein Leben verlohren! du hast noch #{l} weitere Leben","","")
		        end
		    end
		    if level == 1
		        if x1 == xx1 and x2 == xx2 and x3 == xx3 and x4 == xx4
		            p = p+1
		        else
		            l = l-1
		            Output(kara,tools,world,app_path,menu,"du hast ein Leben verlohren! du hast noch #{l} weitere Leben","","")
		        end
		    end
        else
            l = l-1
		    Output(kara,tools,world,app_path,menu,"du hast ein Leben verlohren! du hast noch #{l} weitere Leben","","")
        end
	    if l == 0
	        k = 1
	    end
	    if p == 5
	        level = 2
	    end
	    if p == 10
	        level = 3
	    end
	end
    Output(kara,tools,world,app_path,menu,"Du hast verloren! Du konntest #{p} Punkte erreichen","","")
    doler = File.open(my_path+"coin.txt").read.to_f
    up = File.open(my_path+"updates.txt").read
    bon = up[8].chr.to_i
    au = (p.to_i*12)
    if not menu == "app"
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
    else
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
    end
    z = File.new(my_path+"coin.txt", "w+")
    z.puts(doler+au*bon)
    z.close
    Output(kara,tools,world,app_path,menu,"Dr√ºcke ok damit das Programm beendet wird","","")
end