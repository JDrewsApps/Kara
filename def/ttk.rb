def ttk(pack)
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
world.setSize(17,17)
`"#{my_path}"mouse zoomKara`
for i in 0..2
    for j in 0..2
        world.setTree (0+i*6,0+j*6,true)
        world.setTree (1+i*6,0+j*6,true)
        world.setTree (2+i*6,0+j*6,true)
        world.setTree (3+i*6,0+j*6,true)
        world.setTree (4+i*6,0+j*6,true)
        world.setTree (0+i*6,4+j*6,true)
        world.setTree (1+i*6,4+j*6,true)
        world.setTree (2+i*6,4+j*6,true)
        world.setTree (3+i*6,4+j*6,true)
        world.setTree (4+i*6,4+j*6,true)
        world.setTree (0+i*6,0+j*6,true)
        world.setTree (0+i*6,1+j*6,true)
        world.setTree (0+i*6,2+j*6,true)
        world.setTree (0+i*6,3+j*6,true)
        world.setTree (0+i*6,4+j*6,true)
        world.setTree (4+i*6,0+j*6,true)
        world.setTree (4+i*6,1+j*6,true)
        world.setTree (4+i*6,2+j*6,true)
        world.setTree (4+i*6,3+j*6,true)
        world.setTree (4+i*6,4+j*6,true)
    end
end
x1 = false
x2 = false
x3 = false
x4 = false
x5 = false
x6 = false
x7 = false
x8 = false
x9 = false
x1p = false
x2p = false
x3p = false
x4p = false
x5p = false
x6p = false
x7p = false
x8p = false
x9p = false
x1l = false
x2l = false
x3l = false
x4l = false
x5l = false
x6l = false
x7l = false
x8l = false
x9l = false
k = 0
ge = ""
while ge == ""
`"#{my_path}"mouse setKaraMushroom`
g = 0
while g == 0 and ge == ""

xe = 0
if menu == "normal"
	while xe == 0
	    for hx in 1..15
	      for hy in 1..15
	        if world.isMushroom(hx,hy)
	          if hx>0 and hx<4 and hy>0 and hy<4 and x1p == false
	            xe = 1
	          elsif hx>6 and hx<10 and hy>0 and hy<4 and x2p == false
	            xe = 2
	          elsif hx>12 and hx<16 and hy>0 and hy<4 and x3p == false
	            xe = 3
	          elsif hx>0 and hx<4 and hy>6 and hy<10 and x4p == false
	            xe = 4
	          elsif hx>6 and hx<10 and hy>6 and hy<10 and x5p == false
	            xe = 5
	          elsif hx>12 and hx<16 and hy>6 and hy<10 and x6p == false
	            xe = 6
	          elsif hx>0 and hx<4 and hy>12 and hy<16 and x7p == false
	            xe = 7
	          elsif hx>6 and hx<10 and hy>12 and hy<16 and x8p == false
	            xe = 8
	          elsif hx>12 and hx<16 and hy>12 and hy<16 and x9p == false
	            xe = 9
	          end
	        end
	      end
	    end
	end
elsif menu == "app"
    str = "c/"
    if x1 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x2 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x3 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x4 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x5 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x6 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x7 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x8 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    if x9 == false
        str = str+"x/"
    else
        str = str+"n/"
    end
    str = str+"s%"
    xe = Control2(kara,tools,world,app_path,str,nil,nil)
    xe = xe.to_i
end
#xe = Input(kara,tools,world,app_path,menu,"auf weches Feld willst du einen Pilz setzen ?","i","1/2/3/4/5/6/7/8/9","","")
if xe == 1 and x1 == false
  x1 = true
  x1p = true
  world.setMushroom(1,1,true)
  world.setMushroom(3,1,true)
  world.setMushroom(2,2,true)
  world.setMushroom(1,3,true)
  world.setMushroom(3,3,true)
  g = 1
elsif xe == 2 and x2 == false
  x2 = true
  x2p = true
  world.setMushroom(7,1,true)
  world.setMushroom(9,1,true)
  world.setMushroom(8,2,true)
  world.setMushroom(7,3,true)
  world.setMushroom(9,3,true)
  g = 1
elsif xe == 3 and x3 == false
  x3 = true
  x3p = true
  world.setMushroom(13,1,true)
  world.setMushroom(15,1,true)
  world.setMushroom(14,2,true)
  world.setMushroom(13,3,true)
  world.setMushroom(15,3,true)
  g = 1
elsif xe == 4 and x4 == false
  x4 = true
  x4p = true
  world.setMushroom(1,7,true)
  world.setMushroom(3,7,true)
  world.setMushroom(2,8,true)
  world.setMushroom(1,9,true)
  world.setMushroom(3,9,true)
  g = 1
