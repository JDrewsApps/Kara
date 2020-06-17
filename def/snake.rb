def snake(pack)
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
ap = 0
k = 0
le = 1
world.setSize(21,26)

`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/26*18.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/21*10.5+y[0].to_i).round
    s3 = ((y[3].to_i-y[1].to_i)/26*20.5+y[1].to_i).round
	s4 = ((y[2].to_i-y[0].to_i)/21*8.5+y[0].to_i).round
    s5 = ((y[3].to_i-y[1].to_i)/26*22.5+y[1].to_i).round
	s6 = ((y[2].to_i-y[0].to_i)/21*10.5+y[0].to_i).round
    s7 = ((y[3].to_i-y[1].to_i)/26*20.5+y[1].to_i).round
	s8 = ((y[2].to_i-y[0].to_i)/21*12.5+y[0].to_i).round
	ss = "W;"+s2.to_s+";"+s1.to_s+";A;"+s4.to_s+";"+s3.to_s+";S;"+s6.to_s+";"+s5.to_s+";D;"+s8.to_s+";"+s7.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/u/n/l/n/r/n/d/n/s%",nil,nil)
end
while k == 0
world.clearAll
p = -1
for i in 0..20
  world.setTree(i,0,true)
  world.setTree(i,16,true)
end
for i in 0..16
  world.setTree(0,i,true)
  world.setTree(20,i,true)
end
world.setLeaf(10,17,true)
world.setLeaf(10,19,true)
world.setLeaf(11,18,true)
world.setLeaf(9,18,true)
world.setLeaf(9,19,true)
world.setLeaf(11,19,true)
world.setLeaf(9,20,true)
world.setLeaf(10,20,true)
world.setLeaf(11,20,true)
world.setLeaf(9,21,true)
world.setLeaf(10,21,true)
world.setLeaf(11,21,true)
world.setLeaf(12,19,true)
world.setLeaf(12,21,true)
world.setLeaf(13,20,true)
world.setLeaf(9,22,true)
world.setLeaf(11,22,true)
world.setLeaf(10,23,true)
world.setLeaf(8,19,true)
world.setLeaf(8,21,true)
world.setLeaf(7,20,true)
world.setMushroom(9,15,true)
world.setMushroom(8,15,true)
world.setMushroom(7,15,true)
world.setTree(20,25,true)
kara.setPosition(10,15)
x1 = 9
y1 = 15
x2 = 8
y2 = 15
x3 = 7
y3 = 15
x4 = 6
y4 = 15
x5 = 5
y5 = 15
x6 = 4
y6 = 15
x7 = 3
y7 = 15
x8 = 2
y8 = 15
x9 = 1
y9 = 15
x10 = 1
y10 = 14
x11 = 1
y11 = 13
x12 = 1
y12 = 12
x13 = 1
y13 = 11
x14 = 1
y14 = 10
x15 = 1
y15 = 9
x16 = 1
y16 = 8
x17 = 1
y17 = 7
x18 = 1
y18 = 6
x19 = 1
y19 = 5
x20 = 1
y20 = 4
x21 = 1
y21 = 3
x22 = 1
y22 = 2
x23 = 1
y23 = 1
x24 = 2
y24 = 1
x25 = 3
y25 = 1
x26 = 4
y26 = 1
x27 = 5
y27 = 1
x28 = 6
y28 = 1
x29 = 7
y29 = 1
x30 = 8
y30 = 1
x31 = 9
y31 = 1
x32 = 10
y32 = 1
x33 = 11
y33 = 1
x34 = 12
y34 = 1
x35 = 13
y35 = 1
x36 = 14
y36 = 1
x37 = 15
y37 = 1
x38 = 16
y38 = 1
x39 = 17
y39 = 1
x40 = 18
y40 = 1
x41 = 19
y41 = 1
x42 = 19
y42 = 2
x43 = 19
y43 = 3

t = 0
r = 0
a = 1
e = 0
d = 3
while k == 0 and r == 0
  tools.checkState
  if kara.treeFront
    k = 1
  end
  con = Control(kara,tools,world,app_path,"",nil,nil)
  if con == "u"
    world.setMushroom(10,18,true)
  elsif con == "l"
    world.setMushroom(8,20,true)
  elsif con == "r"
    world.setMushroom(12,20,true)
  elsif con == "d"
    world.setMushroom(10,22,true)
  end
  if k == 0
    if world.isMushroom(10,18)
      world.setMushroom(10,18,false)
      kara.setDirection(0)
      d = 0
    end
    if world.isMushroom(12,20)
      world.setMushroom(12,20,false)
      kara.setDirection(3)
      d = 3
    end
    if world.isMushroom(8,20)
      world.setMushroom(8,20,false)
      kara.setDirection(1)
      d = 1
    end
    if world.isMushroom(10,22)
      world.setMushroom(10,22,false)
      kara.setDirection(2)
      d = 2
    end
    if kara.treeFront or kara.mushroomFront
      k = 1
    end
    if k == 0
      kara.move
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    xx1 = x1
    yy1 = y1
    xx2 = x2
    yy2 = y2
    xx3 = x3
    yy3 = y3
    xx4 = x4
    yy4 = y4
    xx5 = x5
    yy5 = y5
    xx6 = x6
    yy6 = y6
    xx7 = x7
    yy7 = y7
    xx8 = x8
    yy8 = y8
    xx9 = x9
    yy9 = y9
    xx10 = x10
    yy10 = y10
    xx11 = x11
    yy11 = y11
    xx12 = x12
    yy12 = y12
    xx13 = x13
    yy13 = y13
    xx14 = x14
    yy14 = y14
    xx15 = x15
    yy15 = y15
    xx16 = x16
    yy16 = y16
    xx17 = x17
    yy17 = y17
    xx18 = x18
    yy18 = y18
    xx19 = x19
    yy19 = y19
    xx20 = x20
    yy20 = y20
    xx21 = x21
    yy21 = y21
    xx22 = x22
    yy22 = y22
    xx23 = x23
    yy23 = y23
    xx24 = x24
    yy24 = y24
    xx25 = x25
    yy25 = y25
    xx26 = x26
    yy26 = y26
    xx27 = x27
    yy27 = y27
    xx28 = x28
    yy28 = y28
    xx29 = x29
    yy29 = y29
    xx30 = x30
    yy30 = y30
    xx31 = x31
    yy31 = y31
    xx32 = x32
    yy32 = y32
    xx33 = x33
    yy33 = y33
    xx34 = x34
    yy34 = y34
    xx35 = x35
    yy35 = y35
    xx36 = x36
    yy36 = y36
    xx37 = x37
    yy37 = y37
    xx38 = x38
    yy38 = y38
    xx39 = x39
    yy39 = y39
    xx40 = x40
    yy40 = y40
    xx41 = x41
    yy41 = y41
    xx42 = x42
    yy42 = y42
    xx43 = x43
    yy43 = y43
    if d == 0
      x1 = x
      y1 = y+1
    end
    if d == 1
      x1 = x+1
      y1 = y
    end
    if d == 2
      x1 = x
      y1 = y-1
    end
    if d == 3
      x1 = x-1
      y1 = y
    end
    for i in 1..19
      for j in 1..15
        if world.isMushroom(i,j)
          world.setMushroom(i,j,false)
        end
      end
    end
    x2 = xx1
    y2 = yy1
    x3 = xx2
    y3 = yy2
    x4 = xx3
    y4 = yy3
    x5 = xx4
    y5 = yy4
    x6 = xx5
    y6 = yy5
    x7 = xx6
    y7 = yy6
    x8 = xx7
    y8 = yy7
    x9 = xx8
    y9 = yy8
    x10 = xx9
    y10 = yy9
    x11 = xx10
    y11 = yy10
    x12 = xx11
    y12 = yy11
    x13 = xx12
    y13 = yy12
    x14 = xx13
    y14 = yy13
    x15 = xx14
    y15 = yy14
    x16 = xx15
    y16 = yy15
    x17 = xx16
    y17 = yy16
    x18 = xx17
    y18 = yy17
    x19 = xx18
    y19 = yy18
    x20 = xx19
    y20 = yy19
    x21 = xx20
    y21 = yy20
    x22 = xx21
    y22 = yy21
    x23 = xx22
    y23 = yy22
    x24 = xx23
    y24 = yy23
    x25 = xx24
    y25 = yy24
    x26 = xx25
    y26 = yy25
    x27 = xx26
    y27 = yy26
    x28 = xx27
    y28 = yy27
    x29 = xx28
    y29 = yy28
    x30 = xx29
    y30 = yy29
    x31 = xx30
    y31 = yy30
    x32 = xx31
    y32 = yy31
    x33 = xx32
    y33 = yy32
    x34 = xx33
    y34 = yy33
    x35 = xx34
    y35 = yy34
    x36 = xx35
    y36 = yy35
    x37 = xx36
    y37 = yy36
    x38 = xx37
    y38 = yy37
    x39 = xx38
    y39 = yy38
    x40 = xx39
    y40 = yy39
    x41 = xx40
    y41 = yy40
    x42 = xx41
    y42 = yy41
    x43 = xx42
    y43 = yy42
    world.setMushroom(x1,y1,true)
    world.setMushroom(x2,y2,true)
    world.setMushroom(x3,y3,true)
    if e > 0
      world.setMushroom(x4,y4,true)
      world.setMushroom(x5,y5,true)
    end
    if e > 1
      world.setMushroom(x6,y6,true)
      world.setMushroom(x7,y7,true)
    end
    if e > 2
      world.setMushroom(x8,y8,true)
      world.setMushroom(x9,y9,true)
    end
    if e > 3
      world.setMushroom(x10,y10,true)
      world.setMushroom(x11,y11,true)
    end
    if e > 4
      world.setMushroom(x12,y12,true)
      world.setMushroom(x13,y13,true)
    end
    if e > 5
      world.setMushroom(x14,y14,true)
      world.setMushroom(x15,y15,true)
    end
    if e > 6
      world.setMushroom(x16,y16,true)
      world.setMushroom(x17,y17,true)
    end
    if e > 7
      world.setMushroom(x18,y18,true)
      world.setMushroom(x19,y19,true)
    end
    if e > 8
      world.setMushroom(x20,y20,true)
      world.setMushroom(x21,y21,true)
    end
    if e > 9
      world.setMushroom(x22,y22,true)
      world.setMushroom(x23,y23,true)
    end
    if e > 10
      world.setMushroom(x24,y24,true)
      world.setMushroom(x25,y25,true)
    end
    if e > 11
      world.setMushroom(x26,y26,true)
      world.setMushroom(x27,y27,true)
    end
    if e > 12
      world.setMushroom(x28,y28,true)
      world.setMushroom(x29,y29,true)
    end
    if e > 13
      world.setMushroom(x30,y30,true)
      world.setMushroom(x31,y31,true)
    end
    if e > 14
      world.setMushroom(x32,y32,true)
      world.setMushroom(x33,y33,true)
    end
    if e > 15
      world.setMushroom(x34,y34,true)
      world.setMushroom(x35,y35,true)
    end
    if e > 16
      world.setMushroom(x36,y36,true)
      world.setMushroom(x37,y37,true)
    end
    if e > 17
      world.setMushroom(x38,y38,true)
      world.setMushroom(x39,y39,true)
    end
    if e > 18
      world.setMushroom(x40,y40,true)
      world.setMushroom(x41,y41,true)
    end
    if e > 19
      world.setMushroom(x42,y42,true)
      world.setMushroom(x43,y43,true)
    end
    
    
    
    for i in 0..19
      for j in 0..15
        if world.isLeaf(i,j)
          a = 0
        end
      end
    end
    if a == 1 and t == 0
      a = 0
      xl = tools.random(15)
      yl = tools.random(12)
      if xl == 0
        xl = 17
      end
      if yl == 0
        yl = 14
      end
      if xl == 1
        xl = 16
      end
      if yl == 1
        yl = 13
      end
      world.setLeaf(xl,yl,true)
    end
    if kara.onLeaf
      kara.removeLeaf
      a = 1
      e = e+1
      ap = ap+1
      p = p+1
    end
    if le == 1
      tools.sleep(600)
    elsif le == 2
      tools.sleep(450)
    elsif le >= 3
      tools.sleep(300)
    end
  end
  if p == 19
    world.setTree(10,0,false)
    t = 1
  end
  if p == 19 and not world.isEmpty(10,0)
    r = 1
    le = le+1
  end
  for i in 0..p
    world.setLeaf(i,25,true)
  end
end
end
Output(kara,tools,world,app_path,menu,"du hast verlohren!! Kara konnte #{ap} Blätter fressen und du bist bis in Level #{le} gekommen","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[10].chr.to_i
au = ap.to_i*5
if not menu == "app"
  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coin","","")
else
  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coin","","")
end
z = File.new(my_path+"coin.txt", "w+")
z.puts(doler+(au*bon))
z.close
system("Taskkill /IM keypress.exe /F")
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end