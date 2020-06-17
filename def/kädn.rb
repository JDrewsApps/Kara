def k�dn(pack)
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
    kk = 0
	world.clearAll
	world.setSize (19,19)
	`"#{my_path}"mouse zoomKara`
    coins = File.open(my_path+"coin.txt").read.to_i
    set = ""
    if coins < 0 or coins == 0
        Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
        k = 1
        kk = 1
    end
    if k == 0
        geset = Input(kara,tools,world,app_path,menu,"wie viele coins willst du setzen","i","","","")
        set = Input(kara,tools,world,app_path,menu,"setze auf eine Farbe","s","r/g","","")
	    if (coins - geset)>= 0
	        coins = coins-geset
	        newc = File.new(my_path+"coin.txt", "w+")
	        newc.puts(coins)
	        newc.close
	    else
	        Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
	        k = 1
            kk = 1
	    end
    end 
    sge = 0
    if set == "r"
        sge = 2
    elsif set == "g"
        sge = 1
    end
	sp = 1
	ge = 0
	f1 = -1
	f2 = -1
	world.setTree(0,0,true)
	world.setTree(1,0,true)
	world.setTree(2,0,true)
	world.setTree(3,0,true)
	world.setTree(4,0,true)
	world.setTree(5,0,true)
	world.setTree(6,0,true)
	world.setTree(6,1,true)
	world.setTree(6,2,true)
	world.setTree(6,3,true)
	world.setTree(6,4,true)
	world.setTree(6,5,true)
	world.setTree(6,6,true)
	world.setTree(5,6,true)
	world.setTree(4,6,true)
	world.setTree(3,6,true)
	world.setTree(2,6,true)
	world.setTree(1,6,true)
	world.setTree(0,6,true)
	world.setTree(0,5,true)
	world.setTree(0,4,true)
	world.setTree(0,3,true)
	world.setTree(0,2,true)
	world.setTree(0,1,true)
	world.setTree(10,6,true)
	world.setTree(14,6,true)
	world.setTree(14,5,true)
	world.setTree(14,4,true)
	world.setTree(4,13,true)
	world.setTree(4,9,true)
	world.setTree(10,13,true)
	world.setTree(12,13,true)
	world.setTree(13,12,true)
	world.setTree(12,11,true)
	world.setTree(11,11,true)
	world.setTree(10,10,true)
	world.setTree(12,9,true)
	world.setTree(15,12,true)
	world.setTree(15,11,true)
	world.setTree(15,10,true)
	world.setTree(18,10,true)
	world.setTree(18,12,true)
	world.setTree(10,18,true)
	world.setTree(11,18,true)
	world.setTree(10,16,true)
	world.setTree(12,16,true)
	world.setTree(12,18,true)
	world.setTree(4,8,true)
	world.setTree(5,8,true)
	world.setTree(6,8,true)
	world.setTree(7,8,true)
	world.setTree(8,8,true)
	world.setTree(8,7,true)
	world.setTree(8,6,true)
	world.setTree(8,5,true)
	world.setTree(8,4,true)
	world.setTree(10,7,true)
	world.setTree(10,8,true)
	world.setTree(12,6,true)
	world.setTree(12,7,true)
	world.setTree(12,8,true)
	world.setTree(10,9,true)
	world.setTree(14,7,true)
	world.setTree(14,8,true)
	world.setTree(9,10,true)
	world.setTree(8,10,true)
	world.setTree(6,10,true)
	world.setTree(7,10,true)
	world.setTree(11,10,true)
	world.setTree(12,10,true)
	world.setTree(4,10,true)
	world.setTree(4,11,true)
	world.setTree(6,11,true)
	world.setTree(6,12,true)
	world.setTree(7,12,true)
	world.setTree(8,12,true)
	world.setTree(9,12,true)
	world.setTree(10,12,true)
	world.setTree(11,12,true)
	world.setTree(12,12,true)
	world.setTree(10,11,true)
	world.setTree(9,11,true)
	world.setTree(8,11,true)
	world.setTree(7,11,true)
	world.setTree(4,12,true)
	world.setTree(4,14,true)
	world.setTree(5,14,true)
	world.setTree(6,14,true)
	world.setTree(7,14,true)
	world.setTree(8,14,true)
	world.setTree(10,14,true)
	world.setTree(10,15,true)
	world.setTree(8,15,true)
	world.setTree(8,16,true)
	world.setTree(8,17,true)
	world.setTree(8,18,true)
	world.setTree(9,18,true)
	world.setTree(12,15,true)
	world.setTree(12,14,true)
	world.setTree(13,18,true)
	world.setTree(14,18,true)
	world.setTree(14,17,true)
	world.setTree(14,16,true)
	world.setTree(14,15,true)
	world.setTree(14,14,true)
	world.setTree(13,10,true)
	world.setTree(14,10,true)
	world.setTree(16,10,true)
	world.setTree(13,11,true)
	world.setTree(14,11,true)
	world.setTree(16,11,true)
	world.setTree(14,12,true)
	world.setTree(16,12,true)
	world.setTree(15,14,true)
	world.setTree(16,14,true)
	world.setTree(17,14,true)
	world.setTree(18,14,true)
	world.setTree(18,13,true)
	world.setTree(18,11,true)
	world.setTree(18,9,true)
	world.setTree(18,8,true)
	world.setTree(15,8,true)
	world.setTree(16,8,true)
	world.setTree(17,8,true)
	world.setTree(9,4,true)
	world.setTree(10,4,true)
	world.setTree(11,4,true)
	world.setTree(12,4,true)
	world.setTree(13,4,true)
	world.setTree(11,7,true)
	world.setTree(11,8,true)
	world.setTree(11,9,true)
	world.setTree(11,13,true)
	world.setTree(11,14,true)
	world.setTree(11,15,true)
	while k == 0
	    x = tools.random(11)
	    if x == 0
	        x = 12
	    end
	    if sp == 1
	        z = 0
	        x.times do
		        z = z+1
		        if z == 7
		            z = 1
		        end
	            for i in 1..5
	                for j in 1..5
	                    world.setLeaf(i,j,false)
	                    world.setMushroom(i,j,false)
	                end
	            end
	            if z == 1
			      world.setLeaf(3,3,true)
			    end
			    if z == 2
			      world.setLeaf(5,1,true)
			      world.setLeaf(1,5,true)
			    end
			    if z == 3
			      world.setLeaf(3,3,true)
			      world.setLeaf(5,1,true)
			      world.setLeaf(1,5,true)
			    end
			    if z == 4
			      world.setLeaf(1,1,true)
			      world.setLeaf(5,1,true)
			      world.setLeaf(1,5,true)
			      world.setLeaf(5,5,true)
			    end
			    if z == 5
			      world.setLeaf(1,1,true)
			      world.setLeaf(3,3,true)
			      world.setLeaf(5,1,true)
			      world.setLeaf(1,5,true)
			      world.setLeaf(5,5,true)
			    end
			    if z == 6
			      world.setLeaf(1,1,true)
			      world.setLeaf(1,3,true)
			      world.setLeaf(5,1,true)
			      world.setLeaf(5,3,true)
			      world.setLeaf(1,5,true)
			      world.setLeaf(5,5,true)
			    end
	            tools.sleep(300)
	            tools.checkState
	        end
	        if f1 == -1 and z == 6
	            f1 = 0
	        elsif not f1 == -1
	            f1 = f1+z
	        end
	        if f1 > 47
	            f1 = f1-z
	        end
	        for i in 0..18
	            for j in 0..18
	                if i > 5 or j > 5
	                    if world.isLeaf(i,j)
	                        world.setLeaf(i,j,false)
	                    end
	                end
	            end
	        end
	        if f1 == 0
			  world.setLeaf(9,17,true)
			end
		    if f1 == 1
			  world.setLeaf(9,16,true)
			end
			if f1 == 2
			  world.setLeaf(9,15,true)
			end
			if f1 == 3
			  world.setLeaf(9,14,true)
			end
			if f1 == 4
			  world.setLeaf(9,13,true)
			end
			if f1 == 5
			  world.setLeaf(8,13,true)
			end
			if f1 == 6
			  world.setLeaf(7,13,true)
			end
			if f1 == 7
			  world.setLeaf(6,13,true)
			end
			if f1 == 8
			  world.setLeaf(5,13,true)
			end
			if f1 == 9
			  world.setLeaf(5,12,true)
			end
			if f1 == 10
			  world.setLeaf(5,11,true)
			end
			if f1 == 11
			  world.setLeaf(5,10,true)
			end
			if f1 == 12
			  world.setLeaf(5,9,true)
			end
			if f1 == 13
			  world.setLeaf(6,9,true)
			end
			if f1 == 14
			  world.setLeaf(7,9,true)
			end
			if f1 == 15
			  world.setLeaf(8,9,true)
			end
			if f1 == 16
			  world.setLeaf(9,9,true)
			end
			if f1 == 17
			  world.setLeaf(9,8,true)
			end
			if f1 == 18
			  world.setLeaf(9,7,true)
			end
			if f1 == 19
			  world.setLeaf(9,6,true)
			end
			if f1 == 20
			  world.setLeaf(9,5,true)
			end
			if f1 == 21
			  world.setLeaf(10,5,true)
			end
			if f1 == 22
			  world.setLeaf(11,5,true)
			end
			if f1 == 23
			  world.setLeaf(12,5,true)
			end
			if f1 == 24
			  world.setLeaf(13,5,true)
			end
			if f1 == 25
			  world.setLeaf(13,6,true)
			end
			if f1 == 26
			  world.setLeaf(13,7,true)
			end
			if f1 == 27
			  world.setLeaf(13,8,true)
			end
			if f1 == 28
			  world.setLeaf(13,9,true)
			end
			if f1 == 29
			  world.setLeaf(14,9,true)
			end
			if f1 == 30
			  world.setLeaf(15,9,true)
			end
			if f1 == 31
			  world.setLeaf(16,9,true)
			end
			if f1 == 32
			  world.setLeaf(17,9,true)
			end
			if f1 == 33
			  world.setLeaf(17,10,true)
			end
			if f1 == 34
			  world.setLeaf(17,11,true)
			end
			if f1 == 35
			  world.setLeaf(17,12,true)
			end
			if f1 == 36
			  world.setLeaf(17,13,true)
			end
			if f1 == 37
			  world.setLeaf(16,13,true)
			end
			if f1 == 38
			  world.setLeaf(15,13,true)
			end
			if f1 == 39
			  world.setLeaf(14,13,true)
			end
			if f1 == 40
			  world.setLeaf(13,13,true)
			end
			if f1 == 41
			  world.setLeaf(13,14,true)
			end
			if f1 == 42
			  world.setLeaf(13,15,true)
			end
			if f1 == 43
			  world.setLeaf(13,16,true)
			end
			if f1 == 44
			  world.setLeaf(13,17,true)
			end
			if f1 == 45
			  world.setLeaf(12,17,true)
			end
			if f1 == 46
			  world.setLeaf(11,17,true)
			end
	        if f1 == 47
			  world.setLeaf(11,16,true)
	          k = 1
	          ge = 1
			end
	        Output(kara,tools,world,app_path,menu,"Grün hat eine #{z.to_s} gewürfelt","","")
	        if z == 6
	            sp = 1
	        else
	            sp = 2
	        end
	    end
	    x = tools.random(11)
	    if x == 0
	        x = 12
	    end
        if not k == 1
		    if sp == 2
		        z = 0
		        x.times do
			        z = z+1
			        if z == 7
			            z = 1
			        end
		            for i in 1..5
		                for j in 1..5
		                    world.setLeaf(i,j,false)
		                    world.setMushroom(i,j,false)
		                end
		            end
		            if z == 1
				      world.setMushroom(3,3,true)
				    end
				    if z == 2
				      world.setMushroom(5,1,true)
				      world.setMushroom(1,5,true)
				    end
				    if z == 3
				      world.setMushroom(3,3,true)
				      world.setMushroom(5,1,true)
				      world.setMushroom(1,5,true)
				    end
				    if z == 4
				      world.setMushroom(1,1,true)
				      world.setMushroom(5,1,true)
				      world.setMushroom(1,5,true)
				      world.setMushroom(5,5,true)
				    end
				    if z == 5
				      world.setMushroom(1,1,true)
				      world.setMushroom(3,3,true)
				      world.setMushroom(5,1,true)
				      world.setMushroom(1,5,true)
				      world.setMushroom(5,5,true)
				    end
				    if z == 6
				      world.setMushroom(1,1,true)
				      world.setMushroom(1,3,true)
				      world.setMushroom(5,1,true)
				      world.setMushroom(5,3,true)
				      world.setMushroom(1,5,true)
				      world.setMushroom(5,5,true)
				    end
		            tools.sleep(300)
		            tools.checkState
		        end
		        if f2 == -1 and z == 6
		            f2 = 0
		        elsif not f2 == -1
		            f2 = f2+z
		        end
		        if f2 > 47
		            f2 = f2-z
		        end
		        for i in 0..18
		            for j in 0..18
		                if i > 5 or j > 5
		                    if world.isMushroom(i,j)
		                        world.setMushroom(i,j,false)
		                    end
		                end
		            end
		        end
		        if f2 == 0
				  world.setMushroom(13,5,true)
				end
			    if f2 == 1
				  world.setMushroom(13,6,true)
				end
				if f2 == 2
				  world.setMushroom(13,7,true)
				end
				if f2 == 3
				  world.setMushroom(13,8,true)
				end
				if f2 == 4
				  world.setMushroom(13,9,true)
				end
				if f2 == 5
				  world.setMushroom(14,9,true)
				end
				if f2 == 6
				  world.setMushroom(15,9,true)
				end
				if f2 == 7
				  world.setMushroom(16,9,true)
				end
				if f2 == 8
				  world.setMushroom(17,9,true)
				end
				if f2 == 9
				  world.setMushroom(17,10,true)
				end
				if f2 == 10
				  world.setMushroom(17,11,true)
				end
				if f2 == 11
				  world.setMushroom(17,12,true)
				end
				if f2 == 12
				  world.setMushroom(17,13,true)
				end
				if f2 == 13
				  world.setMushroom(16,13,true)
				end
				if f2 == 14
				  world.setMushroom(15,13,true)
				end
				if f2 == 15
				  world.setMushroom(14,13,true)
				end
				if f2 == 16
				  world.setMushroom(13,13,true)
				end
				if f2 == 17
				  world.setMushroom(13,14,true)
				end
				if f2 == 18
				  world.setMushroom(13,15,true)
				end
				if f2 == 19
				  world.setMushroom(13,16,true)
				end
				if f2 == 20
				  world.setMushroom(13,17,true)
				end
				if f2 == 21
				  world.setMushroom(12,17,true)
				end
				if f2 == 22
				  world.setMushroom(11,17,true)
				end
				if f2 == 23
				  world.setMushroom(10,17,true)
				end
				if f2 == 24
				  world.setMushroom(9,17,true)
				end
				if f2 == 25
				  world.setMushroom(9,16,true)
				end
				if f2 == 26
				  world.setMushroom(9,15,true)
				end
				if f2 == 27
				  world.setMushroom(9,14,true)
				end
				if f2 == 28
				  world.setMushroom(9,13,true)
				end
				if f2 == 29
				  world.setMushroom(8,13,true)
				end
				if f2 == 30
				  world.setMushroom(7,13,true)
				end
				if f2 == 31
				  world.setMushroom(6,13,true)
				end
				if f2 == 32
				  world.setMushroom(5,13,true)
				end
				if f2 == 33
				  world.setMushroom(5,12,true)
				end
				if f2 == 34
				  world.setMushroom(5,11,true)
				end
				if f2 == 35
				  world.setMushroom(5,10,true)
				end
				if f2 == 36
				  world.setMushroom(5,9,true)
				end
				if f2 == 37
				  world.setMushroom(6,9,true)
				end
				if f2 == 38
				  world.setMushroom(7,9,true)
				end
				if f2 == 39
				  world.setMushroom(8,9,true)
				end
				if f2 == 40
				  world.setMushroom(9,9,true)
				end
				if f2 == 41
				  world.setMushroom(9,8,true)
				end
				if f2 == 42
				  world.setMushroom(9,7,true)
				end
				if f2 == 43
				  world.setMushroom(9,6,true)
				end
				if f2 == 44
				  world.setMushroom(9,5,true)
				end
				if f2 == 45
				  world.setMushroom(10,5,true)
				end
				if f2 == 46
				  world.setMushroom(11,5,true)
				end
		        if f2 == 47
				  world.setMushroom(11,6,true)
		          k = 1
		          ge = 2
				end
		        Output(kara,tools,world,app_path,menu,"Rot hat eine #{z.to_s} gewürfelt","","")
		        if z == 6
		            sp = 2
		        else
		            sp = 1
		        end
		    end
        end
	end
    if kk == 0
	    if ge == sge
	        a = coins+geset+(geset/2).round
	        Output(kara,tools,world,app_path,menu,"Du hast gewonnen! Du bekommst #{(geset/2).round} coins","","")
	    else
	        a = coins-geset
	        Output(kara,tools,world,app_path,menu,"Du hast verloren! Du verlierst #{geset} coins","","")
	    end
	    coin2 = File.new(my_path + "coin.txt", "w+")
		coin2.puts(a)
		coin2.close  
    end
    Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end