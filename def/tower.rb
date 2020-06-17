def tower(pack)
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
t = 0
tools.sleep(800)
world.setSize(12,13)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
world.clearAll
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/13*10+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/12*6+y[0].to_i).round
	ss = "Space;"+s2.to_s+";"+s1.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/n/n/n/m/n/n/n/n/s%",nil,nil)
end
while k == 0
    if p < 6
        t = 250
    elsif p < 11
        t = 225
    elsif p < 16
        t = 200
    elsif p < 21
        t = 175
    elsif p < 26
        t = 150
    elsif p < 31
        t = 125
    else
        t = 100
    end
	world.clearAll
	for i in 0..11
	    world.setTree(i,0,true)
	    world.setTree(i,6,true)
	end
	for i in 1..4
	    world.setTree(0,i,true)
	    world.setTree(11,i,true)
	end
	world.setLeaf(5,8,true)
	world.setLeaf(6,8,true)
	world.setLeaf(5,11,true)
	world.setLeaf(6,11,true)
	world.setLeaf(7,9,true)
	world.setLeaf(7,10,true)
	world.setLeaf(4,9,true)
	world.setLeaf(4,10,true)
	kara.setPosition(0,5)
	x = tools.random(9)
	if x == 0
	    world.setTree(4,5,true)
	    world.setTree(5,5,true)
	    world.setTree(6,5,true)
	    world.setTree(7,5,true)
	end
    if x == 1
	    world.setTree(4,5,true)
	    world.setTree(7,5,true)
	end
    if x == 2
	    world.setTree(5,5,true)
	    world.setTree(6,5,true)
	    world.setTree(6,4,true)
        world.setTree(7,4,true)
        world.setTree(7,3,true)
	    world.setTree(7,5,true)
	end
    if x == 3
	    world.setTree(4,5,true)
	    world.setTree(5,5,true)
	    world.setTree(6,5,true)
        world.setTree(5,4,true)
	    world.setTree(6,4,true)
	    world.setTree(7,5,true)
	end
    if x == 4
	    world.setTree(6,5,true)
	end
    if x == 5
	    world.setTree(5,5,true)
	    world.setTree(6,5,true)
	    world.setTree(7,5,true)
        world.setTree(8,5,true)
	    world.setTree(9,5,true)
	    world.setTree(6,4,true)
        world.setTree(8,4,true)
	end
    if x == 6
	    world.setTree(4,5,true)
	end
    if x == 7
	    world.setTree(1,4,true)
	    world.setTree(2,4,true)
	    world.setTree(4,5,true)
        world.setTree(6,4,true)
	    world.setTree(8,5,true)
	    world.setTree(10,4,true)
	end
    if x == 8
	    world.setTree(1,3,true)
	    world.setTree(2,3,true)
	    world.setTree(3,3,true)
        world.setTree(4,3,true)
	    world.setTree(4,2,true)
	    world.setTree(5,2,true)
        world.setTree(6,2,true)
        world.setTree(7,2,true)
        world.setTree(8,2,true)
        world.setTree(8,3,true)
        world.setTree(9,3,true)
        world.setTree(10,3,true)
        world.setTree(3,5,true)
        world.setTree(4,5,true)
        world.setTree(5,5,true)
        world.setTree(6,5,true)
        world.setTree(7,5,true)
        world.setTree(8,5,true)
        world.setTree(9,5,true)
        world.setTree(6,4,true)
	end
    if x == 9
	    world.setTree(5,5,true)
	    world.setTree(7,5,true)
	    world.setTree(9,5,true)
	end
	kk = 0
	f = 0
	while kk == 0
		f = f+1
		if f == t
		    f = 0
			if not kara.treeFront
                kara.move
                kx = kara.getPosition.getX
	            ky = kara.getPosition.getY
	            if not world.isTree(kx,ky+1)
	                kara.setPosition(kx,ky+1)
	            end
			else
			    k = 1
			    kk = 1
			end
		end
	    kx = kara.getPosition.getX
	    ky = kara.getPosition.getY
        con = Control(kara,tools,world,app_path,"",nil,nil)
        if con == "m"
            world.setMushroom(5,9,true)
        end
	    for i in 5..6
	        if world.isMushroom(i,9) or world.isMushroom(i,10)
	            world.setMushroom(i,9,false)
	            world.setMushroom(i,10,false)
                if world.isTree(kx,ky+1)
                    if not world.isTree(kx,ky-1)
                        kara.setPosition(kx,ky-1)
                    else
                        k = 1
                        kk = 1
                    end
                end
	        end
	    end
        if ky == 5 and kx == 11
            kk = 1
            p = p+1
        end
	end
end
Output(kara,tools,world,app_path,menu,"Du hast verlohren!! Kara ist bis ins #{p}ste Stockwerk gekommen","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[19].chr.to_i
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