def bling(pack)
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
world.setSize(15,26)
world.clearAll
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/26*22.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/15*7.5+y[0].to_i).round
	ss = "Space;"+s2.to_s+";"+s1.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/n/n/n/m/n/n/n/n/s%",nil,nil)
end
for i in 0..14
    world.setTree(0,i,true)
    world.setTree(i,18,true)
    world.setTree(i,0,true)
    world.setTree(14,i,true)
end
world.setTree(14,15,true)
world.setTree(14,16,true)
world.setTree(14,17,true)
world.setTree(0,15,true)
world.setTree(0,16,true)
world.setTree(0,17,true)
world.setLeaf(6,20,true)
world.setLeaf(7,20,true)
world.setLeaf(8,20,true)
world.setLeaf(6,24,true)
world.setLeaf(7,24,true)
world.setLeaf(8,24,true)
world.setLeaf(5,21,true)
world.setLeaf(5,22,true)
world.setLeaf(5,23,true)
world.setLeaf(9,21,true)
world.setLeaf(9,22,true)
world.setLeaf(9,23,true)
kara.setPosition(7,16)
step = 1
step2 = 2
step3 = 1
k = 0
j = 0
jj = 0
l = 0
p = 0
r = "r"

x = 4
for i in 1..13
    world.setMushroom(i,17,true)
end
world.setMushroom(x,17,false)
world.setLeaf(x,17,true)
while k == 0
    if p < 6
	    sstep2 = 400
	    sstep3 = 200
	elsif p < 11
	    sstep2 = 350
	    sstep3 = 175
	elsif p < 16
	    sstep2 = 300
	    sstep3 = 150
	elsif p < 21
	    sstep2 = 250
	    sstep3 = 125
    elsif p < 26
	    sstep2 = 200
	    sstep3 = 100
    elsif p < 31
	    sstep2 = 150
	    sstep3 = 75
    elsif p < 36
	    sstep2 = 100
	    sstep3 = 50
    else
	    sstep2 = 50
	    sstep3 = 25
	end
    j = j+1
    if step2 > sstep2
        step2 = 0
    end
    if step3 > sstep3
        step3 = 0
    end
    if step2 == 1
        
        f = 0
        x = kara.getPosition.getX
        y = kara.getPosition.getY
        if y > 1
            if not world.isMushroom(x,y-1)
                kara.setPosition(x,y-1)
            end
        else
            k = 1
        end
        if k == 0
	        for g in 1..17
	            for i in 1..13
	                gg = g
	                if world.isMushroom(i,gg)
	                    f = 1
	                    world.setMushroom(i,gg,false)
	                    if gg > 1
	                        world.setMushroom(i,gg-1,true)
	                    end
	                end
                    if world.isLeaf(i,gg)
	                    world.setLeaf(i,gg,false)
	                    if gg > 1
	                        world.setLeaf(i,gg-1,true)
	                    end
	                end
	            end
	        end
	        ff = 0
	        for i in 1..13
	            if world.isMushroom(i,14)
	                ff = ff+1
	            end
	        end
	        if ff > 5
	            x = tools.random(12)+1
                if x > 1 and x < 13
                    xx = tools.random(3)
                    if xx == 0
                        world.setMushroom(x-1,16,true)
                    elsif xx == 1
                        world.setMushroom(x+1,16,true)
                    end
                end
		        for i in 1..13
		            world.setMushroom(i,17,true)
		        end
		        world.setMushroom(x,17,false)
                world.setLeaf(x,17,true)
	        end

	        tools.checkState
        end
    end
    if step3 == 1
        if r == "r"
            kara.setDirection(3)
        end
        if r == "l"
            kara.setDirection(1)
        end
        x = kara.getPosition.getX
        y = kara.getPosition.getY
        if x == 13 and r == "r"
            kk = 0
            while kk == 0
                x = kara.getPosition.getX
                y = kara.getPosition.getY
                if kara.onLeaf
			        kara.removeLeaf
			        p = p+1
			    end
                if y < 17
	                if not world.isMushroom(x,y+1)
	                    kara.setPosition(x,y+1)
	                else
	                    kk = 1
	                end
                else
                    kk = 1
                    k = 1
                end
            end
            if not world.isMushroom(1,y)
                kara.setPosition(1,y)
            end
        elsif x == 1 and r == "l"
            kk = 0
            while kk == 0
                x = kara.getPosition.getX
                y = kara.getPosition.getY
                if kara.onLeaf
			        kara.removeLeaf
			        p = p+1
			    end
                if y < 17
	                if not world.isMushroom(x,y+1)
	                    kara.setPosition(x,y+1)
	                else
	                    kk = 1
	                end
                else
                    kk = 1
                    k = 1
                end
            end
            if not world.isMushroom(13,y)
                kara.setPosition(13,y)
            end
        else
            kk = 0
            while kk == 0
                x = kara.getPosition.getX
                y = kara.getPosition.getY
                if kara.onLeaf
			        kara.removeLeaf
			        p = p+1
			    end
                if y < 17
	                if not world.isMushroom(x,y+1)
	                    kara.setPosition(x,y+1)
	                else
	                    kk = 1
	                end
                else
                    kk = 1
                    k = 1
                end
            end
            if not kara.mushroomFront
                kara.move
            end
        end
    end
    if kara.onLeaf
        kara.removeLeaf
        p = p+1
    end
    con = Control(kara,tools,world,app_path,"",nil,nil)
    if con == "m"
        world.setMushroom(7,22,true)
    end
    for i in 21..23
        for j in 6..8
            if world.isMushroom(j,i)
                world.setMushroom(j,i,false)
                if r == "r"
		            r = "l"
                elsif r == "l"
		            r = "r"
		        end
            end
        end
    end
    tools.sleep(1)
    step2 = step2+1
    step3 = step3+1
end
Output(kara,tools,world,app_path,menu,"Du hast verlohren!! Vorher konnte Kara #{p.to_s} Blätter fressen","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[20].chr.to_i
au = p.to_i*2
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