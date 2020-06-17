def defenders(pack)
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
world.setSize(30,25)
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/25*18.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/30*14.5+y[0].to_i).round
    s3 = ((y[3].to_i-y[1].to_i)/25*22.5+y[1].to_i).round
	s4 = ((y[2].to_i-y[0].to_i)/30*14.5+y[0].to_i).round
    s5 = ((y[3].to_i-y[1].to_i)/25*20.5+y[1].to_i).round
	s6 = ((y[2].to_i-y[0].to_i)/30*14.5+y[0].to_i).round
	ss = "W;"+s2.to_s+";"+s1.to_s+";S;"+s4.to_s+";"+s3.to_s+";Space;"+s6.to_s+";"+s5.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/u/n/n/m/n/n/d/n/s%",nil,nil)
end
r = "r"
ev1 = 0
p = 0
ev2 = 0
ev3 = 0
ev4 = 0
kara.setPosition(14,7)
for i in 0..29
  world.setLeaf(i,15,true)
end
l = 200
world.setLeaf(14,17,true)
world.setLeaf(13,18,true)
world.setLeaf(15,18,true)
world.setLeaf(14,19,true)
world.setLeaf(13,19,true)
world.setLeaf(15,19,true)
world.setLeaf(13,20,true)
world.setLeaf(15,20,true)
world.setLeaf(14,21,true)
world.setLeaf(13,21,true)
world.setLeaf(15,21,true)
world.setLeaf(13,22,true)
world.setLeaf(15,22,true)
world.setLeaf(14,23,true)
k = 0
while k == 0
  if r == "r"
    world.setTree(15,5,true)
    world.setTree(15,9,true)
    world.setTree(13,5,false)
    world.setTree(13,9,false)
  end
  if r == "l"
    world.setTree(15,5,false)
    world.setTree(15,9,false)
    world.setTree(13,5,true)
    world.setTree(13,9,true)
  end
  if ev1 == 0
    if r == "r"
      for i in 0..29
        for j in 0..14
          if world.isMushroom(i,j)
            world.setMushroom(i,j,false)
            if not i == 0
              xk = kara.getPosition.getX.to_i
              yk = kara.getPosition.getY.to_i
              if not ((i-1) == xk and j == yk)
                if not world.isTree(i-1,j)
                  world.setMushroom(i-1,j,true)
                else
                  k = 1
                end
              else
                k = 1
              end
            else
              xk = kara.getPosition.getX.to_i
              yk = kara.getPosition.getY.to_i
              if not (29 == xk and j == yk)
                if not world.isTree(29,j)
                  world.setMushroom(29,j,true)
                else
                  k = 1
                end
              else
                k = 1
              end
            end
          end
        end
      end
    end
    if r == "l"
      x = 29
      for i in 0..29
        for j in 0..14
          if world.isMushroom(x,j)
            world.setMushroom(x,j,false)
            if not x == 29
              xk = kara.getPosition.getX.to_i
              yk = kara.getPosition.getY.to_i
              if not ((x+1) == xk and j == yk)
                if not world.isTree(x+1,j)
                  world.setMushroom(x+1,j,true)
                else
                  k = 1
                end
              else
                k = 1
              end
            else
              xk = kara.getPosition.getX.to_i
              yk = kara.getPosition.getY.to_i
              if not (0 == xk and j == yk)
                if not world.isTree(0,j)
                  world.setMushroom(0,j,true)
                else
                  k = 1
                end
              else
                k = 1
              end
            end
          end
        end
        x = x-1
      end
    end
  end
  if ev2 == 0
    if r == "l"
      for i in 0..29
        for j in 0..14
          if world.isLeaf(i,j)
            world.setLeaf(i,j,false)
            if not i == 0
              world.setLeaf(i-1,j,true)
            else
            end
          end
        end
      end
    end
    if r == "r"
      x = 29
      for i in 0..29
        for j in 0..14
          if world.isLeaf(x,j)
            world.setLeaf(x,j,false)
            if not x == 29
              world.setLeaf(x+1,j,true)
            else
            end
          end
        end
        x = x-1
      end
    end
  end
  if ev3 == 0
    z = tools.random(14)
    if r == "r"
      world.setMushroom(29,z,true)
    end
    if r == "l"
      world.setMushroom(0,z,true)
    end
  end
  con = Control(kara,tools,world,app_path,"",nil,nil)
  if con == "u"
    world.setMushroom(14,18,true)
  elsif con == "m"
    world.setMushroom(14,20,true)
  elsif con == "d"
    world.setMushroom(14,22,true)
  end
  if world.isMushroom(14,18)
    world.setMushroom(14,18,false)
    yk = kara.getPosition.getY.to_i
    yk = yk-1
    if yk == -1
      yk = 14
    end
    kara.setPosition(14,yk)
  end
  if world.isMushroom(14,22)
    world.setMushroom(14,22,false)
    yk = kara.getPosition.getY.to_i
    yk = yk+1
    if yk == 15
      yk = 0
    end
    kara.setPosition(14,yk)
  end
  if world.isMushroom(14,20)
    world.setMushroom(14,20,false)
    if r == "r"
      xk = kara.getPosition.getX.to_i
      yk = kara.getPosition.getY.to_i
      world.setLeaf(xk+2,yk,true)
    end
    if r == "l"
      xk = kara.getPosition.getX.to_i
      yk = kara.getPosition.getY.to_i
      world.setLeaf(xk-2,yk,true)
    end
  end
  if r == "r"
    kara.setDirection(3)
  end
  if r == "l"
    kara.setDirection(1)
  end
  ev1 = ev1+1
  ev2 = ev2+1
  ev3 = ev3+1 
  ev4 = ev4+1
  if ev4 == 5000
    if r == "r"
      r = "l"
    elsif r == "l"
      r = "r"
    end
    ev4 = 0
  end
  if ev1 > l
    ev1 = 0
  end
  if ev2 == 1
    ev2 = 0
  end
  if ev3 > (l*5)
    ev3 = 0
  end
  for i in 0..29
    for j in 0..14
      if world.isLeaf(i,j) and world.isMushroom(i,j)
        world.setLeaf(i,j,false)
        world.setMushroom(i,j,false)
        p = p+1
        ev1 = 7
        if p > 20
          l = 50
        elsif p > 15
          l = 70
        elsif p > 10
          l = 100
        elsif p > 5
          l = 150
        else
          l = 200
        end
      end
    end
  end
end
Output(kara,tools,world,app_path,menu,"du hast verlohren! du konntest #{p.to_s} Pilze zerstören","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[13].chr.to_i
au = (p.to_i*1.5).round
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