def paddle(pack)
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
ri = 0
k = 0
p = 0
le = 1
a = 0
world.setSize(22,40)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
world.clearAll
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/40*37+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/22*11+y[0].to_i).round
	ss = "Space;"+s2.to_s+";"+s1.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/n/n/n/m/n/n/n/n/s%",nil,nil)
end
while k == 0
world.clearAll
for i in 0..21
  world.setTree(i,0,true)
  world.setTree(i,33,true)
end
for i in 0..32
  world.setTree(0,i,true)
  world.setTree(21,i,true)
end
for i in 9..12
  world.setMushroom(i,15,true)
  world.setMushroom(i,16,true)
  world.setMushroom(i,17,true)
  world.setMushroom(i,18,true)
end
world.setLeaf(9,36,true)
world.setLeaf(9,37,true)
world.setLeaf(12,36,true)
world.setLeaf(12,37,true)
world.setLeaf(10,35,true)
world.setLeaf(11,35,true)
world.setLeaf(10,38,true)
world.setLeaf(11,38,true)
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
world.setLeaf(1,6,true)
world.setLeaf(2,6,true)
world.setLeaf(5,6,true)
world.setLeaf(6,6,true)
world.setLeaf(9,6,true)
world.setLeaf(10,6,true)
world.setLeaf(13,6,true)
world.setLeaf(14,6,true)
world.setLeaf(17,6,true)
world.setLeaf(18,6,true)
world.setMushroom(2,3,true)
world.setMushroom(1,3,true)
world.setMushroom(5,3,true)
world.setMushroom(6,3,true)
world.setMushroom(9,3,true)
world.setMushroom(10,3,true)
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
world.setMushroom(3,6,true)
world.setMushroom(4,6,true)
world.setMushroom(7,6,true)
world.setMushroom(8,6,true)
world.setMushroom(11,6,true)
world.setMushroom(12,6,true)
world.setMushroom(15,6,true)
world.setMushroom(16,6,true)
world.setMushroom(19,6,true)
world.setMushroom(20,6,true)
world.setLeaf(1,27,true)
world.setLeaf(2,27,true)
world.setLeaf(5,27,true)
world.setLeaf(6,27,true)
world.setLeaf(9,27,true)
world.setLeaf(10,27,true)
world.setLeaf(13,27,true)
world.setLeaf(14,27,true)
world.setLeaf(17,27,true)
world.setLeaf(18,27,true)
world.setLeaf(3,28,true)
world.setLeaf(4,28,true)
world.setLeaf(7,28,true)
world.setLeaf(8,28,true)
world.setLeaf(11,28,true)
world.setLeaf(12,28,true)
world.setLeaf(15,28,true)
world.setLeaf(16,28,true)
world.setLeaf(19,28,true)
world.setLeaf(20,28,true)
world.setLeaf(1,29,true)
world.setLeaf(2,29,true)
world.setLeaf(5,29,true)
world.setLeaf(6,29,true)
world.setLeaf(9,29,true)
world.setLeaf(10,29,true)
world.setLeaf(13,29,true)
world.setLeaf(14,29,true)
world.setLeaf(17,29,true)
world.setLeaf(18,29,true)
world.setLeaf(3,30,true)
world.setLeaf(4,30,true)
world.setLeaf(7,30,true)
world.setLeaf(8,30,true)
world.setLeaf(11,30,true)
world.setLeaf(12,30,true)
world.setLeaf(15,30,true)
world.setLeaf(16,30,true)
world.setLeaf(19,30,true)
world.setLeaf(20,30,true)
world.setMushroom(3,27,true)
world.setMushroom(4,27,true)
world.setMushroom(7,27,true)
world.setMushroom(8,27,true)
world.setMushroom(11,27,true)
world.setMushroom(12,27,true)
world.setMushroom(15,27,true)
world.setMushroom(16,27,true)
world.setMushroom(19,27,true)
world.setMushroom(20,27,true)
world.setMushroom(1,28,true)
world.setMushroom(2,28,true)
world.setMushroom(5,28,true)
world.setMushroom(6,28,true)
world.setMushroom(9,28,true)
world.setMushroom(10,28,true)
world.setMushroom(13,28,true)
world.setMushroom(14,28,true)
world.setMushroom(17,28,true)
world.setMushroom(18,28,true)
world.setMushroom(3,29,true)
world.setMushroom(4,29,true)
world.setMushroom(7,29,true)
world.setMushroom(8,29,true)
world.setMushroom(11,29,true)
world.setMushroom(12,29,true)
world.setMushroom(15,29,true)
world.setMushroom(16,29,true)
world.setMushroom(19,29,true)
world.setMushroom(20,29,true)
world.setMushroom(1,30,true)
world.setMushroom(2,30,true)
world.setMushroom(5,30,true)
world.setMushroom(6,30,true)
world.setMushroom(9,30,true)
world.setMushroom(10,30,true)
world.setMushroom(13,30,true)
world.setMushroom(14,30,true)
world.setMushroom(17,30,true)
world.setMushroom(18,30,true)
kara.setPosition(11,12)
xk = "r"
yk = "o"
m = 3
l = 0
t = 9
mu = 0
mu2 = 0
l1 = 1
  l2 = 2
  l3 = 3
  l4 = 4
  l5 = 5
  l6 = 6
  l7 = 7
  l8 = 8
  l9 = 9
  l10 = 10
  l11 = 11
  l12 = 12
  l13 = 13
  l14 = 14
  l15 = 15
  l16 = 16
  ss = 0
  ss = tools.random(1)
