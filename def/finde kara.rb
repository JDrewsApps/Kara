def finde_kara(pack)
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
pun = 0
world.setSize(17,17)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
while k == 0
	world.clearAll
	b = 1
	kar = 0
	b1 = 21
	b2 = 22
	b3 = 23
	f11 = 0
	f12 = 0
	f13 = 0
	f21 = 1
	f22 = 1
	f23 = 1
	f31 = 0
	f32 = 0
	f33 = 0
	if pun < 4
        time = 250
    elsif pun < 6
        time = 200
    elsif pun < 8
        time = 150
    elsif pun < 11
        time = 100
    elsif pun < 14
        time = 80
    elsif pun < 16
        time = 60
    else
        time = 50
    end
	of = (pun+1)*10
	count = 0
	of.times do
	    count = count+1
	    if count == 1
	        ka = tools.random(2)
	        kara.setPosition(2+(ka*6),8)
	        kar = ka+1
	    end
		if b1 == 11 or b2 == 11 or b3 == 11
			for j in 1..5
			    world.setLeaf(j-1,0,true)
			    world.setLeaf(j-1,4,true)
			end
			for j in 1..5
			    world.setLeaf(0,-1+j,true)
			    world.setLeaf(4,-1+j,true)
			end
		end
		if b1 == 12 or b2 == 12 or b3 == 12
			for j in 1..5
			    world.setLeaf(j+5,0,true)
			    world.setLeaf(j+5,4,true)
			end
			for j in 1..5
			    world.setLeaf(6,-1+j,true)
			    world.setLeaf(10,-1+j,true)
			end
		end
		if b1 == 13 or b2 == 13 or b3 == 13
			for j in 1..5
			    world.setLeaf(j+11,0,true)
			    world.setLeaf(j+11,4,true)
			end
			for j in 1..5
			    world.setLeaf(12,-1+j,true)
			    world.setLeaf(16,-1+j,true)
			end
		end
		
		if b1 == 21 or b2 == 21 or b3 == 21
			for j in 1..5
			    world.setLeaf(j-1,6,true)
			    world.setLeaf(j-1,10,true)
			end
			for j in 1..5
			    world.setLeaf(0,5+j,true)
			    world.setLeaf(4,5+j,true)
			end
		end
		if b1 == 22 or b2 == 22 or b3 == 22
			for j in 1..5
			    world.setLeaf(j+5,6,true)
			    world.setLeaf(j+5,10,true)
			end
			for j in 1..5
			    world.setLeaf(6,5+j,true)
			    world.setLeaf(10,5+j,true)
			end
		end
		if b1 == 23 or b2 == 23 or b3 == 23
			for j in 1..5
			    world.setLeaf(j+11,6,true)
			    world.setLeaf(j+11,10,true)
			end
			for j in 1..5
			    world.setLeaf(12,5+j,true)
			    world.setLeaf(16,5+j,true)
			end
		end
		if b1 == 31 or b2 == 31 or b3 == 31
			for j in 1..5
			    world.setLeaf(j-1,12,true)
			    world.setLeaf(j-1,16,true)
			end
			for j in 1..5
			    world.setLeaf(0,11+j,true)
			    world.setLeaf(4,11+j,true)
			end
		end
		if b1 == 32 or b2 == 32 or b3 == 32
			for j in 1..5
			    world.setLeaf(j+5,12,true)
			    world.setLeaf(j+5,16,true)
			end
			for j in 1..5
			    world.setLeaf(6,11+j,true)
			    world.setLeaf(10,11+j,true)
			end
		end
		if b1 == 33 or b2 == 33 or b3 == 33
			for j in 1..5
			    world.setLeaf(j+11,12,true)
			    world.setLeaf(j+11,16,true)
			end
			for j in 1..5
			    world.setLeaf(12,11+j,true)
			    world.setLeaf(16,11+j,true)
			end
		end
	    if b == 1
	        arry = []
	        if b1 == 11
	            arry.push(11)
	            if f21 == 0
	                arry.push(21)
	            end
	            if f12 == 0
	                arry.push(12)
	            end
	        elsif b1 == 12
	            arry.push(12)
	            if f11 == 0
	                arry.push(11)
	            end
	            if f13 == 0
	                arry.push(13)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b1 == 13
	            arry.push(13)
	            if f12 == 0
	                arry.push(12)
	            end
	            if f23 == 0
	                arry.push(23)
	            end
	        elsif b1 == 21
	            arry.push(21)
	            if f11 == 0
	                arry.push(11)
	            end
	            if f31 == 0
	                arry.push(31)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b1 == 22
	            arry.push(22)
	            if f12 == 0
	                arry.push(12)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	            if f21 == 0
	                arry.push(21)
	            end
	            if f23 == 0
	                arry.push(23)
	            end
	        elsif b1 == 23
	            arry.push(23)
	            if f13 == 0
	                arry.push(13)
	            end
	            if f33 == 0
	                arry.push(33)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b1 == 31
	            arry.push(31)
	            if f21 == 0
	                arry.push(21)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	        elsif b1 == 32
	            arry.push(32)
	            if f31 == 0
	                arry.push(31)
	            end
	            if f33 == 0
	                arry.push(33)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b1 == 33
	            arry.push(33)
	            if f23 == 0
	                arry.push(23)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	        end
            if not count == of
	           b1 = arry[tools.random(arry.size-1)]
            end
	        b = 2
	    elsif b == 2
	        arry = []
	        if b2 == 11
	            arry.push(11)
	            if f21 == 0
	                arry.push(21)
	            end
	            if f12 == 0
	                arry.push(12)
	            end
	        elsif b2 == 12
	            arry.push(12)
	            if f11 == 0
	                arry.push(11)
	            end
	            if f13 == 0
	                arry.push(13)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b2 == 13
	            arry.push(13)
	            if f12 == 0
	                arry.push(12)
	            end
	            if f23 == 0
	                arry.push(23)
	            end
	        elsif b2 == 21
	            arry.push(21)
	            if f11 == 0
	                arry.push(11)
	            end
	            if f31 == 0
	                arry.push(31)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b2 == 22
	            arry.push(22)
	            if f12 == 0
	                arry.push(12)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	            if f21 == 0
	                arry.push(21)
	            end
	            if f23 == 0
	                arry.push(23)
	            end
	        elsif b2 == 23
	            arry.push(23)
	            if f13 == 0
	                arry.push(13)
	            end
	            if f33 == 0
	                arry.push(33)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b2 == 31
	            arry.push(31)
	            if f21 == 0
	                arry.push(21)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	        elsif b2 == 32
	            arry.push(32)
	            if f31 == 0
	                arry.push(31)
	            end
	            if f33 == 0
	                arry.push(33)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b2 == 33
	            arry.push(33)
	            if f23 == 0
	                arry.push(23)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	        end
            if not count == of
	           b2 = arry[tools.random(arry.size-1)]
            end
	        b = 3
	    elsif b == 3
	        arry = []
	        if b3 == 11
	            arry.push(11)
	            if f21 == 0
	                arry.push(21)
	            end
	            if f12 == 0
	                arry.push(12)
	            end
	        elsif b3 == 12
	            arry.push(12)
	            if f11 == 0
	                arry.push(11)
	            end
	            if f13 == 0
	                arry.push(13)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b3 == 13
	            arry.push(13)
	            if f12 == 0
	                arry.push(12)
	            end
	            if f23 == 0
	                arry.push(23)
	            end
	        elsif b3 == 21
	            arry.push(21)
	            if f11 == 0
	                arry.push(11)
	            end
	            if f31 == 0
	                arry.push(31)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b3 == 22
	            arry.push(22)
	            if f12 == 0
	                arry.push(12)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	            if f21 == 0
	                arry.push(21)
	            end
	            if f23 == 0
	                arry.push(23)
	            end
	        elsif b3 == 23
	            arry.push(23)
	            if f13 == 0
	                arry.push(13)
	            end
	            if f33 == 0
	                arry.push(33)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b3 == 31
	            arry.push(31)
	            if f21 == 0
	                arry.push(21)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	        elsif b3 == 32
	            arry.push(32)
	            if f31 == 0
	                arry.push(31)
	            end
	            if f33 == 0
	                arry.push(33)
	            end
	            if f22 == 0
	                arry.push(22)
	            end
	        elsif b3 == 33
	            arry.push(33)
	            if f23 == 0
	                arry.push(23)
	            end
	            if f32 == 0
	                arry.push(32)
	            end
	        end
	        if not count == of
	           b3 = arry[tools.random(arry.size-1)]
            end
	        b = 1
	    end
	    if b1 == 11 or b2 == 11 or b3 == 11
	        f11 = 1
	    else
	        f11 = 0
	    end
	    if b1 == 12 or b2 == 12 or b3 == 12
	        f12 = 1
	    else
	        f12 = 0
	    end
	    if b1 == 13 or b2 == 13 or b3 == 13
	        f13 = 1
	    else
	        f13 = 0
	    end
	    if b1 == 21 or b2 == 21 or b3 == 21
	        f21 = 1
	    else
	        f21 = 0
	    end
	    if b1 == 22 or b2 == 22 or b3 == 22
	        f22 = 1
	    else
	        f22 = 0
	    end
	    if b1 == 23 or b2 == 23 or b3 == 23
	        f23 = 1
	    else
	        f23 = 0
	    end
	    if b1 == 31 or b2 == 31 or b3 == 31
	        f31 = 1
	    else
	        f31 = 0
	    end
	    if b1 == 32 or b2 == 32 or b3 == 32
	        f32 = 1
	    else
	        f32 = 0
	    end
	    if b1 == 33 or b2 == 33 or b3 == 33
	        f33 = 1
	    else
	        f33 = 0
	    end
	    tools.checkState
	    if count == 1
	        tools.sleep(2000)
	    else
	        tools.sleep(time)
	    end
	    if not of == count
	        world.clearAll
	    end
	end
    for i in 0..16
        for j in 0..16
            if world.isLeaf(i,j)
                world.setLeaf(i,j,false)
                world.setTree(i,j,true)
            end
        end
    end
    p = 0
    appin = ""
    if menu == "app"
        str = "c/"
	    if f11 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f12 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f13 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f21 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f22 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f23 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f31 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f32 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    if f33 == 1
	        str = str+"x/"
	    else
	        str = str+"n/"
	    end
	    str = str+"s%"
	    appin = Control2(kara,tools,world,app_path,str,nil,nil)
	    appin = appin.to_i
    end
    while p == 0 and k == 0
        ii = 0
        jj = 0
        if appin == 1
            ii = 2
            jj = 2
        elsif appin == 2
            ii = 8
            jj = 2
        elsif appin == 3
            ii = 14
            jj = 2
        elsif appin == 4
            ii = 2
            jj = 8
        elsif appin == 5
            ii = 8
            jj = 8
        elsif appin == 6
            ii = 14
            jj = 8
        elsif appin == 7
            ii = 2
            jj = 14
        elsif appin == 8
            ii = 8
            jj = 14
        elsif appin == 9
            ii = 14
            jj = 14
        end
        i = ii
        j = jj
        
        if menu == "app"
            if kar == 1
                wo = b1
            elsif kar == 2
                wo = b2
            elsif kar == 3
                wo = b3
            end
            ge = 0
            if i > 0 and i < 4 and j > 0 and j < 4
                if wo == 11
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 6 and i < 10 and j > 0 and j < 4
                if wo == 12
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 12 and i < 16 and j > 0 and j < 4
                if wo == 13
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 0 and i < 4 and j > 6 and j < 10
                if wo == 21
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 6 and i < 10 and j > 6 and j < 10
                if wo == 22
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 12 and i < 16 and j > 6 and j < 10
                if wo == 23
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 0 and i < 4 and j > 12 and j < 16
                if wo == 31
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 6 and i < 10 and j > 12 and j < 16
                if wo == 32
                    ge = 1
                else
                    k = 1
                end
            end
            if i > 12 and i < 16 and j > 12 and j < 16
                if wo == 33
                    ge = 1
                else
                    k = 1
                end
            end
            if ge == 1
                pun = pun+1
                p = 1
            end
        else
            zz = 0
		    for i in 0..16
	            for j in 0..16
	                if world.isMushroom(i,j) and zz == 0
                        
		                if kar == 1
		                    wo = b1
		                elsif kar == 2
		                    wo = b2
		                elsif kar == 3
		                    wo = b3
		                end
	                    ge = 0
	                    if i > 0 and i < 4 and j > 0 and j < 4 and f11 == 1
	                        if wo == 11
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 6 and i < 10 and j > 0 and j < 4 and f12 == 1
	                        if wo == 12
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 12 and i < 16 and j > 0 and j < 4 and f13 == 1
	                        if wo == 13
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 0 and i < 4 and j > 6 and j < 10 and f21 == 1
	                        if wo == 21
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 6 and i < 10 and j > 6 and j < 10 and f22 == 1
	                        if wo == 22
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 12 and i < 16 and j > 6 and j < 10 and f23 == 1
	                        if wo == 23
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 0 and i < 4 and j > 12 and j < 16 and f31 == 1
	                        if wo == 31
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 6 and i < 10 and j > 12 and j < 16 and f32 == 1
	                        if wo == 32
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if i > 12 and i < 16 and j > 12 and j < 16 and f33 == 1
	                        if wo == 33
		                        ge = 1
	                        else
	                            k = 1
	                        end
                            zz = 1
	                    end
	                    if ge == 1
	                        pun = pun+1
	                        p = 1
	                    end
		            end
		        end
		    end   
        end
    end
end
Output(kara,tools,world,app_path,menu,"Da war Kara nicht! Du konntest ihn insgesammt #{pun} mal finden.","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[15].chr.to_i
au = pun.to_i*6
if not menu == "app"
  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
else
  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
end
z = File.new(my_path+"coin.txt", "w+")
z.puts(doler+(au*bon))
z.close
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end