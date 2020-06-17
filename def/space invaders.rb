def space_invaders(pack) 
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
world.setSize(19,19)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/19*17.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/19*7.5+y[0].to_i).round
    s3 = ((y[3].to_i-y[1].to_i)/19*17.5+y[1].to_i).round
	s4 = ((y[2].to_i-y[0].to_i)/19*11.5+y[0].to_i).round
    s5 = ((y[3].to_i-y[1].to_i)/19*15.5+y[1].to_i).round
	s6 = ((y[2].to_i-y[0].to_i)/19*9.5+y[0].to_i).round
	ss = "A;"+s2.to_s+";"+s1.to_s+";D;"+s4.to_s+";"+s3.to_s+";W;"+s6.to_s+";"+s5.to_s+";Space;"+s6.to_s+";"+s5.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/n/n/l/m/r/n/n/n/s%",nil,nil)
end
world.setTree(8,13,true)
world.setTree(9,13,true)
world.setTree(10,13,true)
world.setTree(11,13,true)
world.setTree(13,13,true)
world.setTree(7,13,true)
world.setTree(5,13,true)
world.setTree(12,13,true)
world.setTree(6,13,true)
world.setTree(18,13,true)
world.setTree(17,13,true)
world.setTree(16,13,true)
world.setTree(15,13,true)
world.setTree(14,13,true)
world.setTree(4,13,true)
world.setTree(3,13,true)
world.setTree(2,13,true)
world.setTree(1,13,true)
world.setTree(0,13,true)
world.setLeaf(9,14,true)
world.setLeaf(7,18,true)
world.setLeaf(8,18,true)
world.setLeaf(9,18,true)
world.setLeaf(10,18,true)
world.setLeaf(11,18,true)
world.setLeaf(12,17,true)
world.setLeaf(11,16,true)
world.setLeaf(10,16,true)
world.setLeaf(10,17,true)
world.setLeaf(9,16,true)
world.setLeaf(6,17,true)
world.setLeaf(8,17,true)
world.setLeaf(9,17,true)
world.setLeaf(8,16,true)
world.setLeaf(7,16,true)
world.setLeaf(8,15,true)
world.setLeaf(10,15,true)
world.setMushroom(16,0,true)
world.setMushroom(17,0,true)
world.setMushroom(18,0,true)
world.setMushroom(16,1,true)
world.setMushroom(17,1,true)
world.setMushroom(18,1,true)
world.setMushroom(13,0,true)
world.setMushroom(14,0,true)
world.setMushroom(15,0,true)
world.setMushroom(13,1,true)
world.setMushroom(14,1,true)
world.setMushroom(15,1,true)
world.setMushroom(10,0,true)
world.setMushroom(11,0,true)
world.setMushroom(12,0,true)
world.setMushroom(10,1,true)
world.setMushroom(11,1,true)
world.setMushroom(12,1,true)
world.setMushroom(9,0,true)
world.setMushroom(8,0,true)
world.setMushroom(9,1,true)
world.setMushroom(8,1,true)
kara.setPosition(9,12)
kara.setDirection(0)
k = 0
x = 9
h = 0
r = "l"
ru = 0
l = 1
b = 0
p = 0
ni = 0
while k == 0
  tools.sleep(25)
  for i in 0..18
    for j in 0..12
      if world.isLeaf(i,j)
        world.setLeaf(i,j,false)
        if not j == 0
          world.setLeaf(i,j-1,true)
          #tools.sleep(25)
        end
      end
    end
  end
  
  if l == 1
    b = 32
  elsif l == 2
    b = 28
  elsif l == 3
    b = 24
  elsif l == 4
    b = 20
  elsif l == 5
    b = 16
  elsif l == 6
    b = 12
  elsif l == 7
    b = 8
  elsif l == 8
    b = 4
  elsif l == 9
    b = 0
    ni = 1
  end
  
  for i in 0..18
    if world.isMushroom(i,11)
      k = 1
    end
  end
  if k == 0
  if ru >= b or ni == 1
  ru = 0
  x = 13
  13.times do
    x = x-1
    if world.isMushroom(0,x)
      r = "r"
      for i in 0..18
        if world.isMushroom(i,x)
          world.setMushroom(i,x,false)
          world.setMushroom(i,x+1,true)
        end
      end
    end
  end
  x = 13
  13.times do
    x = x-1
    if world.isMushroom(18,x)
      r = "l"
      h = h+1
      for i in 0..18
        if world.isMushroom(i,x)
          if h > 2
            world.setMushroom(i,x,false)
            world.setMushroom(i,x+1,true)
          end
        end
      end
    end
  end
  if r == "l"
    for i in 0..12
      for j in 0..18
        if world.isMushroom(j,i)
          world.setMushroom(j,i,false)
          world.setMushroom(j-1,i,true)
        end
      end
    end
  end
  if r == "r"
    i = -1
    12.times do
      i = i+1
      j = 19
      19.times do
        j = j-1
        if world.isMushroom(j,i)
          if not j == 18
            world.setMushroom(j,i,false)
            world.setMushroom(j+1,i,true)
            f = 1
          end
        end
        f = 0
      end
    end
  end
  end
  ru = ru+1
  con = Control(kara,tools,world,app_path,"",nil,nil)
  if con == "r"
    world.setMushroom(11,17,true)
  elsif con == "m"
    world.setMushroom(9,15,true)
  elsif con == "l"
    world.setMushroom(7,17,true)
  end
  if world.isMushroom(7,17)
    world.setMushroom(7,17,false)
    x = kara.getPosition.getX.to_i
    x = x-1
    if x == -1
      x = 18
    end
    kara.setPosition(x,12)
    kara.setDirection(0)
  end
  if world.isMushroom(11,17)
    world.setMushroom(11,17,false)
    x = kara.getPosition.getX.to_i
    x = x+1
    if x == 19
      x = 0
    end
    kara.setPosition(x,12)
    kara.setDirection(0)
  end
  if world.isMushroom(9,15)
    world.setMushroom(9,15,false)
    x = kara.getPosition.getX.to_i
    world.setLeaf(x,11,true)
  end
  tools.checkState()
  
  for i in 0..18
    for j in 0..12
      if world.isLeaf(i,j) and world.isMushroom(i,j)
        world.setLeaf(i,j,false)
        world.setMushroom(i,j,false)
      end
    end
  end
  end
  d = 0
  for i in 0..18
    for j in 0..12
      if world.isMushroom(i,j)
        d = 1
      end
    end
  end
  if d == 0
    l = l+1
    12.times do 
      kara.move
      tools.sleep(75)
    end
	kara.setPosition(9,12)
	world.setMushroom(16,0,true)
	world.setMushroom(17,0,true)
	world.setMushroom(18,0,true)
	world.setMushroom(16,1,true)
	world.setMushroom(17,1,true)
	world.setMushroom(18,1,true)
	world.setMushroom(13,0,true)
	world.setMushroom(14,0,true)
	world.setMushroom(15,0,true)
	world.setMushroom(13,1,true)
	world.setMushroom(14,1,true)
	world.setMushroom(15,1,true)
	world.setMushroom(10,0,true)
	world.setMushroom(11,0,true)
	world.setMushroom(12,0,true)
	world.setMushroom(10,1,true)
	world.setMushroom(11,1,true)
	world.setMushroom(12,1,true)
	world.setMushroom(9,0,true)
	world.setMushroom(8,0,true)
	world.setMushroom(9,1,true)
    world.setMushroom(8,1,true)
  end
end
Output(kara,tools,world,app_path,menu,"du hst verlohren!! Du bist bis in Level #{l} gekommen","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[9].chr.to_i
au = (l.to_i-1)*9
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