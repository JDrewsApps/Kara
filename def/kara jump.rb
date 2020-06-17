def kara_jump(pack)
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
world.setSize(19,34)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/34*30.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/19*9.5+y[0].to_i).round
	ss = "Space;"+s2.to_s+";"+s1.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/n/n/n/m/n/n/n/n/s%",nil,nil)
end
for i in 0..17
  world.setLeaf(i,2,true)
  world.setLeaf(i,26,true)
end
ev = 0
ev2 = 0
world.setLeaf(9,28,true)
kara.setPosition(9,25)
world.setLeaf(8,28,true)
world.setLeaf(10,28,true)
world.setLeaf(11,29,true)
world.setLeaf(11,30,true)
world.setLeaf(11,31,true)
world.setLeaf(10,32,true)
world.setLeaf(9,32,true)
world.setLeaf(8,32,true)
world.setLeaf(7,31,true)
world.setLeaf(7,30,true)
world.setLeaf(7,29,true)
kara.setDirection(0)
st = "pppppppppppppbbbbbbppppppppp"
st2 = ""
stt = ""
k = 0
p = 0
lv = 20
num = 1
while k == 0 
if ev == 0
st.each_byte do |y|
  yk = kara.getPosition.getY.to_i
  xk = kara.getPosition.getX.to_i
  if yk == 19
    if world.isMushroom(8,19)
      k = 1
    end
  end
  if yk == 9
    if world.isMushroom(10,9)
      k = 1
    end
  end
  if k == 0
  if num == 1
    world.setMushroom(7,9,false)
    world.setLeaf(7,9,false)
    if y.chr == "p"
      world.setMushroom(7,9,true)
    else
      world.setLeaf(7,9,true)
    end
  end
  if num == 2
    world.setMushroom(8,9,false)
    world.setLeaf(8,9,false)
    if y.chr == "p"
      world.setMushroom(8,9,true)
    else
      world.setLeaf(8,9,true)
    end
  end
  if num == 3
    world.setMushroom(9,9,false)
    world.setLeaf(9,9,false)
    if y.chr == "p"
      world.setMushroom(9,9,true)
    else
      world.setLeaf(9,9,true)
    end
  end
  if num == 4
    world.setMushroom(10,9,false)
    world.setLeaf(10,9,false)
    if y.chr == "p"
      world.setMushroom(10,9,true)
    else
      world.setLeaf(10,9,true)
    end
  end
  if num == 5
    world.setMushroom(11,9,false)
    world.setLeaf(11,9,false)
    if y.chr == "p"
      world.setMushroom(11,9,true)
    else
      world.setLeaf(11,9,true)
    end
  end
  if num == 6
    world.setMushroom(12,10,false)
    world.setLeaf(12,10,false)
    if y.chr == "p"
      world.setMushroom(12,10,true)
    else
      world.setLeaf(12,10,true)
    end
  end
  if num == 7
    world.setMushroom(13,11,false)
    world.setLeaf(13,11,false)
    if y.chr == "p"
      world.setMushroom(13,11,true)
    else
      world.setLeaf(13,11,true)
    end
  end
  if num == 8
    world.setMushroom(14,12,false)
    world.setLeaf(14,12,false)
    if y.chr == "p"
      world.setMushroom(14,12,true)
    else
      world.setLeaf(14,12,true)
    end
  end
  if num == 9
    world.setMushroom(14,13,false)
    world.setLeaf(14,13,false)
    if y.chr == "p"
      world.setMushroom(14,13,true)
    else
      world.setLeaf(14,13,true)
    end
  end
  if num == 10
    world.setMushroom(14,14,false)
    world.setLeaf(14,14,false)
    if y.chr == "p"
      world.setMushroom(14,14,true)
    else
      world.setLeaf(14,14,true)
    end
  end
  if num == 11
    world.setMushroom(14,15,false)
    world.setLeaf(14,15,false)
    if y.chr == "p"
      world.setMushroom(14,15,true)
    else
      world.setLeaf(14,15,true)
    end
  end
  if num == 12
    world.setMushroom(14,16,false)
    world.setLeaf(14,16,false)
    if y.chr == "p"
      world.setMushroom(14,16,true)
    else
      world.setLeaf(14,16,true)
    end
  end
  if num == 13
    world.setMushroom(13,17,false)
    world.setLeaf(13,17,false)
    if y.chr == "p"
      world.setMushroom(13,17,true)
    else
      world.setLeaf(13,17,true)
    end
  end
  if num == 14
    world.setMushroom(12,18,false)
    world.setLeaf(12,18,false)
    if y.chr == "p"
      world.setMushroom(12,18,true)
    else
      world.setLeaf(12,18,true)
    end
  end
  if num == 15
    world.setMushroom(11,19,false)
    world.setLeaf(11,19,false)
    if y.chr == "p"
      world.setMushroom(11,19,true)
    else
      world.setLeaf(11,19,true)
    end
  end
  if num == 16
    world.setMushroom(10,19,false)
    world.setLeaf(10,19,false)
    if y.chr == "p"
      world.setMushroom(10,19,true)
    else
      world.setLeaf(10,19,true)
    end
  end
  if num == 17
    world.setMushroom(9,19,false)
    world.setLeaf(9,19,false)
    if y.chr == "p"
      world.setMushroom(9,19,true)
    else
      world.setLeaf(9,19,true)
    end
  end
  if num == 18
    world.setMushroom(8,19,false)
    world.setLeaf(8,19,false)
    if y.chr == "p"
      world.setMushroom(8,19,true)
    else
      world.setLeaf(8,19,true)
    end
  end
  if num == 19
    world.setMushroom(7,19,false)
    world.setLeaf(7,19,false)
    if y.chr == "p"
      world.setMushroom(7,19,true)
    else
      world.setLeaf(7,19,true)
    end
  end
  if num == 20
    world.setMushroom(6,18,false)
    world.setLeaf(6,18,false)
    if y.chr == "p"
      world.setMushroom(6,18,true)
    else
      world.setLeaf(6,18,true)
    end
  end
  if num == 21
    world.setMushroom(5,17,false)
    world.setLeaf(5,17,false)
    if y.chr == "p"
      world.setMushroom(5,17,true)
    else
      world.setLeaf(5,17,true)
    end
  end
  if num == 22
    world.setMushroom(4,16,false)
    world.setLeaf(4,16,false)
    if y.chr == "p"
      world.setMushroom(4,16,true)
    else
      world.setLeaf(4,16,true)
    end
  end
  if num == 23
    world.setMushroom(4,15,false)
    world.setLeaf(4,15,false)
    if y.chr == "p"
      world.setMushroom(4,15,true)
    else
      world.setLeaf(4,15,true)
    end
  end
  if num == 24
    world.setMushroom(4,14,false)
    world.setLeaf(4,14,false)
    if y.chr == "p"
      world.setMushroom(4,14,true)
    else
      world.setLeaf(4,14,true)
    end
  end
  if num == 25
    world.setMushroom(4,13,false)
    world.setLeaf(4,13,false)
    if y.chr == "p"
      world.setMushroom(4,13,true)
    else
      world.setLeaf(4,13,true)
    end
  end
  if num == 26
    world.setMushroom(4,12,false)
    world.setLeaf(4,12,false)
    if y.chr == "p"
      world.setMushroom(4,12,true)
    else
      world.setLeaf(4,12,true)
    end
  end
  if num == 27
    world.setMushroom(5,11,false)
    world.setLeaf(5,11,false)
    if y.chr == "p"
      world.setMushroom(5,11,true)
    else
      world.setLeaf(5,11,true)
    end
  end
  if num == 28
    world.setMushroom(6,10,false)
    world.setLeaf(6,10,false)
    if y.chr == "p"
      world.setMushroom(6,10,true)
    else
      world.setLeaf(6,10,true)
    end
  end
  end
  num = num+1
