def tetris(pack)
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
	world.setSize(20,29)
	`"#{my_path}"mouse zoomKara`
	`"#{my_path}"mouse setKaraMushroom`
    if key_control == true
		x = `"#{my_path}"mouse getRasterPosition`
		y = x.split(";")
		s1 = ((y[3].to_i-y[1].to_i)/29*24.5+y[1].to_i).round
		s2 = ((y[2].to_i-y[0].to_i)/20*8.5+y[0].to_i).round
	    s3 = ((y[3].to_i-y[1].to_i)/29*24.5+y[1].to_i).round
		s4 = ((y[2].to_i-y[0].to_i)/20*11.5+y[0].to_i).round
	    s5 = ((y[3].to_i-y[1].to_i)/29*26.5+y[1].to_i).round
		s6 = ((y[2].to_i-y[0].to_i)/20*8.5+y[0].to_i).round
	    s7 = ((y[3].to_i-y[1].to_i)/29*26.5+y[1].to_i).round
		s8 = ((y[2].to_i-y[0].to_i)/20*11.5+y[0].to_i).round
        s9 = ((y[3].to_i-y[1].to_i)/29*25.5+y[1].to_i).round
		s10 = ((y[2].to_i-y[0].to_i)/20*10+y[0].to_i).round
		ss = "A;"+s2.to_s+";"+s1.to_s+";D;"+s4.to_s+";"+s3.to_s+";Right;"+s6.to_s+";"+s5.to_s+";Left;"+s8.to_s+";"+s7.to_s+";Space;"+s10.to_s+";"+s9.to_s
		IO.popen("#{my_path}Keypress #{ss}")
	end
    if menu == "app"
        Control(kara,tools,world,app_path,"c/l/n/r/n/m/n/l/n/r/s%",nil,nil)
    end
	for i in 0..20
	    world.setTree(0,i,true)
	    world.setTree(1,i,true)
	    world.setTree(2,i,true)
	    world.setTree(3,i,true)
	    world.setTree(4,i,true)
	    world.setTree(15,i,true)
	    world.setTree(16,i,true)
	    world.setTree(17,i,true)
	    world.setTree(18,i,true)
	    world.setTree(19,i,true)
	end
	for i in 0..19
	    world.setTree(i,21,true)
	end
	world.setLeaf(8,23,true)
	world.setLeaf(9,23,true)
	world.setLeaf(10,23,true)
	world.setLeaf(11,23,true)
	world.setLeaf(7,24,true)
	world.setLeaf(9,24,true)
	world.setLeaf(10,24,true)
	world.setLeaf(12,24,true)
	world.setLeaf(8,25,true)
	world.setLeaf(11,25,true)
	world.setLeaf(7,26,true)
	world.setLeaf(9,26,true)
	world.setLeaf(10,26,true)
	world.setLeaf(12,26,true)
	world.setLeaf(8,27,true)
	world.setLeaf(9,27,true)
	world.setLeaf(10,27,true)
	world.setLeaf(11,27,true)
	dd = 0
	ddd = 0
	f = 0
	d = 0
	k = 0
	r = 0
	x1 = 0
	x2 = 0
	x3 = 0
	x4 = 0
	y1 = 0
	y2 = 0
	y3 = 0
	y4 = 0
	m = 1
	p = 0
	h = 0
    ll = 300
	while k == 0
	    if dd > ll
	        dd = 0
	    end
        if p > 40
            ll = 40
        elsif p > 35
            ll = 50
        elsif p > 30
            ll = 60
        elsif p > 25
            ll = 75
        elsif p > 20
            ll = 100
        elsif p > 15
            ll = 150
        elsif p > 10
            ll = 200
        elsif p > 5
            ll = 250
        end
	    if dd == 0 or h > 0
	        ddd = ddd+1
	        h = h-1
		    if d == 1
		        if y1 > 19 or y2 > 19 or y3 > 19 or y4 > 19 or world.isMushroom(x1,y1+1) or world.isMushroom(x2,y2+1) or world.isMushroom(x3,y3+1) or world.isMushroom(x4,y4+1)
		            d = 0
	                f = 0
		            world.setLeaf(x1,y1,false)
				    world.setLeaf(x2,y2,false)
				    world.setLeaf(x3,y3,false)
				    world.setLeaf(x4,y4,false)
		            world.setMushroom(x1,y1,true)
				    world.setMushroom(x2,y2,true)
				    world.setMushroom(x3,y3,true)
				    world.setMushroom(x4,y4,true)
		        else
		            world.setLeaf(x1,y1,false)
				    world.setLeaf(x2,y2,false)
				    world.setLeaf(x3,y3,false)
				    world.setLeaf(x4,y4,false)
			        y1 = y1+1
			        y2 = y2+1
			        y3 = y3+1
			        y4 = y4+1
	                f = f+1
		        end
		    end
		    if d == 0
	            s = 0
			    for i in 0..20
			        ss = 0
			        for j in 5..14
			            if world.isMushroom(j,i)
			                ss = ss+1
			            end
			            if ss == 10
			                for n in 5..14
			                    world.setMushroom(n,i,false)
			                end
                            p = p+1
	                        s = i
	                        for l in 1..i-1
	                            s = s-1
	                            for m in 5..14
	                                if world.isMushroom(m,s)
	                                    world.setMushroom(m,s,false)
	                                    world.setMushroom(m,s+1,true)
	                                end
				                end
	                        end
			            end
			        end 
			    end
		        r = tools.random(6)
	            m = 1
		        if r == 0
		            x1 = 8
		            y1 = 0
		            x2 = 9
		            y2 = 0
		            x3 = 10
		            y3 = 0
		            x4 = 11
		            y4 = 0
		        end
	            if r == 1
		            x1 = 9
		            y1 = 1
		            x2 = 9
		            y2 = 0
		            x3 = 10
		            y3 = 0
		            x4 = 10
		            y4 = 1
		        end
	            if r == 2
		            x1 = 8
		            y1 = 1
		            x2 = 9
		            y2 = 1
		            x3 = 9
		            y3 = 0
		            x4 = 10
		            y4 = 0
		        end
		        if r == 3
		            x1 = 8
		            y1 = 0
		            x2 = 9
		            y2 = 0
		            x3 = 9
		            y3 = 1
		            x4 = 10
		            y4 = 1
		        end
		        if r == 4
		            x1 = 8
		            y1 = 0
		            x2 = 9
		            y2 = 0
		            x3 = 9
		            y3 = 1
		            x4 = 10
		            y4 = 0
		        end
		        if r == 5
		            x1 = 8
		            y1 = 1
		            x2 = 8
		            y2 = 0
		            x3 = 9
		            y3 = 0
		            x4 = 10
		            y4 = 0
		        end
		        if r == 6
		            x1 = 8
		            y1 = 0
		            x2 = 9
		            y2 = 0
		            x3 = 10
		            y3 = 0
		            x4 = 10
		            y4 = 1
		        end
		        d = 1
		    end
		    if world.isMushroom(x1,y1)
		        k = 1
		    else
		        world.setLeaf(x1,y1,true)
		    end
		    if world.isMushroom(x2,y2)
		        k = 1
		    else
		        world.setLeaf(x2,y2,true)
		    end
		    if world.isMushroom(x3,y3)
		        k = 1
		    else
		        world.setLeaf(x3,y3,true)
		    end
		    if world.isMushroom(x4,y4)
		        k = 1
		    else
		        world.setLeaf(x4,y4,true)
		    end
	    end
	    tools.sleep(1)
	    tools.checkState
        con = Control(kara,tools,world,app_path,"",nil,nil)
        if con == "ul"
            world.setMushroom(8,24,true)
        elsif con == "ur"
            world.setMushroom(11,24,true)
        elsif con == "m"
            world.setMushroom(10,25,true)
        elsif con == "dl"
            world.setMushroom(8,26,true)
        elsif con == "dr"
            world.setMushroom(11,26,true)
        end
	    if world.isMushroom(8,24)
	        world.setMushroom(8,24,false)
	        world.setLeaf(x1,y1,false)
		    world.setLeaf(x2,y2,false)
		    world.setLeaf(x3,y3,false)
		    world.setLeaf(x4,y4,false)
	        if x1 < 6 or x2 < 6 or x3 < 6 or x4 < 6 or world.isTree(x1-1,y1) or world.isTree(x2-1,y2) or world.isTree(x3-1,y3) or world.isTree(x4-1,y4) or world.isMushroom(x1-1,y1) or world.isMushroom(x2-1,y2) or world.isMushroom(x3-1,y3) or world.isMushroom(x4-1,y4)
	        else
		        x1 = x1-1
		        x2 = x2-1
		        x3 = x3-1
		        x4 = x4-1
	        end
	        world.setLeaf(x1,y1,true)
		    world.setLeaf(x2,y2,true)
		    world.setLeaf(x3,y3,true)
		    world.setLeaf(x4,y4,true)
	    end
	    if world.isMushroom(11,24)
	        world.setMushroom(11,24,false)
	        world.setLeaf(x1,y1,false)
		    world.setLeaf(x2,y2,false)
		    world.setLeaf(x3,y3,false)
		    world.setLeaf(x4,y4,false)
	        if x1 > 16 or x2 > 16 or x3 > 16 or x4 > 16 or world.isTree(x1+1,y1) or world.isTree(x2+1,y2) or world.isTree(x3+1,y3) or world.isTree(x4+1,y4) or world.isMushroom(x1+1,y1) or world.isMushroom(x2+1,y2) or world.isMushroom(x3+1,y3) or world.isMushroom(x4+1,y4)
	        else
		        x1 = x1+1
		        x2 = x2+1
		        x3 = x3+1
		        x4 = x4+1
	        end
	        world.setLeaf(x1,y1,true)
		    world.setLeaf(x2,y2,true)
		    world.setLeaf(x3,y3,true)
		    world.setLeaf(x4,y4,true)
	    end
	    if world.isMushroom(10,25) or world.isMushroom(9,25)
	        world.setMushroom(10,25,false)
	        world.setMushroom(9,25,false)
	        h = 5
	    end
	    if world.isMushroom(11,26) or world.isMushroom(8,26)
	        if r == 0
	            if m == 1
	                if f > 2
	                    if world.isMushroom(x1+2,y1-1) or world.isMushroom(x2+1,y2) or world.isMushroom(x3,y3+1) or world.isMushroom(x4-1,y4+2) or world.isTree(x1+2,y1-1) or world.isTree(x2+1,y2) or world.isTree(x3,y3+1) or world.isTree(x4-1,y4+2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
		                    x1 = x1+2
	                        y1 = y1-1
	                        x2 = x2+1
	                        y3 = y3+1
	                        x4 = x4-1
	                        y4 = y4+2
	                        m = 2
	                    end
	                end
	            elsif m == 2
	                if f > 2
	                    if world.isMushroom(x1-2,y1+1) or world.isMushroom(x2-1,y2) or world.isMushroom(x3,y3-1) or world.isMushroom(x4+1,y4-2) or world.isTree(x1-2,y1+1) or world.isTree(x2-1,y2) or world.isTree(x3,y3-1) or world.isTree(x4+1,y4-2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
		                    x1 = x1-2
	                        y1 = y1+1
	                        x2 = x2-1
	                        y3 = y3-1
	                        x4 = x4+1
	                        y4 = y4-2
	                        m = 1
	                    end
	                end
	            end
	        end
	        if r == 2
	            if m == 1
	                if f > 1
	                    if world.isMushroom(x1,y1-2) or world.isMushroom(x2-1,y2-1) or world.isMushroom(x4-1,y4+1) or world.isTree(x1,y1-2) or world.isTree(x2-1,y2-1) or world.isTree(x4-1,y4+1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        y1 = y1-2
	                        x2 = x2-1
	                        y2 = y2-1
	                        x4 = x4-1
	                        y4 = y4+1
	                        m = 2
	                    end
	                end
	            elsif m == 2
	                if f > 1
	                    if world.isMushroom(x1,y1+2) or world.isMushroom(x2+1,y2+1) or world.isMushroom(x4+1,y4-1) or world.isTree(x1,y1+2) or world.isTree(x2+1,y2+1) or world.isTree(x4+1,y4-1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        y1 = y1+2
	                        x2 = x2+1
	                        y2 = y2+1
	                        x4 = x4+1
	                        y4 = y4-1
	                        m = 1
	                    end
	                end
	            end
	        end
	        if r == 3
	            if m == 1
	                if f > 1
	                    if world.isMushroom(x1+1,y1+1) or world.isMushroom(x3+1,y3-1) or world.isMushroom(x4,y4-2) or world.isTree(x1+1,y1+1) or world.isTree(x3+1,y3-1) or world.isTree(x4,y4-2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y1 = y1+1
	                        x3 = x3+1
	                        y3 = y3-1
	                        y4 = y4-2
	                        m = 2
	                    end
	                end
	            elsif m == 2
	                if f > 1
	                    if world.isMushroom(x1-1,y1-1) or world.isMushroom(x3-1,y3+1) or world.isMushroom(x4,y4+2) or world.isTree(x1-1,y1-1) or world.isTree(x3-1,y3+1) or world.isTree(x4,y4+2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y1 = y1-1
	                        x3 = x3-1
	                        y3 = y3+1
	                        y4 = y4+2
	                        m = 1
	                    end
	                end
	            end
	        end
	        if r == 4 and world.isMushroom(11,26)
	            if m == 1
	                if f > 1
	                    if world.isMushroom(x1+1,y1-1) or world.isMushroom(x3-1,y3-1) or world.isMushroom(x4-1,y4+1) or world.isTree(x1+1,y1-1) or world.isTree(x3-1,y3-1) or world.isTree(x4-1,y4+1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y1 = y1-1
	                        x3 = x3-1
	                        y3 = y3-1
	                        x4 = x4-1
	                        y4 = y4+1
	                        m = 2
	                    end
	                end
	            elsif m == 2
	                if f > 1
	                    if world.isMushroom(x1+1,y1+2) or world.isMushroom(x2,y2+1) or world.isMushroom(x3+1,y3) or world.isMushroom(x4-1,y4) or world.isTree(x1+1,y1+2) or world.isTree(x2,y2+1) or world.isTree(x3+1,y3) or world.isTree(x4-1,y4)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y1 = y1+2
	                        y2 = y2+1
	                        x3 = x3+1
	                        x4 = x4-1
	                        m = 3
	                    end
	                end
	            elsif m == 3
	                if f > 1
	                    if world.isMushroom(x1-1,y1) or world.isMushroom(x2,y2-1) or world.isMushroom(x3+1,y3) or world.isMushroom(x4+1,y4-2) or world.isTree(x1-1,y1) or world.isTree(x2,y2-1) or world.isTree(x3+1,y3) or world.isTree(x4+1,y4-2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y2 = y2-1
	                        x3 = x3+1
	                        x4 = x4+1
	                        y4 = y4-2
	                        m = 4
	                    end
	                end
	            elsif m == 4
	                if f > 1
	                    if world.isMushroom(x1-1,y1-1) or world.isMushroom(x3-1,y3+1) or world.isMushroom(x4+1,y4+1) or world.isTree(x1-1,y1-1) or world.isTree(x3-1,y3+1) or world.isTree(x4+1,y4+1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y1 = y1-1
	                        x3 = x3-1
	                        y3 = y3+1
	                        x4 = x4+1
	                        y4 = y4+1
	                        m = 1
	                    end
	                end
	            end
	        end
	        if r == 4 and world.isMushroom(8,26)
	            if m == 2
	                if f > 1
	                    if world.isMushroom(x1-1,y1+1) or world.isMushroom(x3+1,y3+1) or world.isMushroom(x4+1,y4-1) or world.isTree(x1-1,y1+1) or world.isTree(x3+1,y3+1) or world.isTree(x4+1,y4-1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y1 = y1+1
	                        x3 = x3+1
	                        y3 = y3+1
	                        x4 = x4+1
	                        y4 = y4-1
	                        m = 1
	                    end
	                end
	            elsif m == 3
	                if f > 1
	                    if world.isMushroom(x1-1,y1-2) or world.isMushroom(x2,y2-1) or world.isMushroom(x3-1,y3) or world.isMushroom(x4+1,y4) or world.isTree(x1-1,y1-2) or world.isTree(x2,y2-1) or world.isTree(x3-1,y3) or world.isTree(x4+1,y4)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y1 = y1-2
	                        y2 = y2-1
	                        x3 = x3-1
	                        x4 = x4+1
	                        m = 2
	                    end
	                end
	            elsif m == 4
	                if f > 1
	                    if world.isMushroom(x1+1,y1) or world.isMushroom(x2,y2-1) or world.isMushroom(x3-1,y3) or world.isMushroom(x4-1,y4+2) or world.isTree(x1+1,y1) or world.isTree(x2,y2-1) or world.isTree(x3-1,y3) or world.isTree(x4-1,y4+2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y2 = y2+1
	                        x3 = x3-1
	                        x4 = x4-1
	                        y4 = y4+2
	                        m = 3
	                    end
	                end
	            elsif m == 1
	                if f > 1
	                    if world.isMushroom(x1+1,y1+1) or world.isMushroom(x3+1,y3-1) or world.isMushroom(x4-1,y4-1) or world.isTree(x1+1,y1+1) or world.isTree(x3+1,y3-1) or world.isTree(x4-1,y4-1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y1 = y1+1
	                        x3 = x3+1
	                        y3 = y3-1
	                        x4 = x4-1
	                        y4 = y4-1
	                        m = 4
	                    end
	                end
	            end
	        end
	        if r == 5 and world.isMushroom(11,26)
	            if m == 1
	                if f > 1
	                    if world.isMushroom(x1,y1-2) or world.isMushroom(x2+1,y2-1) or world.isMushroom(x4-1,y4+1) or world.isTree(x1,y1-2) or world.isTree(x2+1,y2-1) or world.isTree(x4-1,y4+1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        y1 = y1-2
	                        x2 = x2+1
	                        y2 = y2-1
	                        x4 = x4-1
	                        y4 = y4+1
	                        m = 2
	                    end
	                end
	            elsif m == 2
	                if f > 1
	                    if world.isMushroom(x1+2,y1+1) or world.isMushroom(x2+1,y2+2) or world.isMushroom(x3,y3+1) or world.isMushroom(x4-1,y4) or world.isTree(x1+2,y1+1) or world.isTree(x2+1,y2+2) or world.isTree(x3,y3+1) or world.isTree(x4-1,y4)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+2
	                        y1 = y1+1
	                        x2 = x2+1
	                        y2 = y2+2
	                        y3 = y3+1
	                        x4 = x4-1
	                        m = 3
	                    end
	                end
	            elsif m == 3
	                if f > 1
	                    if world.isMushroom(x1,y1+1) or world.isMushroom(x2-1,y2) or world.isMushroom(x3,y3-1) or world.isMushroom(x4+1,y4-2) or world.isTree(x1,y1+1) or world.isTree(x2-1,y2) or world.isTree(x3,y3-1) or world.isTree(x4+1,y4-2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        y1 = y1+1
	                        x2 = x2-1
	                        y3 = y3-1
	                        x4 = x4+1
	                        y4 = y4-2
	                        m = 4
	                    end
	                end
	            elsif m == 4
	                if f > 1
	                    if world.isMushroom(x1-2,y1) or world.isMushroom(x2-1,y2-1) or world.isMushroom(x4+1,y4+1) or world.isTree(x1-2,y1) or world.isTree(x2-1,y2-1) or world.isTree(x4+1,y4+1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-2
	                        x2 = x2-1
	                        y2 = y2-1
	                        x4 = x4+1
	                        y4 = y4+1
	                        m = 1
	                    end
	                end
	            end
	        end
	        if r == 5 and world.isMushroom(8,26)
	            if m == 1
	                if f > 1
	                    if world.isMushroom(x1+2,y1) or world.isMushroom(x2+1,y2+1) or world.isMushroom(x4-1,y4-1) or world.isTree(x1+2,y1) or world.isTree(x2+1,y2+1) or world.isTree(x4-1,y4-1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+2
	                        x2 = x2+1
	                        y2 = y2+1
	                        x4 = x4-1
	                        y4 = y4-1
	                        m = 4
	                    end
	                end
	            elsif m == 2
	                if f > 1
	                    if world.isMushroom(x1,y1+2) or world.isMushroom(x2-1,y2+1) or world.isMushroom(x4+1,y4-1) or world.isTree(x1,y1+2) or world.isTree(x2-1,y2+1) or world.isTree(x4+1,y4-1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        y1 = y1+2
	                        x2 = x2-1
	                        y2 = y2+1
	                        x4 = x4+1
	                        y4 = y4-1
	                        m = 1
	                    end
	                end
	            elsif m == 3
	                if f > 1
	                    if world.isMushroom(x1-2,y1-1) or world.isMushroom(x2-1,y2-2) or world.isMushroom(x3,y3-1) or world.isMushroom(x4+1,y4) or world.isTree(x1-2,y1-1) or world.isTree(x2-1,y2-2) or world.isTree(x3,y3-1) or world.isTree(x4+1,y4)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-2
	                        y1 = y1-1
	                        x2 = x2-1
	                        y2 = y2-2
	                        y3 = y3-1
	                        x4 = x4+1
	                        m = 2
	                    end
	                end
	            elsif m == 4
	                if f > 1
	                    if world.isMushroom(x1,y1-1) or world.isMushroom(x2+1,y3) or world.isMushroom(x3,y3+1) or world.isMushroom(x4-1,y4+2) or world.isTree(x1,y1-1) or world.isTree(x2+1,y3) or world.isTree(x3,y3+1) or world.isTree(x4-1,y4+2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        y1 = y1-1
	                        x2 = x2+1
	                        y3 = y3+1
	                        x4 = x4-1
	                        y4 = y4+2
	                        m = 3
	                    end
	                end
	            end
	        end
	        if r == 6 and world.isMushroom(11,26)
	            if m == 1
	                if f > 1
	                    if world.isMushroom(x1+1,y1-1) or world.isMushroom(x3-1,y3+1) or world.isMushroom(x4-2,y4) or world.isTree(x1+1,y1-1) or world.isTree(x3-1,y3+1) or world.isTree(x4-2,y4)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y1 = y1-1
	                        x3 = x3-1
	                        y3 = y3+1
	                        x4 = x4-2
	                        m = 2
	                    end
	                end
	            elsif m == 2
	                if f > 1
	                    if world.isMushroom(x1+1,y1+2) or world.isMushroom(x2,y2+1) or world.isMushroom(x3-1,y3) or world.isMushroom(x4,y4-1) or world.isTree(x1+1,y1+2) or world.isTree(x2,y2+1) or world.isTree(x3-1,y3) or world.isTree(x4,y4-1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y1 = y1+2
	                        y2 = y2+1
	                        x3 = x3-1
	                        y4 = y4-1
	                        m = 3
	                    end
	                end
	            elsif m == 3
	                if f > 1
	                    if world.isMushroom(x1-1,y1) or world.isMushroom(x2,y2-1) or world.isMushroom(x3+1,y3-2) or world.isMushroom(x4+2,y4-1) or world.isTree(x1-1,y1) or world.isTree(x2,y2-1) or world.isTree(x3+1,y3-2) or world.isTree(x4+2,y4-1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y2 = y2-1
	                        x3 = x3+1
	                        y3 = y3-2
	                        x4 = x4+2
	                        y4 = y4-1
	                        m = 4
	                    end
	                end
	            elsif m == 4
	                if f > 1
	                    if world.isMushroom(x1-1,y1-1) or world.isMushroom(x3+1,y3+1) or world.isMushroom(x4,y4+2) or world.isTree(x1-1,y1-1) or world.isTree(x3+1,y3+1) or world.isTree(x4,y4+2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y1 = y1-1
	                        x3 = x3+1
	                        y3 = y3+1
	                        y4 = y4+2
	                        m = 1
	                    end
	                end
	            end
	        end
	        if r == 6 and world.isMushroom(8,26)
	            if m == 1
	                if f > 1
	                    if world.isMushroom(x1+1,y1+1) or world.isMushroom(x3-1,y3-1) or world.isMushroom(x4,y4-2) or world.isTree(x1+1,y1+1) or world.isTree(x3-1,y3-1) or world.isTree(x4,y4-2)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y1 = y1+1
	                        x3 = x3-1
	                        y3 = y3-1
	                        y4 = y4-2
	                        m = 4
	                    end
	                end
	            elsif m == 2
	                if f > 1
	                    if world.isMushroom(x1-1,y1+1) or world.isMushroom(x3+1,y3-1) or world.isMushroom(x4+2,y4) or world.isTree(x1-1,y1+1) or world.isTree(x3+1,y3-1) or world.isTree(x4+2,y4)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y1 = y1+1
	                        x3 = x3+1
	                        y3 = y3-1
	                        x4 = x4+2
	                        m = 1
	                    end
	                end
	            elsif m == 3
	                if f > 1
	                    if world.isMushroom(x1-1,y1-2) or world.isMushroom(x2,y2-1) or world.isMushroom(x3+1,y3) or world.isMushroom(x4,y4+1) or world.isTree(x1-1,y1-2) or world.isTree(x2,y2-1) or world.isTree(x3+1,y3) or world.isTree(x4,y4+1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1-1
	                        y1 = y1-2
	                        y2 = y2-1
	                        x3 = x3+1
	                        y4 = y4+1
	                        m = 2
	                    end
	                end
	            elsif m == 4
	                if f > 1
	                    if world.isMushroom(x1+1,y1) or world.isMushroom(x2,y2+1) or world.isMushroom(x3-1,y3+2) or world.isMushroom(x4-2,y4+1) or world.isTree(x1+1,y1) or world.isTree(x2,y2+1) or world.isTree(x3-1,y3+2) or world.isTree(x4-2,y4+1)
	                    else
		                    world.setLeaf(x1,y1,false)
						    world.setLeaf(x2,y2,false)
						    world.setLeaf(x3,y3,false)
						    world.setLeaf(x4,y4,false)
	                        x1 = x1+1
	                        y2 = y2+1
	                        x3 = x3-1
	                        y3 = y3+2
	                        x4 = x4-2
	                        y4 = y4+1
	                        m = 3
	                    end
	                end
	            end
	        end
	        world.setLeaf(x1,y1,true)
		    world.setLeaf(x2,y2,true)
		    world.setLeaf(x3,y3,true)
		    world.setLeaf(x4,y4,true)
	        world.setMushroom(11,26,false)
	        world.setMushroom(8,26,false)
	    end
	    dd = dd+1
	end
	Output(kara,tools,world,app_path,menu,"Du hast verlohren!! Du konntest #{p} Pilz-Reihen entvernen","","")
	doler = File.open(my_path+"coin.txt").read.to_f
	up = File.open(my_path+"updates.txt").read
	bon = up[23].chr.to_i
	au = p.to_i*7
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