while k == 0 and l == 0
  s = 0
  y = kara.getPosition.getY.to_i
  if k == 0
  if mu == 5
  mu = 0
  
  if ss == 1 
     if not kara.treeFront
       if not kara.mushroomFront
         kara.move
       end
     end
  end
  if yk == "o" and xk == "r" and s == 0
    x = kara.getPosition.getX.to_i
    if not world.isTree(x+1,y-1) and not world.isLeaf(x+1,y-1) and not world.isMushroom(x+1,y-1)
      kara.setPosition(x+1,y-1)
    else
      if not world.isMushroom(x,y-1) or world.isMushroom(x,y-1)
        if not world.isMushroom(x-1,y) and not world.isTree(x-1,y) and not world.isLeaf(x-1,y)
          if not kara.treeFront
            if not kara.mushroomFront
              kara.move
            end
          end
        end
      end
    end
    
    x = kara.getPosition.getX.to_i
    s = 1
    if world.isTree(x+1,y)
      xk = "l"
      kara.setDirection(1)
    end
    if world.isTree(x,y-1)
      yk = "u"
    end
  end
  if yk == "o" and xk == "l" and s == 0
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not world.isTree(x-1,y-1) and not world.isLeaf(x-1,y-1) and not world.isMushroom(x-1,y-1)
      kara.setPosition(x-1,y-1)
      
    else
      if not world.isMushroom(x,y-1) or world.isMushroom(x,y-1)
        if not world.isMushroom(x-1,y) and not world.isTree(x-1,y) and not world.isLeaf(x-1,y)
          if not kara.treeFront
            if not kara.mushroomFront
              kara.move
            end
          end
        end
      end
    end
    s = 1
    x = kara.getPosition.getX.to_i
    if world.isTree(x-1,y)
      xk = "r"
      kara.setDirection(3)
    end
    if world.isTree(x,y-1)
      yk = "u"
    end
  end
  if yk == "u" and xk == "l" and s == 0
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not world.isTree(x-1,y+1) and not world.isLeaf(x-1,y+1) and not world.isMushroom(x-1,y+1)
      kara.setPosition(x-1,y+1)
    end
    s = 1
    x = kara.getPosition.getX.to_i
    if world.isTree(x-1,y)
      xk = "r"
      kara.setDirection(3)
    end
    if world.isTree(x,y+1)
      yk = "o"
    end
  end
  if yk == "u" and xk == "r" and s == 0
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not world.isTree(x+1,y+1) and not world.isLeaf(x+1,y+1) and not world.isMushroom(x+1,y+1)
      kara.setPosition(x+1,y+1)
    end
    s = 1
    x = kara.getPosition.getX.to_i
    if world.isTree(x+1,y)
      xk = "l"
      kara.setDirection(1)
    end
    if world.isTree(x,y+1)
      yk = "o"
    end
  end
  end
  mu = mu+1
  mu2 = mu2+1
  ti = 0
  if le == 1
    ti = 55
  elsif le == 2
    ti = 45
  elsif le == 3
    ti = 35
  elsif le > 3
    ti = 25
  end
  tools.sleep(ti)
  if y == 14 and x == 8
    if world.isTree(8,15) or world.isTree(9,14)
    else
      if yk == "o" or xk == "l"
      else
        k = 1
      end
    end
  end
  if y == 19 and x == 8
    if world.isTree(8,18) or world.isTree(9,19)
    else
      if yk == "u" or xk == "l"
      else
        k = 1
      end
    end
  end
  if y == 14 and x == 13
    if world.isTree(12,14) or world.isTree(13,15)
    else
      if yk == "o" or xk == "r"
      else
        k = 1
      end
    end
  end
  if y == 19 and x == 13
    if world.isTree(12,19) or world.isTree(13,18)
    else
      if yk == "u" or xk == "r"
      else
        k = 1
      end
    end
  end
  if y == 14 and (x == 9 or x == 10 or x == 11 or x == 12)
      k = 1
  end
  if y == 19 and (x == 9 or x == 10 or x == 11 or x == 12)
      k = 1
  end
  if x == 8 and (y == 15 or y == 16 or y == 17 or y == 18)
      k = 1
  end
  if x == 13 and (y == 15 or y == 16 or y == 17 or y == 18)
      k = 1
  end
  
  x = kara.getPosition.getX.to_i
  y = kara.getPosition.getY.to_i
  if y == 1
    yk = "u"
  end
  if y == 32
    yk = "o"
    m = 3
  end
  
  if (world.isMushroom(x,y-1) or world.isLeaf(x,y-1)) and (y < 8 or y > 25) and yk == "o"
    p = p+2
    ss = 1
    if world.isMushroom(x,y-1)
      world.setMushroom(x,y-1,false)
      if world.isMushroom(x-1,y-1)
        world.setMushroom(x-1,y-1,false)
      end
      if world.isMushroom(x+1,y-1)
        world.setMushroom(x+1,y-1,false)
      end
    end
    if world.isLeaf(x,y-1)
      world.setLeaf(x,y-1,false)
      if world.isLeaf(x-1,y-1)
        world.setLeaf(x-1,y-1,false)
      end
      if world.isLeaf(x+1,y-1)
        world.setLeaf(x+1,y-1,false)
      end
    end
    yk = "u"
  end
  if (world.isMushroom(x-1,y-1) or world.isLeaf(x-1,y-1)) and (y < 8 or y > 25) and yk == "o" and xk == "l"
    p = p+2
    ss = 1
    if world.isMushroom(x-1,y-1)
      world.setMushroom(x-1,y-1,false)
      if world.isMushroom(x-2,y-1)
        world.setMushroom(x-2,y-1,false)
      end
      if world.isMushroom(x,y-1)
        world.setMushroom(x,y-1,false)
      end
    end
    if world.isLeaf(x-1,y-1)
      world.setLeaf(x-1,y-1,false)
      if world.isLeaf(x-2,y-1)
        world.setLeaf(x-2,y-1,false)
      end
      if world.isLeaf(x,y-1)
        world.setLeaf(x,y-1,false)
      end
    end
    yk = "u"
  end
  if (world.isMushroom(x+1,y-1) or world.isLeaf(x+1,y-1)) and (y < 8 or y > 25) and yk == "o" and xk == "r"
    p = p+2
    ss = 1
    if world.isMushroom(x+1,y-1)
      world.setMushroom(x+1,y-1,false)
      if world.isMushroom(x+2,y-1)
        world.setMushroom(x+2,y-1,false)
      end
      if world.isMushroom(x,y-1)
        world.setMushroom(x,y-1,false)
      end
    end
    if world.isLeaf(x+1,y-1)
      world.setLeaf(x+1,y-1,false)
      if world.isLeaf(x+2,y-1)
        world.setLeaf(x+2,y-1,false)
      end
      if world.isLeaf(x,y-1)
        world.setLeaf(x,y-1,false)
      end
    end
    yk = "u"
  end
  if (world.isMushroom(x,y+1) or world.isLeaf(x,y+1)) and (y < 8 or y > 25) and yk == "u"
    p = p+2
    ss = 1
    if world.isMushroom(x,y+1)
      world.setMushroom(x,y+1,false)
      if world.isMushroom(x-1,y+1)
        world.setMushroom(x-1,y+1,false)
      end
      if world.isMushroom(x+1,y+1)
        world.setMushroom(x+1,y+1,false)
      end
    end
    if world.isLeaf(x,y+1)
      world.setLeaf(x,y+1,false)
      if world.isLeaf(x-1,y+1)
        world.setLeaf(x-1,y+1,false)
      end
      if world.isLeaf(x+1,y+1)
        world.setLeaf(x+1,y+1,false)
      end
    end
    yk = "o"
  end
  if (world.isMushroom(x+1,y+1) or world.isLeaf(x+1,y+1)) and (y < 8 or y > 25) and yk == "u" and xk == "r"
    p = p+2
    ss = 1
    if world.isMushroom(x+1,y+1)
      world.setMushroom(x+1,y+1,false)
      if world.isMushroom(x+2,y+1)
        world.setMushroom(x+2,y+1,false)
      end
      if world.isMushroom(x,y+1)
        world.setMushroom(x,y+1,false)
      end
    end
    if world.isLeaf(x+1,y+1)
      world.setLeaf(x+1,y+1,false)
      if world.isLeaf(x+2,y+1)
        world.setLeaf(x+2,y+1,false)
      end
      if world.isLeaf(x,y+1)
        world.setLeaf(x,y+1,false)
      end
    end
    yk = "o"
  end
  if (world.isMushroom(x-1,y+1) or world.isLeaf(x-1,y+1)) and (y < 8 or y > 25) and yk == "u" and xk == "l"
    p = p+2
    ss = 1
    if world.isMushroom(x-1,y+1)
      world.setMushroom(x-1,y+1,false)
      if world.isMushroom(x-2,y+1)
        world.setMushroom(x-2,y+1,false)
      end
      if world.isMushroom(x,y+1)
        world.setMushroom(x,y+1,false)
      end
    end
    if world.isLeaf(x-1,y+1)
      world.setLeaf(x-1,y+1,false)
      if world.isLeaf(x-2,y+1)
        world.setLeaf(x-2,y+1,false)
      end
      if world.isLeaf(x,y+1)
        world.setLeaf(x,y+1,false)
      end
    end
    yk = "o"
  end
  end
  if k == 0 and mu2 == 3
    mu2 = 0
    if l1 == 1 or l1 == 2 or l1 == 3 or l1 == 4 or l1 == 5 or l1 == 9 or l1 == 10 or l1 == 11 or l1 == 12 or l1 == 13
      if world.isEmpty(9,14)
        world.setTree(9,14,true)
      end
    end
    if l2 == 1 or l2 == 2 or l2 == 3 or l2 == 4 or l2 == 5 or l2 == 9 or l2 == 10 or l2 == 11 or l2 == 12 or l2 == 13
      if world.isEmpty(10,14)
        world.setTree(10,14,true)
      end
    end
    if l3 == 1 or l3 == 2 or l3 == 3 or l3 == 4 or l3 == 5 or l3 == 9 or l3 == 10 or l3 == 11 or l3 == 12 or l3 == 13
      if world.isEmpty(11,14)
        world.setTree(11,14,true)
      end
    end
    if l4 == 1 or l4 == 2 or l4 == 3 or l4 == 4 or l4 == 5 or l4 == 9 or l4 == 10 or l4 == 11 or l4 == 12 or l4 == 13
      if world.isEmpty(12,14)
        world.setTree(12,14,true)
      end
    end
    if l5 == 1 or l5 == 2 or l5 == 3 or l5 == 4 or l5 == 5 or l5 == 9 or l5 == 10 or l5 == 11 or l5 == 12 or l5 == 13
      if world.isEmpty(13,15)
        world.setTree(13,15,true)
      end
    end
    if l6 == 1 or l6 == 2 or l6 == 3 or l6 == 4 or l6 == 5 or l6 == 9 or l6 == 10 or l6 == 11 or l6 == 12 or l6 == 13
      if world.isEmpty(13,16)
        world.setTree(13,16,true)
      end
    end
    if l7 == 1 or l7 == 2 or l7 == 3 or l7 == 4 or l7 == 5 or l7 == 9 or l7 == 10 or l7 == 11 or l7 == 12 or l7 == 13
      if world.isEmpty(13,17)
        world.setTree(13,17,true)
      end
    end
    if l8 == 1 or l8 == 2 or l8 == 3 or l8 == 4 or l8 == 5 or l8 == 9 or l8 == 10 or l8 == 11 or l8 == 12 or l8 == 13
      if world.isEmpty(13,18)
        world.setTree(13,18,true)
      end
    end
    if l9 == 1 or l9 == 2 or l9 == 3 or l9 == 4 or l9 == 5 or l9 == 9 or l9 == 10 or l9 == 11 or l9 == 12 or l9 == 13
      if world.isEmpty(12,19)
        world.setTree(12,19,true)
      end
    end
    if l10 == 1 or l10 == 2 or l10 == 3 or l10 == 4 or l10 == 5 or l10 == 9 or l10 == 10 or l10 == 11 or l10 == 12 or l10 == 13
      if world.isEmpty(11,19)
        world.setTree(11,19,true)
      end
    end
    if l11 == 1 or l11 == 2 or l11 == 3 or l11 == 4 or l11 == 5 or l11 == 9 or l11 == 10 or l11 == 11 or l11 == 12 or l11 == 13
      if world.isEmpty(10,19)
        world.setTree(10,19,true)
      end
    end
    if l12 == 1 or l12 == 2 or l12 == 3 or l12 == 4 or l12 == 5 or l12 == 9 or l12 == 10 or l12 == 11 or l12 == 12 or l12 == 13
      if world.isEmpty(9,19)
        world.setTree(9,19,true)
      end
    end
    if l13 == 1 or l13 == 2 or l13 == 3 or l13 == 4 or l13 == 5 or l13 == 9 or l13 == 10 or l13 == 11 or l13 == 12 or l13 == 13
      if world.isEmpty(8,18)
        world.setTree(8,18,true)
      end
    end
    if l14 == 1 or l14 == 2 or l14 == 3 or l14 == 4 or l14 == 5 or l14 == 9 or l14 == 10 or l14 == 11 or l14 == 12 or l14 == 13
      if world.isEmpty(8,17)
        world.setTree(8,17,true)
      end
    end
    if l15 == 1 or l15 == 2 or l15 == 3 or l15 == 4 or l15 == 5 or l15 == 9 or l15 == 10 or l15 == 11 or l15 == 12 or l15 == 13
      if world.isEmpty(8,16)
        world.setTree(8,16,true)
      end
    end
    if l16 == 1 or l16 == 2 or l16 == 3 or l16 == 4 or l16 == 5 or l16 == 9 or l16 == 10 or l16 == 11 or l16 == 12 or l16 == 13
      if world.isEmpty(8,15)
        world.setTree(8,15,true)
      end
    end
    if l1 == 6 or l1 == 7 or l1 == 8 or l1 == 14 or l1 == 15 or l1 == 16
      world.setTree(9,14,false)
    end
    if l2 == 6 or l2 == 7 or l2 == 8 or l2 == 14 or l2 == 15 or l2 == 16
      world.setTree(10,14,false)
    end
    if l3 == 6 or l3 == 7 or l3 == 8 or l3 == 14 or l3 == 15 or l3 == 16
      world.setTree(11,14,false)
    end
    if l4 == 6 or l4 == 7 or l4 == 8 or l4 == 14 or l4 == 15 or l4 == 16
      world.setTree(12,14,false)
    end
    if l5 == 6 or l5 == 7 or l5 == 8 or l5 == 14 or l5 == 15 or l5 == 16
      world.setTree(13,15,false)
    end
    if l6 == 6 or l6 == 7 or l6 == 8 or l6 == 14 or l6 == 15 or l6 == 16
      world.setTree(13,16,false)
    end
    if l7 == 6 or l7 == 7 or l7 == 8 or l7 == 14 or l7 == 15 or l7 == 16
      world.setTree(13,17,false)
    end
    if l8 == 6 or l8 == 7 or l8 == 8 or l8 == 14 or l8 == 15 or l8 == 16
      world.setTree(13,18,false)
    end
    if l9 == 6 or l9 == 7 or l9 == 8 or l9 == 14 or l9 == 15 or l9 == 16
      world.setTree(12,19,false)
    end
    if l10 == 6 or l10 == 7 or l10 == 8 or l10 == 14 or l10 == 15 or l10 == 16
      world.setTree(11,19,false)
    end
    if l11 == 6 or l11 == 7 or l11 == 8 or l11 == 14 or l11 == 15 or l11 == 16
      world.setTree(10,19,false)
    end
    if l12 == 6 or l12 == 7 or l12 == 8 or l12 == 14 or l12 == 15 or l12 == 16
      world.setTree(9,19,false)
    end
    if l13 == 6 or l13 == 7 or l13 == 8 or l13 == 14 or l13 == 15 or l13 == 16
      world.setTree(8,18,false)
    end
    if l14 == 6 or l14 == 7 or l14 == 8 or l14 == 14 or l14 == 15 or l14 == 16
      world.setTree(8,17,false)
    end
    if l15 == 6 or l15 == 7 or l15 == 8 or l15 == 14 or l15 == 15 or l15 == 16
      world.setTree(8,16,false)
    end
    if l16 == 6 or l16 == 7 or l16 == 8 or l16 == 14 or l16 == 15 or l16 == 16
      world.setTree(8,15,false)
    end
    if ri == 0
    l1 = l1-1
    l2 = l2-1
    l3 = l3-1
    l4 = l4-1
    l5 = l5-1
    l6 = l6-1
    l7 = l7-1
    l8 = l8-1
    l9 = l9-1
    l10 = l10-1
    l11 = l11-1
    l12 = l12-1
    l13 = l13-1
    l14 = l14-1
    l15 = l15-1
    l16 = l16-1
    if l1 < 1
      l1 = 16
    end
    if l2 < 1
      l2 = 16
    end
    if l3 < 1
      l3 = 16
    end
    if l4 < 1
      l4 = 16
    end
    if l5 < 1
      l5 = 16
    end
    if l6 < 1
      l6 = 16
    end
    if l7 < 1
      l7 = 16
    end
    if l8 < 1
      l8 = 16
    end
    if l9 < 1
      l9 = 16
    end
    if l10 < 1
      l10 = 16
    end
    if l11 < 1
      l11 = 16
    end
    if l12 < 1
      l12 = 16
    end
    if l13 < 1
      l13 = 16
    end
    if l14 < 1
      l14 = 16
    end
    if l15 < 1
      l15 = 16
    end
    if l16 < 1
      l16 = 16
    end
    end
    if ri == 1
    l1 = l1+1
    l2 = l2+1
    l3 = l3+1
    l4 = l4+1
    l5 = l5+1
    l6 = l6+1
    l7 = l7+1
    l8 = l8+1
    l9 = l9+1
    l10 = l10+1
    l11 = l11+1
    l12 = l12+1
    l13 = l13+1
    l14 = l14+1
    l15 = l15+1
    l16 = l16+1
    if l1 > 16
      l1 = 1
    end
    if l2 > 16
      l2 = 1
    end
    if l3 > 16
      l3 = 1
    end
    if l4 > 16
      l4 = 1
    end
    if l5 > 16
      l5 = 1
    end
    if l6 > 16
      l6 = 1
    end
    if l7 > 16
      l7 = 1
    end
    if l8 > 16
      l8 = 1
    end
    if l9 > 16
      l9 = 1
    end
    if l10 > 16
      l10 = 1
    end
    if l11 > 16
      l11 = 1
    end
    if l12 > 16
      l12 = 1
    end
    if l13 > 16
      l13 = 1
    end
    if l14 > 16
      l14 = 1
    end
    if l15 > 16
      l15 = 1
    end
    if l16 > 16
      l16 = 1
    end
    end
  end
  x = kara.getPosition.getX.to_i
  y = kara.getPosition.getY.to_i
  ff = 0
  for i in 3..6
    for j in 1..20
      if world.isMushroom(j,i) or world.isLeaf(j,i)
        ff = 1
      end
    end
  end
  con = Control(kara,tools,world,app_path,"",nil,nil)
  if con == "m"
    world.setMushroom(10,36,true)
  end
  for i in 36..37
    for j in 10..11
      if world.isMushroom(j,i)
        world.setMushroom(j,i,false)
          
        if ri == 0
          ri = 1
        else
          ri = 0
        end
      end
    end
  end
  for i in 27..30
    for j in 10..11
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
bon = up[18].chr.to_i
au = p.to_i*3
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