end
st2 = ""
stt = ""
x = 0
st.each_byte do |y|
  if x == 0
    stt = y.chr
  else
    st2 = st2+y.chr
  end
  x = 1
end
st = st2+stt
num = 1
end
if ev2 == 0
  yk = kara.getPosition.getY.to_i
  if not yk == 25
    if not world.isMushroom(9,yk+1)
      kara.setPosition(9,yk+1)
    else
      k = 1
    end
  end
end
ev = ev+1
ev2 = ev2+1

if ev2 == 80
  ev2 = 0
end
if ev == lv
  ev = 0
end
con = Control(kara,tools,world,app_path,"",nil,nil)
if con == "m"
    world.setMushroom(9,30,true)
end
for i in 8..10
  for j in 29..31
    if world.isMushroom(i,j)
      world.setMushroom(i,j,false)
      yk = kara.getPosition.getY.to_i
      if not world.isMushroom(9,yk-2)
        kara.setPosition(9,yk-2)
        ev2 = 1
      else
        k = 1
      end
    end
  end
end
yk = kara.getPosition.getY.to_i
if yk == 2 or yk == 3
kara.setPosition(9,25)
p = p+1
if p > 12
lv = 4
elsif p > 9
lv = 8
elsif p > 6
lv = 12
elsif p > 3
lv = 16
else
lv = 20
end
end
end
Output(kara,tools,world,app_path,menu,"Kara wurde von einem Pilz getroffen vorher konnte der den Kreis #{p} mal verlassen!!","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[14].chr.to_i
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