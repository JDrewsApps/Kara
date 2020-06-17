def arkanoid(pack)
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
p = 0
le = 1
world.setSize(28,22)
world.clearAll
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/22*20.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/28*12.5+y[0].to_i).round
    s3 = ((y[3].to_i-y[1].to_i)/22*20.5+y[1].to_i).round
	s4 = ((y[2].to_i-y[0].to_i)/28*15.5+y[0].to_i).round
	ss = "A;"+s2.to_s+";"+s1.to_s+";D;"+s4.to_s+";"+s3.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/n/n/l/n/r/n/n/n/s%",nil,nil)
end
while k == 0
world.clearAll
world.setTree(0,18,true)
world.setTree(0,17,true)
world.setTree(0,16,true)
world.setTree(0,15,true)
world.setTree(0,14,true)
world.setTree(0,13,true)
world.setTree(0,12,true)
world.setTree(0,11,true)
world.setTree(0,10,true)
world.setTree(0,9,true)
world.setTree(0,8,true)
world.setTree(0,7,true)
world.setTree(0,6,true)
world.setTree(0,5,true)
world.setTree(0,4,true)
world.setTree(0,3,true)
world.setTree(0,2,true)
world.setTree(0,1,true)
world.setTree(0,0,true)
world.setTree(1,0,true)
world.setTree(2,0,true)
world.setTree(3,0,true)
world.setTree(4,0,true)
world.setTree(5,0,true)
world.setTree(6,0,true)
world.setTree(7,0,true)
world.setTree(8,0,true)
world.setTree(9,0,true)
world.setTree(10,0,true)
world.setTree(11,0,true)
world.setTree(12,0,true)
world.setTree(13,0,true)
world.setTree(14,0,true)
world.setTree(15,0,true)
world.setTree(16,0,true)
world.setTree(17,0,true)
world.setTree(18,0,true)
world.setTree(19,0,true)
world.setTree(20,0,true)
world.setTree(21,0,true)
world.setTree(22,0,true)
world.setTree(23,0,true)
world.setTree(24,0,true)
world.setTree(25,0,true)
world.setTree(26,0,true)
world.setTree(27,0,true)
world.setTree(27,1,true)
world.setTree(27,2,true)
world.setTree(27,3,true)
world.setTree(27,4,true)
world.setTree(27,5,true)
world.setTree(27,6,true)
world.setTree(27,7,true)
world.setTree(27,8,true)
world.setTree(27,9,true)
world.setTree(27,10,true)
world.setTree(27,11,true)
world.setTree(27,12,true)
world.setTree(27,13,true)
world.setTree(27,14,true)
world.setTree(27,15,true)
world.setTree(27,16,true)
world.setTree(27,17,true)
world.setTree(27,18,true)
world.setTree(12,18,true)
world.setTree(13,18,true)
world.setTree(14,18,true)
world.setTree(15,18,true)
world.setLeaf(1,8,true)
world.setLeaf(2,8,true)
world.setLeaf(3,9,true)
world.setLeaf(4,9,true)
world.setLeaf(5,8,true)
world.setLeaf(6,8,true)
world.setLeaf(7,9,true)
world.setLeaf(8,9,true)
world.setLeaf(9,8,true)
world.setLeaf(10,8,true)
world.setLeaf(11,9,true)
world.setLeaf(12,9,true)
world.setLeaf(13,8,true)
world.setLeaf(14,8,true)
world.setLeaf(15,9,true)
world.setLeaf(16,9,true)
world.setLeaf(17,8,true)
world.setLeaf(18,8,true)
world.setLeaf(19,9,true)
world.setLeaf(20,9,true)
world.setLeaf(21,8,true)
world.setLeaf(22,8,true)
world.setLeaf(23,9,true)
world.setLeaf(24,9,true)
world.setLeaf(25,8,true)
world.setLeaf(26,8,true)
world.setLeaf(24,3,true)
world.setLeaf(23,3,true)
world.setLeaf(20,3,true)
world.setLeaf(19,3,true)
world.setLeaf(16,3,true)
world.setLeaf(15,3,true)
world.setLeaf(12,3,true)
world.setLeaf(11,3,true)
world.setLeaf(8,3,true)
world.setLeaf(7,3,true)
world.setLeaf(4,3,true)
world.setLeaf(3,3,true)
world.setLeaf(1,4,true)
world.setLeaf(2,4,true)
world.setLeaf(3,5,true)
world.setLeaf(4,5,true)
world.setLeaf(5,4,true)
world.setLeaf(6,4,true)
world.setLeaf(7,5,true)
world.setLeaf(8,5,true)
world.setLeaf(9,4,true)
world.setLeaf(10,4,true)
world.setLeaf(11,5,true)
world.setLeaf(12,5,true)
world.setLeaf(13,4,true)
world.setLeaf(14,4,true)
world.setLeaf(15,5,true)
world.setLeaf(16,5,true)
world.setLeaf(17,4,true)
world.setLeaf(18,4,true)
world.setLeaf(19,5,true)
world.setLeaf(20,5,true)
world.setLeaf(21,4,true)
world.setLeaf(22,4,true)
world.setLeaf(23,5,true)
world.setLeaf(24,5,true)
world.setLeaf(25,4,true)
world.setLeaf(26,4,true)
world.setLeaf(1,6,true)
world.setLeaf(2,6,true)
world.setLeaf(3,7,true)
world.setLeaf(4,7,true)
world.setLeaf(5,6,true)
world.setLeaf(6,6,true)
world.setLeaf(7,7,true)
world.setLeaf(8,7,true)
world.setLeaf(9,6,true)
world.setLeaf(10,6,true)
world.setLeaf(11,7,true)
world.setLeaf(12,7,true)
world.setLeaf(13,6,true)
world.setLeaf(14,6,true)
world.setLeaf(15,7,true)
world.setLeaf(16,7,true)
world.setLeaf(17,6,true)
world.setLeaf(18,6,true)
world.setLeaf(19,7,true)
world.setLeaf(20,7,true)
world.setLeaf(21,6,true)
world.setLeaf(22,6,true)
world.setLeaf(23,7,true)
world.setLeaf(24,7,true)
world.setLeaf(25,6,true)
world.setLeaf(26,6,true)
world.setMushroom(2,3,true)
world.setMushroom(1,3,true)
world.setMushroom(1,9,true)
world.setMushroom(2,9,true)
world.setMushroom(3,8,true)
world.setMushroom(4,8,true)
world.setMushroom(5,9,true)
world.setMushroom(6,9,true)
world.setMushroom(5,3,true)
world.setMushroom(6,3,true)
world.setMushroom(7,8,true)
world.setMushroom(8,8,true)
world.setMushroom(9,9,true)
world.setMushroom(10,9,true)
world.setMushroom(9,3,true)
world.setMushroom(10,3,true)
world.setMushroom(11,8,true)
world.setMushroom(12,8,true)
world.setMushroom(13,9,true)
world.setMushroom(14,9,true)
world.setMushroom(15,8,true)
world.setMushroom(16,8,true)
world.setMushroom(17,9,true)
world.setMushroom(18,9,true)
world.setMushroom(19,8,true)
world.setMushroom(20,8,true)
world.setMushroom(21,9,true)
world.setMushroom(22,9,true)
world.setMushroom(25,9,true)
world.setMushroom(26,9,true)
world.setMushroom(23,8,true)
world.setMushroom(24,8,true)
world.setMushroom(25,3,true)
world.setMushroom(26,3,true)
world.setMushroom(21,3,true)
world.setMushroom(22,3,true)
world.setMushroom(17,3,true)
world.setMushroom(18,3,true)
world.setMushroom(14,3,true)
world.setMushroom(13,3,true)
world.setMushroom(3,4,true)
world.setMushroom(4,4,true)
world.setMushroom(7,4,true)
world.setMushroom(8,4,true)
world.setMushroom(11,4,true)
world.setMushroom(12,4,true)
world.setMushroom(15,4,true)
world.setMushroom(16,4,true)
world.setMushroom(19,4,true)
world.setMushroom(20,4,true)
world.setMushroom(23,4,true)
world.setMushroom(24,4,true)
world.setMushroom(22,5,true)
world.setMushroom(21,5,true)
world.setMushroom(25,5,true)
world.setMushroom(26,5,true)
world.setMushroom(18,5,true)
world.setMushroom(17,5,true)
world.setMushroom(14,5,true)
world.setMushroom(13,5,true)
world.setMushroom(10,5,true)
world.setMushroom(9,5,true)
world.setMushroom(6,5,true)
world.setMushroom(5,5,true)
world.setMushroom(2,5,true)
world.setMushroom(1,5,true)
world.setMushroom(1,7,true)
world.setMushroom(2,7,true)
world.setMushroom(3,6,true)
world.setMushroom(4,6,true)
world.setMushroom(5,7,true)
world.setMushroom(6,7,true)
world.setMushroom(7,6,true)
world.setMushroom(8,6,true)
world.setMushroom(9,7,true)
world.setMushroom(10,7,true)
world.setMushroom(11,6,true)
world.setMushroom(12,6,true)
world.setMushroom(13,7,true)
world.setMushroom(14,7,true)
world.setMushroom(15,6,true)
world.setMushroom(16,6,true)
world.setMushroom(17,7,true)
world.setMushroom(18,7,true)
world.setMushroom(19,6,true)
world.setMushroom(20,6,true)
world.setMushroom(21,7,true)
world.setMushroom(22,7,true)
world.setMushroom(23,6,true)
world.setMushroom(24,6,true)
world.setMushroom(25,7,true)
world.setMushroom(26,7,true)
world.setLeaf(11,20,true)
world.setLeaf(12,19,true)
world.setLeaf(12,21,true)
world.setLeaf(13,19,true)
world.setLeaf(13,20,true)
world.setLeaf(13,21,true)
world.setLeaf(16,20,true)
world.setLeaf(15,19,true)
world.setLeaf(15,21,true)
world.setLeaf(14,19,true)
world.setLeaf(14,20,true)
world.setLeaf(14,21,true)
kara.setPosition(14,17)
xk = "r"
yk = "o"
m = 3
l = 0
t = 12
mu = 0
while k == 0 and l == 0
  y = kara.getPosition.getY.to_i
  if y == 18
    k = 1
  end
  if k == 0
  if m == 3
    sc = tools.random(1)
    if sc == 0
      sc = 2
    end
    m = sc
  end
  if mu == 5
  mu = 1
  if yk == "o" and xk == "r"
    x = kara.getPosition.getX.to_i
    if m == 2
      if not world.isTree(x+1,y-1) and not world.isLeaf(x+1,y-1) and not world.isMushroom(x+1,y-1)
        kara.setPosition(x+1,y-1)
      else
        if not world.isMushroom(x,y-1) or world.isMushroom(x,y-1)
          if not world.isMushroom(x-1,y) and not world.isTree(x-1,y) and not world.isLeaf(x-1,y)
            kara.move
          end
        end
      end
    elsif m == 1
      if not kara.treeFront
        kara.move
      end
      x = kara.getPosition.getX.to_i
      y = kara.getPosition.getY.to_i
      if not world.isTree(x+1,y-1) and not world.isLeaf(x+1,y-1) and not world.isMushroom(x+1,y-1)
        kara.setPosition(x+1,y-1)
      else
        if not world.isMushroom(x,y-1) or world.isMushroom(x,y-1)
          if not world.isMushroom(x+1,y) and not world.isTree(x+1,y) and not world.isLeaf(x+1,y)
            kara.move
          end
        end
      end
    end
    x = kara.getPosition.getX.to_i
    if x == 26
      xk = "l"
      kara.setDirection(1)
    end
  end
  if yk == "o" and xk == "l"
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if m == 2
      if not world.isTree(x-1,y-1) and not world.isLeaf(x-1,y-1) and not world.isMushroom(x-1,y-1)
        kara.setPosition(x-1,y-1)
      else
        if not world.isMushroom(x,y-1) or world.isMushroom(x,y-1)
          if not world.isMushroom(x-1,y) and not world.isTree(x-1,y) and not world.isLeaf(x-1,y)
            kara.move
          end
        end
      end
    elsif m == 1
      if not kara.treeFront
        kara.move
      end
      x = kara.getPosition.getX.to_i
      y = kara.getPosition.getY.to_i
      if not world.isTree(x-1,y-1) and not world.isLeaf(x-1,y-1) and not world.isMushroom(x-1,y-1)
        kara.setPosition(x-1,y-1)
      else
        if not world.isMushroom(x,y-1) or world.isMushroom(x,y-1)
          if not world.isMushroom(x-1,y) and not world.isTree(x-1,y) and not world.isLeaf(x-1,y)
            kara.move
          end
        end
      end
    end
    x = kara.getPosition.getX.to_i
    if x == 1
      xk = "r"
      kara.setDirection(3)
    end
  end
  if yk == "u" and xk == "l"
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if m == 2
      if not world.isTree(x-1,y+1) and not world.isLeaf(x-1,y+1) and not world.isMushroom(x-1,y+1)
        kara.setPosition(x-1,y+1)
      end
    elsif m == 1
      if not kara.treeFront
        kara.move
      end
      x = kara.getPosition.getX.to_i
      y = kara.getPosition.getY.to_i
      if not world.isTree(x-1,y+1) and not world.isLeaf(x-1,y+1) and not world.isMushroom(x-1,y+1)
        kara.setPosition(x-1,y+1)
      end
    end
    x = kara.getPosition.getX.to_i
    if x == 1
      xk = "r"
      kara.setDirection(3)
    end
  end
  if yk == "u" and xk == "r"
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if m == 2
      if not world.isTree(x+1,y+1) and not world.isLeaf(x+1,y+1) and not world.isMushroom(x+1,y+1)
        kara.setPosition(x+1,y+1)
      end
    elsif m == 1
      if not kara.treeFront
        kara.move
      end
      x = kara.getPosition.getX.to_i
      y = kara.getPosition.getY.to_i
      if not world.isTree(x+1,y+1) and not world.isLeaf(x+1,y+1) and not world.isMushroom(x+1,y+1)
        kara.setPosition(x+1,y+1)
      end
    end
    x = kara.getPosition.getX.to_i
    if x == 26
      xk = "l"
      kara.setDirection(1)
    end
  end
  end
  mu = mu+1
  ti = 0
  if le == 1
    ti = 100
  elsif le == 2
    ti = 80
  elsif le == 3
    ti = 60
  elsif le > 3
    ti = 40
  end
  tools.sleep(ti)
  x = kara.getPosition.getX.to_i
  y = kara.getPosition.getY.to_i
  if y == 1
    yk = "u"
  end
  if world.isTree(x,18) and y == 17
    yk = "o"
    m = 3
  end
  if world.isMushroom(x-1,y) or world.isLeaf(x-1,y)
    p = p+2
    if world.isMushroom(x-1,y)
      world.setMushroom(x-1,y,false)
      if world.isMushroom(x-2,y)
        world.setMushroom(x-2,y,false)
      end
    end
    if world.isLeaf(x-1,y)
      world.setLeaf(x-1,y,false)
      if world.isLeaf(x-2,y)
        world.setLeaf(x-2,y,false)
      end
    end
    xk = "r"
  end
  if world.isMushroom(x+1,y) or world.isLeaf(x+1,y)
    p = p+2
    if world.isMushroom(x+1,y)
      world.setMushroom(x+1,y,false)
      if world.isMushroom(x+2,y)
        world.setMushroom(x+2,y,false)
      end
    end
    if world.isLeaf(x+1,y)
      world.setLeaf(x+1,y,false)
      if world.isLeaf(x+2,y)
        world.setLeaf(x+2,y,false)
      end
    end
    xk = "l"
  end
  if world.isMushroom(x,y-1) or world.isLeaf(x,y-1)
    p = p+2
    if world.isMushroom(x,y-1)
      world.setMushroom(x,y-1,false)
      if world.isMushroom(x+1,y-1)
        world.setMushroom(x+1,y-1,false)
      end
      if world.isMushroom(x-1,y-1)
        world.setMushroom(x-1,y-1,false)
      end
    end
    if world.isLeaf(x,y-1)
      world.setLeaf(x,y-1,false)
      if world.isLeaf(x+1,y-1)
        world.setLeaf(x+1,y-1,false)
      end
      if world.isLeaf(x-1,y-1)
        world.setLeaf(x-1,y-1,false)
      end
    end
    yk = "u"
  end
  if world.isMushroom(x,y+1) or world.isLeaf(x,y+1)
    p = p+2
    if world.isMushroom(x,y+1)
      world.setMushroom(x,y+1,false)
      if world.isMushroom(x+1,y+1)
        world.setMushroom(x+1,y+1,false)
      end
      if world.isMushroom(x-1,y+1)
        world.setMushroom(x-1,y+1,false)
      end
    end
    if world.isLeaf(x,y+1)
      world.setLeaf(x,y+1,false)
      if world.isLeaf(x+1,y+1)
        world.setLeaf(x+1,y+1,false)
      end
      if world.isLeaf(x-1,y+1)
        world.setLeaf(x-1,y+1,false)
      end
    end
    yk = "o"
  end
  if y == 18
    k = 1
  end
  end
  con = Control(kara,tools,world,app_path,"",nil,nil)
  if con == "l"
    world.setMushroom(12,20,true)
  elsif con == "r"
    world.setMushroom(15,20,true)
  end
  if world.isMushroom(12,20)
    world.setMushroom(12,20,false)
    world.setTree(t,18,false)
    world.setTree(t+1,18,false)
    world.setTree(t+2,18,false)
    world.setTree(t+3,18,false)  
    t = t-1
    if t == 0
      t = 23
    end
  end
  if world.isMushroom(15,20)
    world.setMushroom(15,20,false)
    world.setTree(t,18,false)
    world.setTree(t+1,18,false)
    world.setTree(t+2,18,false)
    world.setTree(t+3,18,false)  
    t = t+1
    if t == 24
      t = 1
    end
  end
  if k == 0
    world.setTree(t,18,true)
    world.setTree(t+1,18,true)
    world.setTree(t+2,18,true)
    world.setTree(t+3,18,true)
  end
  x = kara.getPosition.getX.to_i
  y = kara.getPosition.getY.to_i
  if y == 17
    if world.isTree(x+1,y+1) or world.isTree(x-1,y+1)
      yk = "o"
    end
  end
  ff = 0
  for i in 3..9
    for j in 1..26
      if world.isMushroom(j,i) or world.isLeaf(j,i)
        ff = 1
      end
    end
  end
  if ff == 0
    le = le+1
    l = 1
    tools.sleep(1000)
  end
end
end
Output(kara,tools,world,app_path,menu,"Du hast verlohren!! Kara konnte #{p} Pilze oder Kleeblätter entvernen und ist bis Level #{le} gekommen","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[12].chr.to_i
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