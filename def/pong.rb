def pong(pack)
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
world.setSize(22,18)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/18*13.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/22*8.5+y[0].to_i).round
    s3 = ((y[3].to_i-y[1].to_i)/18*15.5+y[1].to_i).round
	s4 = ((y[2].to_i-y[0].to_i)/22*8.5+y[0].to_i).round
    s5 = ((y[3].to_i-y[1].to_i)/18*13.5+y[1].to_i).round
	s6 = ((y[2].to_i-y[0].to_i)/22*13.5+y[0].to_i).round
    s7 = ((y[3].to_i-y[1].to_i)/18*15.5+y[1].to_i).round
	s8 = ((y[2].to_i-y[0].to_i)/22*13.5+y[0].to_i).round
	ss = "W;"+s2.to_s+";"+s1.to_s+";S;"+s4.to_s+";"+s3.to_s+";Up;"+s6.to_s+";"+s5.to_s+";Down;"+s8.to_s+";"+s7.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/u/n/u/n/n/n/d/n/d/s%",nil,nil)
end
x = 6
y = 6
p = 0
rx = "r"
ry = "u"
world.setLeaf(8,12,true)
world.setLeaf(7,13,true)
world.setLeaf(9,13,true)
world.setLeaf(7,14,true)
world.setLeaf(8,14,true)
world.setLeaf(9,14,true)
world.setLeaf(7,15,true)
world.setLeaf(9,15,true)
world.setLeaf(8,16,true)
world.setLeaf(13,12,true)
world.setLeaf(12,13,true)
world.setLeaf(14,13,true)
world.setLeaf(12,14,true)
world.setLeaf(13,14,true)
world.setLeaf(14,14,true)
world.setLeaf(12,15,true)
world.setLeaf(14,15,true)
world.setLeaf(13,16,true)
world.setTree(0,4,true)
world.setTree(0,5,true)
world.setTree(0,6,true)
world.setTree(21,4,true)
world.setTree(21,5,true)
world.setTree(21,6,true)
for i in 0..21
    world.setMushroom(i,0,true)
    world.setMushroom(i,10,true)
