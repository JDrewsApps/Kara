def blatt_fressen(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
world.clearAll
world.setSize(17,1)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
p = 0
f = 0
fe = ""
l = 0
kara.setPosition(0,0)
x1 = 0
x2 = 0
x3 = 0
x4 = 0
x5 = 0
x6 = 0
x7 = 0
x8 = 0
x9 = 0
x10 = 0
x11 = 0
x12 = 0
x13 = 0
x14 = 0
x15 = 0
x16 = 0 
while f == 0
  for i in 1..16
    world.setLeaf(i,0,false)
  end
  if world.isMushroom(1,0)
    world.setMushroom(1,0,false)
    f = f+1
  end
  if world.isMushroom(2,0)
    world.setMushroom(2,0,false)
    world.setMushroom(1,0,true)
  end
  if world.isMushroom(3,0)
    world.setMushroom(3,0,false)
    world.setMushroom(2,0,true)
  end
  if world.isMushroom(4,0)
    world.setMushroom(4,0,false)
    world.setMushroom(3,0,true)
  end
  if world.isMushroom(5,0)
    world.setMushroom(5,0,false)
    world.setMushroom(4,0,true)
  end
  if world.isMushroom(6,0)
    world.setMushroom(6,0,false)
    world.setMushroom(5,0,true)
  end 
  if world.isMushroom(7,0)
    world.setMushroom(7,0,false)
    world.setMushroom(6,0,true)
  end
  if world.isMushroom(8,0)
    world.setMushroom(8,0,false)
    world.setMushroom(7,0,true)
  end
  if world.isMushroom(9,0)
    world.setMushroom(9,0,false)
    world.setMushroom(8,0,true)
  end
  if world.isMushroom(10,0)
    world.setMushroom(10,0,false)
    world.setMushroom(9,0,true)
  end
  if world.isMushroom(11,0)
    world.setMushroom(11,0,false)
    world.setMushroom(10,0,true)
  end
  if world.isMushroom(12,0)
    world.setMushroom(12,0,false)
    world.setMushroom(11,0,true)
  end
  if world.isMushroom(13,0)
    world.setMushroom(13,0,false)
    world.setMushroom(12,0,true)
  end
  if world.isMushroom(14,0)
    world.setMushroom(14,0,false)
    world.setMushroom(13,0,true)
  end
  if world.isMushroom(15,0)
    world.setMushroom(15,0,false)
    world.setMushroom(14,0,true)
  end
  if world.isMushroom(16,0)
    world.setMushroom(16,0,false)
    world.setMushroom(15,0,true)
  end
  xx1 = x1
  xx2 = x2
  xx3 = x3
  xx4 = x4
  xx5 = x5
  xx6 = x6
  xx7 = x7
  xx8 = x8
  xx9 = x9
  xx10 = x10
  xx11 = x11
  xx12 = x12
  xx13 = x13
  xx14 = x14
  xx15 = x15
  xx16 = x16
  x1 = 0
  x2 = xx1
  x3 = xx2
  x4 = xx3
  x5 = xx4
  x6 = xx5
  x7 = xx6
  x8 = xx7
  x9 = xx8
  x10 = xx9
  x11 = xx10
  x12 = xx11
  x13 = xx12
  x14 = xx13
  x15 = xx14
  x16 = xx15
  x = tools.random(4)
  if x == 0
    x1 = 1
  end
    if x1 == 1
    world.setLeaf(16,0,true)
  end
  if x2 == 1
    world.setLeaf(15,0,true)
  end
  if x3 == 1
    world.setLeaf(14,0,true)
  end
  if x4 == 1
    world.setLeaf(13,0,true)
  end
  if x5 == 1
    world.setLeaf(12,0,true)
  end
  if x6 == 1
    world.setLeaf(11,0,true)
  end
  if x7 == 1
    world.setLeaf(10,0,true)
  end
  if x8 == 1
    world.setLeaf(9,0,true)
  end
  if x9 == 1
    world.setLeaf(8,0,true)
  end
  if x10 == 1
    world.setLeaf(7,0,true)
  end
  if x11 == 1
    world.setLeaf(6,0,true)
  end
  if x12 == 1
    world.setLeaf(5,0,true)
  end
  if x13 == 1
    world.setLeaf(4,0,true)
  end
  if x14 == 1
    world.setLeaf(3,0,true)
  end
  if x15 == 1
    world.setLeaf(2,0,true)
  end
  if x16 == 1
    world.setLeaf(1,0,true)
    p = p+1
  end
  if x == 1
    world.setMushroom(16,0,true)
  end
  if p<6
    tools.sleep(1000)
  elsif p<11
    tools.sleep(850)
  elsif p<16
    tools.sleep(700)
  elsif p<21
    tools.sleep(550)
  elsif p<26
    tools.sleep(400)
  elsif p>31
    tools.sleep(250)
  else
    tools.sleep(150)
  end
end
if f == 1
  Output(kara,tools,world,app_path,menu,"Kara hat einen Pilz gefressen!Vorher konnte er #{p.to_s} Blätter fressen","","")
end
doler = File.open(my_path+"coin.txt").read.to_f
      up = File.open(my_path+"updates.txt").read
      bon = up[6].chr.to_i
      au = p.to_i*4
      if not menu == "app"
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
      else
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
      end
      z = File.new(my_path+"coin.txt", "w+")
      z.puts(doler+(au*bon))
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end