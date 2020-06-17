def blatt_suche(pack)
	kara = pack[0]
	tools = pack[1]
	world = pack[2]
	my_path = pack[3]
	menu = pack[4]
	global_path = pack[5]
	ip = pack[6]
	name = pack[7]
	app_path = pack[8]
	  blevel = 1
	  blaetter = 0
	  versuch = 1
	  k = 0
	  while versuch == 1 and k == 0
	    if blaetter == 5
	      blevel = blevel +1
	    end
	    if blaetter == 10
	      blevel = blevel +1
	    end
	    if blaetter == 15
	      blevel = blevel +1
	    end 
	    if blaetter == 20
	      blevel = blevel +1
	    end           
	    bs = tools.random (8)+1
	    
	    world.clearAll
	    world.setSize(17,17)
	    `"#{my_path}"mouse zoomKara`
        `"#{my_path}"mouse setKaraMushroom`
	    for i in 0..2
	        for j in 0..2
	            world.setTree (0+i*6,0+j*6,true)
	            world.setTree (1+i*6,0+j*6,true)
	            world.setTree (2+i*6,0+j*6,true)
	            world.setTree (3+i*6,0+j*6,true)
	            world.setTree (4+i*6,0+j*6,true)
	            world.setTree (0+i*6,4+j*6,true)
	            world.setTree (1+i*6,4+j*6,true)
	            world.setTree (2+i*6,4+j*6,true)
	            world.setTree (3+i*6,4+j*6,true)
	            world.setTree (4+i*6,4+j*6,true)
	            world.setTree (0+i*6,0+j*6,true)
	            world.setTree (0+i*6,1+j*6,true)
	            world.setTree (0+i*6,2+j*6,true)
	            world.setTree (0+i*6,3+j*6,true)
	            world.setTree (0+i*6,4+j*6,true)
	            world.setTree (4+i*6,0+j*6,true)
	            world.setTree (4+i*6,1+j*6,true)
	            world.setTree (4+i*6,2+j*6,true)
	            world.setTree (4+i*6,3+j*6,true)
	            world.setTree (4+i*6,4+j*6,true)
	        end
	    end
	    for i in 0..2
	        for j in 0..2
	            for l in 0..2
	                for m in 0..2
	                    world.setMushroom (1+i*6+j,1+l*6+m,true)
	                end
	            end
	        end
	    end
	    
	    rx = tools.random (2)
	    ry = tools.random (2)
	    if bs == 1
	        world.setLeaf (1+rx,1+ry,true)
	    elsif bs == 2
	        world.setLeaf (7+rx,1+ry,true)
	    elsif bs == 3
	        world.setLeaf (13+rx,1+ry,true)
	    elsif bs == 4
	        world.setLeaf (1+rx,7+ry,true)
	    elsif bs == 5
	        world.setLeaf (7+rx,7+ry,true)
	    elsif bs == 6
	        world.setLeaf (13+rx,7+ry,true)
	    elsif bs == 7
	        world.setLeaf (1+rx,13+ry,true)
	    elsif bs == 8
	        world.setLeaf (7+rx,13+ry,true)
	    elsif bs == 9
	        world.setLeaf (13+rx,13+ry,true)
	    end
	    if blevel == 1
	    tools.sleep (3000)
	    elsif blevel == 2
	    tools.sleep (2000)
	    elsif blevel == 3
	    tools.sleep (1300)
	    elsif blevel == 4
	    tools.sleep (800)
	    elsif blevel == 5
	    tools.sleep (500)
	    end 
	    world.clearAll
        for i in 0..2
	        for j in 0..2
	            world.setTree (0+i*6,0+j*6,true)
	            world.setTree (1+i*6,0+j*6,true)
	            world.setTree (2+i*6,0+j*6,true)
	            world.setTree (3+i*6,0+j*6,true)
	            world.setTree (4+i*6,0+j*6,true)
	            world.setTree (0+i*6,4+j*6,true)
	            world.setTree (1+i*6,4+j*6,true)
	            world.setTree (2+i*6,4+j*6,true)
	            world.setTree (3+i*6,4+j*6,true)
	            world.setTree (4+i*6,4+j*6,true)
	            world.setTree (0+i*6,0+j*6,true)
	            world.setTree (0+i*6,1+j*6,true)
	            world.setTree (0+i*6,2+j*6,true)
	            world.setTree (0+i*6,3+j*6,true)
	            world.setTree (0+i*6,4+j*6,true)
	            world.setTree (4+i*6,0+j*6,true)
	            world.setTree (4+i*6,1+j*6,true)
	            world.setTree (4+i*6,2+j*6,true)
	            world.setTree (4+i*6,3+j*6,true)
	            world.setTree (4+i*6,4+j*6,true)
	        end
	    end
        s = 0
        if menu == "normal"
	        while s == 0
		        for hx in 1..15
		          for hy in 1..15
		            if world.isMushroom(hx,hy)
		              if hx>0 and hx<4 and hy>0 and hy<4
	                    s = 1
	                  elsif hx>6 and hx<10 and hy>0 and hy<4
	                    s = 2
	                  elsif hx>12 and hx<16 and hy>0 and hy<4
	                    s = 3
	                  elsif hx>0 and hx<4 and hy>6 and hy<10
	                    s = 4
	                  elsif hx>6 and hx<10 and hy>6 and hy<10
	                    s = 5
	                  elsif hx>12 and hx<16 and hy>6 and hy<10
	                    s = 6
	                  elsif hx>0 and hx<4 and hy>12 and hy<16
	                    s = 7
	                  elsif hx>6 and hx<10 and hy>12 and hy<16
	                    s = 8
	                  elsif hx>12 and hx<16 and hy>12 and hy<16
	                    s = 9
	                  end
		            end
		          end
		        end
	        end
        elsif menu == "app"
            s = Control2(kara,tools,world,app_path,"c/x/x/x/x/x/x/x/x/x/s%",nil,nil)
            s = s.to_i
        end
	    if not (s == bs)
	      versuch = versuch - 1
	    elsif s == bs
	      blaetter = blaetter+1
	    end
	  end#while
	  Output(kara,tools,world,app_path,menu,"Du hast verloren Kara konnte #{blaetter} Blätter finden","","")
	  doler = File.open(my_path+"coin.txt").read.to_f
	  up = File.open(my_path+"updates.txt").read
	    bon = up[3].chr.to_i
	  au = (blaetter.to_i*3)
	  if not menu == "app"
	    Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
	  else
	    Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
	  end
	  z = File.new(my_path+"coin.txt", "w+")
	  z.puts(doler+(au*bon))
	  Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end    