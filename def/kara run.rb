def kara_run(pack)
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
	world.setSize(17,26)
	`"#{my_path}"mouse zoomKara`
	`"#{my_path}"mouse setKaraMushroom`
    if key_control == true
		x = `"#{my_path}"mouse getRasterPosition`
		y = x.split(";")
		s1 = ((y[3].to_i-y[1].to_i)/26*19.5+y[1].to_i).round
		s2 = ((y[2].to_i-y[0].to_i)/17*8.5+y[0].to_i).round
        s3 = ((y[3].to_i-y[1].to_i)/26*23.5+y[1].to_i).round
		s4 = ((y[2].to_i-y[0].to_i)/17*8.5+y[0].to_i).round
        s5 = ((y[3].to_i-y[1].to_i)/26*21.5+y[1].to_i).round
		s6 = ((y[2].to_i-y[0].to_i)/17*10.5+y[0].to_i).round
		ss = "W;"+s2.to_s+";"+s1.to_s+";S;"+s4.to_s+";"+s3.to_s+";D;"+s6.to_s+";"+s5.to_s
		IO.popen("#{my_path}Keypress #{ss}")
	end
    if menu == "app"
        Control(kara,tools,world,app_path,"c/n/u/n/n/n/r/n/d/n/s%",nil,nil)
    end
	r = "r"
	m = "r"
	p = 0
	kara.setPosition(2,7)
    world.setTree(1,6,true)
    world.setTree(1,8,true)
    world.setTree(2,6,true)
    world.setTree(2,8,true)
	k = 0
	xl = 2
	yl = 7
	rr = ""
	za = 0
	zb = ""
	jp = 0
	for i in 0..16
	    world.setMushroom(0,i,true)
	    world.setMushroom(i,0,true)
	    world.setMushroom(16,i,true)
	    world.setMushroom(i,16,true)
	end
	world.setLeaf(8,18,true)
	world.setLeaf(7,19,true)
	world.setLeaf(9,19,true)
	world.setLeaf(7,20,true)
	world.setLeaf(8,20,true)
	world.setLeaf(9,20,true)
	world.setLeaf(7,21,true)
	world.setLeaf(8,21,true)
	world.setLeaf(9,21,true)
	world.setLeaf(7,22,true)
	world.setLeaf(8,22,true)
	world.setLeaf(9,22,true)
	world.setLeaf(7,23,true)
	world.setLeaf(9,23,true)
	world.setLeaf(8,24,true)
	world.setLeaf(10,20,true)
	world.setLeaf(11,21,true)
	world.setLeaf(10,22,true)
	u = 0
	uu = 0
	while k == 0
	    u = u+1
	    tools.sleep(1)
	    if p < 6
	        uu = 500
	    elsif p < 11
	        uu = 400
	    elsif p < 16
	        uu = 300
	    elsif p < 21
	        uu = 200
	    else
	        uu = 100
	    end
	    if u > uu
	        u = 0
		    while yl > 1 and yl < 15 and xl > 1 and xl < 15
		        y = tools.random(10)+10
		        if not r == rr
			        world.setTree(xl-1,yl,false)
			        world.setTree(xl+1,yl,false)
			        world.setTree(xl,yl+1,false)
			        world.setTree(xl,yl-1,false)
		        end
		        if rr == "o" and r == "r"
			        world.setTree(xl-1,yl-1,true)
			        world.setTree(xl-1,yl,true)
			        world.setTree(xl,yl-1,true)
		            world.setLeaf(xl,yl,true)
		        end
		        if rr == "u" and r == "r"
			        world.setTree(xl-1,yl+1,true)
			        world.setTree(xl-1,yl,true)
			        world.setTree(xl,yl+1,true)
		            world.setLeaf(xl,yl,true)
		        end
		        if rr == "r" and r == "o"
			        world.setTree(xl+1,yl+1,true)
			        world.setTree(xl+1,yl,true)
			        world.setTree(xl,yl+1,true)
		            world.setLeaf(xl,yl,true)
		        end
		        if rr == "r" and r == "u"
			        world.setTree(xl+1,yl-1,true)
			        world.setTree(xl+1,yl,true)
			        world.setTree(xl,yl-1,true)
		            world.setLeaf(xl,yl,true)
		        end
		        y.times do
		            if yl > 1 and yl < 15 and xl > 1 and xl < 15
		                if r == "r"
		                    xl = xl+1
		                    world.setTree(xl,yl-1,true)
		                    world.setTree(xl,yl+1,true)
		                end
		                if r == "o"
		                    yl = yl-1
		                    world.setTree(xl-1,yl,true)
		                    world.setTree(xl+1,yl,true)
		                end
		                if r == "u"
		                    yl = yl+1
		                    world.setTree(xl-1,yl,true)
		                    world.setTree(xl+1,yl,true)
		                end 
		            end
		        end
		        rr = r
		        while r == rr and za == 0
			        x = tools.random(2)
				    if x == 1
			            if r == "o" or r == "u"
				           r = "r"
			            end
				    elsif x == 2
			            if r == "r"
				           r = "o"
			            end
				    elsif x == 0
				        if r == "r"
				           r = "u"
			            end
				    end
			    end
		    end
		    if za == 0
		        za = tools.random(5)+5
		    else
		        za = za-1
		    end
		    h = 0
		    con = Control(kara,tools,world,app_path,"",nil,nil)
            if con == "u"
                world.setMushroom(8,19,true)
            elsif con == "r"
                world.setMushroom(10,21,true)
            elsif con == "d"
                world.setMushroom(8,23,true)
            end
		    if world.isMushroom(8,19)
	            world.setMushroom(8,19,false)
                if not m == "u"
		          m = "o"
		          kara.setDirection(0)
                end
		    end
		    if world.isMushroom(8,23)
	            world.setMushroom(8,23,false)
                if not m == "o"
		          m = "u"
		          kara.setDirection(2)
                end
		    end
		    if world.isMushroom(10,21)
	            world.setMushroom(10,21,false)
		        m = "r"
		        kara.setDirection(3)
		    end
		    while m == "r" and not kara.treeFront and h == 0
		        for i in 1..15
		            for j in 1..15
		                if world.isTree(i,j)
		                    world.setTree(i,j,false)
		                    if i > 1
		                        world.setTree(i-1,j,true)
		                    end
		                end
		                
		                if world.isLeaf(i,j)
		                    if kara.onLeaf
			                    kara.removeLeaf
			                    p = p+1
		                    else
		                        world.setLeaf(i,j,false)
			                    if i > 1
			                        world.setLeaf(i-1,j,true)
			                    end
			                end
		                    
		                end
		            end
		        end
		        h = h+1
		        xl = xl-1
		    end
		    h = 0
		    while m == "o" and not kara.treeFront and h == 0
		        for jj in 0..15
		            j = 15-jj
		            for i in 0..15
		                if world.isTree(i,j)
		                    world.setTree(i,j,false)
		                    if j < 15 
		                        world.setTree(i,j+1,true)
		                    end
		                end
		                
		                if world.isLeaf(i,j)
		                    if kara.onLeaf
			                    kara.removeLeaf
			                    p = p+1
		                    else
		                        world.setLeaf(i,j,false)
			                    if j < 15 
			                        world.setLeaf(i,j+1,true)
			                    end
			                end
		                    
		                end
		            end
		        end
		        h = h+1
		        yl = yl+1
		    end
		    h = 0
		    while m == "u" and not kara.treeFront and h == 0
		        for j in 0..15
		            for i in 0..15
		                if world.isTree(i,j)
		                    world.setTree(i,j,false)
		                    if j > 1
		                        world.setTree(i,j-1,true)
		                    end
		                end
		                if world.isLeaf(i,j)
		                    if kara.onLeaf
			                    kara.removeLeaf
			                    p = p+1
		                    else
		                        world.setLeaf(i,j,false)
			                    if j > 1
			                        world.setLeaf(i,j-1,true)
			                    end
			                end
		                    
		                end
		            end
		        end
		        h = h+1
		        yl = yl-1
		    end
	        if kara.treeFront 
		        jp = jp+1
	        else
	            jp = 0
		    end
		    if kara.treeFront and jp > 1
		        k = 1
		    end
	    end
	end
	Output(kara,tools,world,app_path,menu,"Kara ist gegen einen Baum gelaufen!! Vorher hat er #{p} Blätter gegessen","","")
	doler = File.open(my_path+"coin.txt").read.to_f
	up = File.open(my_path+"updates.txt").read
	bon = up[22].chr.to_i
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