elsif xe == 5 and x5 == false
  x5 = true
  x5p = true
  world.setMushroom(7,7,true)
  world.setMushroom(9,7,true)
  world.setMushroom(8,8,true)
  world.setMushroom(7,9,true)
  world.setMushroom(9,9,true)
  g = 1
elsif xe == 6 and x6 == false
  x6 = true
  x6p = true
  world.setMushroom(13,7,true)
  world.setMushroom(15,7,true)
  world.setMushroom(14,8,true)
  world.setMushroom(13,9,true)
  world.setMushroom(15,9,true)
  g = 1
elsif xe == 7 and x7 == false
  x7 = true
  x7p = true
  world.setMushroom(1,13,true)
  world.setMushroom(3,13,true)
  world.setMushroom(2,14,true)
  world.setMushroom(1,15,true)
  world.setMushroom(3,15,true)
  g = 1
elsif xe == 8 and x8 == false
  x8 = true
  x8p = true
  world.setMushroom(7,13,true)
  world.setMushroom(9,13,true)
  world.setMushroom(8,14,true)
  world.setMushroom(7,15,true)
  world.setMushroom(9,15,true)
  g = 1
elsif xe == 9 and x9 == false
  x9 = true
  x9p = true
  world.setMushroom(13,13,true)
  world.setMushroom(15,13,true)
  world.setMushroom(14,14,true)
  world.setMushroom(13,15,true)
  world.setMushroom(15,15,true)
  g = 1
else
Output(kara,tools,world,app_path,menu,"Diese Feld ist belegt oder es ist kein gültiges Feld","","")
end
end
f = 0
if x1 == true and x2 == true and x3 == true and x4 == true and x5 == true and x6 == true and x7 == true and x8 == true and x9 == true
ge = "u"
end
if x1p and x2p and x3p
ge = "p"
end
if x4p and x5p and x6p
ge = "p"
end
if x7p and x8p and x9p
ge = "p"
end
if x1p and x4p and x7p
ge = "p"
end
if x2p and x5p and x8p
ge = "p"
end
if x3p and x6p and x9p
ge = "p"
end
if x1p and x5p and x9p
ge = "p"
end
if x3p and x5p and x7p
ge = "p"
end
if x1l and x2l and x3l
ge = "l"
end
if x4l and x5l and x6l
ge = "l"
end
if x7l and x8l and x9l
ge = "l"
end
if x1l and x4l and x7l
ge = "l"
end
if x2l and x5l and x8l
ge = "l"
end
if x3l and x6l and x9l
ge = "l"
end
if x1l and x5l and x9l
ge = "l"
end
if x3l and x5l and x7l
ge = "l"
end
w = 0
if w == 0 and x1p and x2p and x3 == false
x3l = true
x3 = true
w = 1
end
if w == 0 and x1p and x3p and x2 == false
x2l = true
x2 = true
w = 1
end
if w == 0 and x2p and x3p and x1 == false
x1l = true
x1 = true
w = 1
end
if w == 0 and x4p and x5p and x6 == false
x6l = true
x6 = true
w = 1
end
if w == 0 and x4p and x6p and x5 == false
x5l = true
x5 = true
w = 1
end
if w == 0 and x5p and x6p and x4 == false
x4l = true
x4 = true
w = 1
end
if w == 0 and x7p and x8p and x9 == false
x9l = true
x9 = true
w = 1
end
if w == 0 and x7p and x9p and x8 == false
x8l = true
x8 = true
w = 1
end
if w == 0 and x8p and x9p and x7 == false
x7l = true
x7 = true
w = 1
end
if w == 0 and x1p and x4p and x7 == false
x7l = true
x7 = true
w = 1
end
if w == 0 and x1p and x7p and x4 == false
x4l = true
x4 = true
w = 1
end
if w == 0 and x4p and x7p and x1 == false
x1l = true
x1 = true
w = 1
end
if w == 0 and x2p and x5p and x8 == false
x8l = true
x8 = true
w = 1
end
if w == 0 and x2p and x8p and x5 == false
x5l = true
x5 = true
w = 1
end
if w == 0 and x5p and x8p and x2 == false
x2l = true
x2 = true
w = 1
end
if w == 0 and x3p and x6p and x9 == false
x9l = true
x9 = true
w = 1
end
if w == 0 and x3p and x9p and x6 == false
x6l = true
x6 = true
w = 1
end
if w == 0 and x6p and x9p and x3 == false
x3l = true
x3 = true
w = 1
end
if w == 0 and x1p and x5p and x9 == false
x9l = true
x9 = true
w = 1
end
if w == 0 and x1p and x9p and x5 == false
x5l = true
x5 = true
w = 1
end
if w == 0 and x5p and x9p and x1 == false
x1l = true
x1 = true
w = 1
end
if w == 0 and x3p and x5p and x7 == false
x7l = true
x7 = true
w = 1
end
if w == 0 and x3p and x7p and x5 == false
x5l = true
x5 = true
w = 1
end
if w == 0 and x5p and x7p and x3 == false
x3l = true
x3 = true
w = 1
end
while f == 0 and ge == "" and w == 0
y = tools.random(8)
if y == 0
y = 9
end
if y == 1 and x1 == false 
x1l = true
x1 = true
f = 1
end
if y == 2 and x2 == false 
x2l = true
x2 = true
f = 1
end
if y == 3 and x3 == false 
x3l = true
x3 = true
f = 1
end
if y == 4 and x4 == false 
x4l = true
x4 = true
f = 1
end
if y == 5 and x5 == false 
x5l = true
x5 = true
f = 1
end
if y == 6 and x6 == false 
x6l = true
x6 = true
f = 1
end
if y == 7 and x7 == false 
x7l = true
x7 = true
f = 1
end
if y == 8 and x8 == false 
x8l = true
x8 = true
f = 1
end
if y == 9 and x9 == false 
x9l = true
x9 = true
f = 1
end
end
if x1l 
    world.setLeaf(2,1,true)
    world.setLeaf(1,2,true)
    world.setLeaf(3,2,true)
    world.setLeaf(2,3,true)