end
kara.setPosition(1,5)
k = 0
while k == 0
  bx = kara.getPosition.getX.to_i
  cy = kara.getPosition.getY.to_i
  if cy == 9
    ry = "o"
  end
  if cy == 1
    ry = "u"
  end
  if bx == 1
    rx = "r"
  end
  if bx == 20
    rx = "l"
  end
  if rx == "r" and ry == "u" 
  bx = bx+1
  cy = cy+1
  end
  if rx == "r" and ry == "o" 
  bx = bx+1
  cy = cy-1
  end
  if rx == "l" and ry == "u" 
  bx = bx-1
  cy = cy+1
  end
  if rx == "l" and ry == "o" 
  bx = bx-1
  cy = cy-1
  end
  kara.setPosition(bx,cy)
  f1 = x
  f2 = y
  con = Control(kara,tools,world,app_path,"",nil,nil)
  if con == "ul"
    world.setMushroom(8,13,true)
  elsif con == "ur"
    world.setMushroom(13,13,true)
  elsif con == "dl"
    world.setMushroom(8,15,true)
  elsif con == "dr"
    world.setMushroom(13,15,true)
  end
  if world.isMushroom(8,13)
    x = x+1
    world.setMushroom(8,13,false)
  end
  if world.isMushroom(8,15)
    x = x-1
    world.setMushroom(8,15,false)
  end
  if world.isMushroom(13,13)
    y = y+1
    world.setMushroom(13,13,false)
  end
  if world.isMushroom(13,15)
    y = y-1
    world.setMushroom(13,15,false)
  end
  if x == 10
    x = 1
  end
  if x == 0
    x = 9
  end
  if y == 10
    y = 1
  end
  if y == 0
    y = 9
  end
  if world.isTree(0,1)
    world.setTree(0,1,false)
  end
  if world.isTree(0,2)
    world.setTree(0,2,false)
  end
  if world.isTree(0,3)
    world.setTree(0,3,false)
  end
  if world.isTree(0,4)
    world.setTree(0,4,false)
  end
  if world.isTree(0,5)
    world.setTree(0,5,false)
  end
  if world.isTree(0,6)
    world.setTree(0,6,false)
  end
  if world.isTree(0,7)
    world.setTree(0,7,false)
  end
  if world.isTree(0,8)
    world.setTree(0,8,false)
  end
  if world.isTree(0,9)
    world.setTree(0,9,false)
  end
  if world.isTree(21,1)
    world.setTree(21,1,false)
  end
  if world.isTree(21,2)
    world.setTree(21,2,false)
  end
  if world.isTree(21,3)
    world.setTree(21,3,false)
  end
  if world.isTree(21,4)
    world.setTree(21,4,false)
  end
  if world.isTree(21,5)
    world.setTree(21,5,false)
  end
  if world.isTree(21,6)
    world.setTree(21,6,false)
  end
  if world.isTree(21,7)
    world.setTree(21,7,false)
  end
  if world.isTree(21,8)
    world.setTree(21,8,false)
  end
  if world.isTree(21,9)
    world.setTree(21,9,false)
  end
  
  if x == 1
    world.setTree(0,9,true)
    world.setTree(0,1,true)
    world.setTree(0,2,true)
  end
  if x == 2
    world.setTree(0,8,true)
    world.setTree(0,9,true)
    world.setTree(0,1,true)
  end
  if x == 3
    world.setTree(0,7,true)
    world.setTree(0,8,true)
    world.setTree(0,9,true)
  end
  if x == 4
    world.setTree(0,6,true)
    world.setTree(0,7,true)
    world.setTree(0,8,true)
  end
  if x == 5
    world.setTree(0,5,true)
    world.setTree(0,6,true)
    world.setTree(0,7,true)
  end
  if x == 6
    world.setTree(0,4,true)
    world.setTree(0,5,true)
    world.setTree(0,6,true)
  end
  if x == 7
    world.setTree(0,3,true)
    world.setTree(0,4,true)
    world.setTree(0,5,true)
  end
  if x == 8
    world.setTree(0,2,true)
    world.setTree(0,3,true)
    world.setTree(0,4,true)
  end
  if x == 9
    world.setTree(0,1,true)
    world.setTree(0,2,true)
    world.setTree(0,3,true)
  end
  if y == 1
    world.setTree(21,9,true)
    world.setTree(21,1,true)
    world.setTree(21,2,true)
  end
  if y == 2
    world.setTree(21,8,true)
    world.setTree(21,9,true)
    world.setTree(21,1,true)
  end
  if y == 3
    world.setTree(21,7,true)
    world.setTree(21,8,true)
    world.setTree(21,9,true)
  end
  if y == 4
    world.setTree(21,6,true)
    world.setTree(21,7,true)
    world.setTree(21,8,true)
  end
  if y == 5
    world.setTree(21,5,true)
    world.setTree(21,6,true)
    world.setTree(21,7,true)
  end
  if y == 6
    world.setTree(21,4,true)
    world.setTree(21,5,true)
    world.setTree(21,6,true)
  end
  if y == 7
    world.setTree(21,3,true)
    world.setTree(21,4,true)
    world.setTree(21,5,true)
  end
  if y == 8
    world.setTree(21,2,true)
    world.setTree(21,3,true)
    world.setTree(21,4,true)
  end
  if y == 9
    world.setTree(21,1,true)
    world.setTree(21,2,true)
    world.setTree(21,3,true)
  end
  if not kara.treeFront
    b = kara.getPosition.getX.to_i
    c = kara.getPosition.getY.to_i
    if b == 20
      if not world.isTree(b+1,c)
        k = 1
      end
    end
    if b == 1
      if not world.isTree(b-1,c)
        k = 1
      end
    end
  end
  if kara.treeFront
    kara.turnRight
    kara.turnRight
    b = kara.getPosition.getX.to_i
    c = kara.getPosition.getY.to_i
    p = p+1
    a = tools.random(8)
    if a == 0
      a = 9
    end
    if not a == c
      if b == 5
        kara.setPosition(1,a)
      end
      if b == 24
        kara.setPosition(20,a)
      end
    end
  end
  if k == 1
    Output(kara,tools,world,app_path,menu,"Kara ist ins nichts gelaufen! Voher konnte er #{p} Bäume treffen","","")
    doler = File.open(my_path+"coin.txt").read.to_f
    up = File.open(my_path+"updates.txt").read
    bon = up[7].chr.to_i
    au = p.to_i*5
    if not menu == "app"
      Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
    else
      Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
    end
    z = File.new(my_path+"coin.txt", "w+")
    z.puts(doler+(au*bon))
    z.close
  end
  d = 400
  if p > 5
    d = 300
  end
  if p > 10
    d = 200
  end
  if p > 15
    d = 100
  end
  tools.sleep(d)
  tools.checkState()
end
system("Taskkill /IM keypress.exe /F")
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end    