end
if x2l
    world.setLeaf(8,1,true)
    world.setLeaf(7,2,true)
    world.setLeaf(9,2,true)
    world.setLeaf(8,3,true)
end
if x3l
    world.setLeaf(14,1,true)
    world.setLeaf(13,2,true)
    world.setLeaf(15,2,true)
    world.setLeaf(14,3,true)
end
if x4l 
    world.setLeaf(2,7,true)
    world.setLeaf(1,8,true)
    world.setLeaf(3,8,true)
    world.setLeaf(2,9,true)
end
if x5l
    world.setLeaf(8,7,true)
    world.setLeaf(7,8,true)
    world.setLeaf(9,8,true)
    world.setLeaf(8,9,true)
end
if x6l
    world.setLeaf(14,7,true)
    world.setLeaf(13,8,true)
    world.setLeaf(15,8,true)
    world.setLeaf(14,9,true)
end
if x7l 
    world.setLeaf(2,13,true)
    world.setLeaf(1,14,true)
    world.setLeaf(3,14,true)
    world.setLeaf(2,15,true)
end
if x8l
    world.setLeaf(8,13,true)
    world.setLeaf(7,14,true)
    world.setLeaf(9,14,true)
    world.setLeaf(8,15,true)
end
if x9l
    world.setLeaf(14,13,true)
    world.setLeaf(13,14,true)
    world.setLeaf(15,14,true)
    world.setLeaf(14,15,true)
end
if x1 == true and x2 == true and x3 == true and x4 == true and x5 == true and x6 == true and x7 == true and x8 == true and x9 == true and ge == ""
ge = "u"
end
if x1p and x2p and x3p and ge == ""
ge = "p"
end
if x4p and x5p and x6p and ge == ""
ge = "p"
end
if x7p and x8p and x9p and ge == ""
ge = "p"
end
if x1p and x4p and x7p and ge == ""
ge = "p"
end
if x2p and x5p and x8p and ge == ""
ge = "p"
end
if x3p and x6p and x9p and ge == ""
ge = "p"
end
if x1p and x5p and x9p and ge == ""
ge = "p"
end
if x3p and x5p and x7p and ge == ""
ge = "p"
end
if x1l and x2l and x3l and ge == ""
ge = "l"
end
if x4l and x5l and x6l and ge == ""
ge = "l"
end
if x7l and x8l and x9l and ge == ""
ge = "l"
end
if x1l and x4l and x7l and ge == ""
ge = "l"
end
if x2l and x5l and x8l and ge == ""
ge = "l"
end
if x3l and x6l and x9l and ge == ""
ge = "l"
end
if x1l and x5l and x9l and ge == ""
ge = "l"
end
if x3l and x5l and x7l and ge == ""
ge = "l"
end
dol = 0
if ge == "l"
Output(kara,tools,world,app_path,menu,"du hast verlohren","","")
dol = 5
end
if ge == "p"
Output(kara,tools,world,app_path,menu,"du hast gewonnen","","")
dol = 20
end
if ge == "u"
Output(kara,tools,world,app_path,menu,"unentschieden!","","")
dol = 10
end
if ge == "l" or ge == "p" or ge == "u"
        doler = File.open(my_path+"coin.txt").read.to_f
        up = File.open(my_path+"updates.txt").read
        bon = up[5].chr.to_i
        au = dol
        if not menu == "app"
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
        else
        Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
        end
        z = File.new(my_path+"coin.txt", "w+")
        z.puts(doler+(au*bon))
        z.close
end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end