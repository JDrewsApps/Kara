def rad(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
k = 0
coins = File.open(my_path+"coin.txt").read.to_i
if coins < 0 or coins == 0
  Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
  k = 1
end
if k == 0
geset = Input(kara,tools,world,app_path,menu,"wie viele coins willst du setzen","i","","","")

if (coins - geset)>= 0
  coins = coins-geset
  newc = File.new(my_path+"coin.txt", "w+")
  newc.puts(coins)
  newc.close
else
  Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
  k = 1
end
end
if k == 0
p1 = 1 #k
p2 = 2 #t
p3 = 3 #t
p4 = 4 #m
p5 = 5 #t
p6 = 6 #t
p7 = 7 #m
p8 = 8 #t
p9 = 9 #t
p10 = 10 #m
p11 = 11 #t
p12 = 12 #t
p13 = 13 #m
p14 = 14 #t
p15 = 15 #t
p16 = 16 #m
p17 = 17 #t
p18 = 18 #t
p19 = 19 #m
p20 = 20 #t
p21 = 21 #t
p22 = 22 #m
p23 = 23 #t
p24 = 24 #t
l = 0
world.setSize (11,12)
`"#{my_path}"mouse zoomKara`
f = tools.random (38)
ff = f+10
fl = ff/5.to_f
for i in 1..ff
if i < fl
l = 1
end
if l == 0 and i<(fl*2)
l = 2
end
if l == 0 and i<(fl*3)
l = 3
end
if l == 0 and i<(fl*4)
l = 4
end
if l == 0 and i>(fl*4)
l = 5
end
world.clearAll
world.setLeaf (4,0,true)
world.setLeaf (5,0,true)
world.setLeaf (6,0,true)
world.setLeaf (5,1,true)
world.setLeaf (5,3,true)

if p1 == 1
  world.setLeaf (5,2,true)
end
if p1 == 2 or p1 == 3 or p1 == 5 or p1 == 6 or p1 == 8 or p1 == 9 or p1 == 11 or p1 == 12 or p1 == 14 or p1 == 15 or p1 == 17 or p1 == 18 or p1 == 20 or p1 == 21 or p1 == 23 or p1 == 24
  world.setTree (5,2,true)
end
if p1 == 4 or p1 == 7 or p1 == 10 or p1 == 13 or p1 == 16 or p1 == 19 or p1 == 22
  world.setMushroom (5,2,true)
end

if p2 == 1
  world.setLeaf (6,2,true)
end
if p2 == 2 or p2 == 3 or p2 == 5 or p2 == 6 or p2 == 8 or p2 == 9 or p2 == 11 or p2 == 12 or p2 == 14 or p2 == 15 or p2 == 17 or p2 == 18 or p2 == 20 or p2 == 21 or p2 == 23 or p2 == 24
  world.setTree (6,2,true)
end
if p2 == 4 or p2 == 7 or p2 == 10 or p2 == 13 or p2 == 16 or p2 == 19 or p2 == 22
  world.setMushroom (6,2,true)
end

if p3 == 1
  world.setLeaf (7,2,true)
end
if p3 == 2 or p3 == 3 or p3 == 5 or p3 == 6 or p3 == 8 or p3 == 9 or p3 == 11 or p3 == 12 or p3 == 14 or p3 == 15 or p3 == 17 or p3 == 18 or p3 == 20 or p3 == 21 or p3 == 23 or p3 == 24
  world.setTree (7,2,true)
end
if p3 == 4 or p3 == 7 or p3 == 10 or p3 == 13 or p3 == 16 or p3 == 19 or p3 == 22
  world.setMushroom (7,2,true)
end

if p4 == 1
  world.setLeaf (8,3,true)
end
if p4 == 2 or p4 == 3 or p4 == 5 or p4 == 6 or p4 == 8 or p4 == 9 or p4 == 11 or p4 == 12 or p4 == 14 or p4 == 15 or p4 == 17 or p4 == 18 or p4 == 20 or p4 == 21 or p4 == 23 or p4 == 24
  world.setTree (8,3,true)
end
if p4 == 4 or p4 == 7 or p4 == 10 or p4 == 13 or p4 == 16 or p4 == 19 or p4 == 22
  world.setMushroom (8,3,true)
end

if p5 == 1
  world.setLeaf (9,4,true)
end
if p5 == 2 or p5 == 3 or p5 == 5 or p5 == 6 or p5 == 8 or p5 == 9 or p5 == 11 or p5 == 12 or p5 == 14 or p5 == 15 or p5 == 17 or p5 == 18 or p5 == 20 or p5 == 21 or p5 == 23 or p5 == 24
  world.setTree (9,4,true)
end
if p5 == 4 or p5 == 7 or p5 == 10 or p5 == 13 or p5 == 16 or p5 == 19 or p5 == 22
  world.setMushroom (9,4,true)
end

if p6 == 1
  world.setLeaf (9,5,true)
end
if p6 == 2 or p6 == 3 or p6 == 5 or p6 == 6 or p6 == 8 or p6 == 9 or p6 == 11 or p6 == 12 or p6 == 14 or p6 == 15 or p6 == 17 or p6 == 18 or p6 == 20 or p6 == 21 or p6 == 23 or p6 == 24
  world.setTree (9,5,true)
end
if p6 == 4 or p6 == 7 or p6 == 10 or p6 == 13 or p6 == 16 or p6 == 19 or p6 == 22
  world.setMushroom (9,5,true)
end

if p7 == 1
  world.setLeaf (9,6,true)
end
if p7 == 2 or p7 == 3 or p7 == 5 or p7 == 6 or p7 == 8 or p7 == 9 or p7 == 11 or p7 == 12 or p7 == 14 or p7 == 15 or p7 == 17 or p7 == 18 or p7 == 20 or p7 == 21 or p7 == 23 or p7 == 24
  world.setTree (9,6,true)
end
if p7 == 4 or p7 == 7 or p7 == 10 or p7 == 13 or p7 == 16 or p7 == 19 or p7 == 22
  world.setMushroom (9,6,true)
end

if p8 == 1
  world.setLeaf (9,7,true)
end
if p8 == 2 or p8 == 3 or p8 == 5 or p8 == 6 or p8 == 8 or p8 == 9 or p8 == 11 or p8 == 12 or p8 == 14 or p8 == 15 or p8 == 17 or p8 == 18 or p8 == 20 or p8 == 21 or p8 == 23 or p8 == 24
  world.setTree (9,7,true)
end
if p8 == 4 or p8 == 7 or p8 == 10 or p8 == 13 or p8 == 16 or p8 == 19 or p8 == 22
  world.setMushroom (9,7,true)
end

if p9 == 1
  world.setLeaf (9,8,true)
end
if p9 == 2 or p9 == 3 or p9 == 5 or p9 == 6 or p9 == 8 or p9 == 9 or p9 == 11 or p9 == 12 or p9 == 14 or p9 == 15 or p9 == 17 or p9 == 18 or p9 == 20 or p9 == 21 or p9 == 23 or p9 == 24
  world.setTree (9,8,true)
end
if p9 == 4 or p9 == 7 or p9 == 10 or p9 == 13 or p9 == 16 or p9 == 19 or p9 == 22
  world.setMushroom (9,8,true)
end

if p10 == 1
  world.setLeaf (8,9,true)
end
if p10 == 2 or p10 == 3 or p10 == 5 or p10 == 6 or p10 == 8 or p10 == 9 or p10 == 11 or p10 == 12 or p10 == 14 or p10 == 15 or p10 == 17 or p10 == 18 or p10 == 20 or p10 == 21 or p10 == 23 or p10 == 24
  world.setTree (8,9,true)
end
if p10 == 4 or p10 == 7 or p10 == 10 or p10 == 13 or p10 == 16 or p10 == 19 or p10 == 22
  world.setMushroom (8,9,true)
end

if p11 == 1
  world.setLeaf (7,10,true)
end
if p11 == 2 or p11 == 3 or p11 == 5 or p11 == 6 or p11 == 8 or p11 == 9 or p11 == 11 or p11 == 12 or p11 == 14 or p11 == 15 or p11 == 17 or p11 == 18 or p11 == 20 or p11 == 21 or p11 == 23 or p11 == 24
  world.setTree (7,10,true)
end
if p11 == 4 or p11 == 7 or p11 == 10 or p11 == 13 or p11 == 16 or p11 == 19 or p11 == 22
  world.setMushroom (7,10,true)
end

if p12 == 1
  world.setLeaf (6,10,true)
end
if p12 == 2 or p12 == 3 or p12 == 5 or p12 == 6 or p12 == 8 or p12 == 9 or p12 == 11 or p12 == 12 or p12 == 14 or p12 == 15 or p12 == 17 or p12 == 18 or p12 == 20 or p12 == 21 or p12 == 23 or p12 == 24
  world.setTree (6,10,true)
end
if p12 == 4 or p12 == 7 or p12 == 10 or p12 == 13 or p12 == 16 or p12 == 19 or p12 == 22
  world.setMushroom (6,10,true)
end

if p13 == 1
  world.setLeaf (5,10,true)
end
if p13 == 2 or p13 == 3 or p13 == 5 or p13 == 6 or p13 == 8 or p13 == 9 or p13 == 11 or p13 == 12 or p13 == 14 or p13 == 15 or p13 == 17 or p13 == 18 or p13 == 20 or p13 == 21 or p13 == 23 or p13 == 24
  world.setTree (5,10,true)
end
if p13 == 4 or p13 == 7 or p13 == 10 or p13 == 13 or p13 == 16 or p13 == 19 or p13 == 22
  world.setMushroom (5,10,true)
end

if p14 == 1
  world.setLeaf (4,10,true)
end
if p14 == 2 or p14 == 3 or p14 == 5 or p14 == 6 or p14 == 8 or p14 == 9 or p14 == 11 or p14 == 12 or p14 == 14 or p14 == 15 or p14 == 17 or p14 == 18 or p14 == 20 or p14 == 21 or p14 == 23 or p14 == 24
  world.setTree (4,10,true)
end
if p14 == 4 or p14 == 7 or p14 == 10 or p14 == 13 or p14 == 16 or p14 == 19 or p14 == 22
  world.setMushroom (4,10,true)
end

if p15 == 1
  world.setLeaf (3,10,true)
end
if p15 == 2 or p15 == 3 or p15 == 5 or p15 == 6 or p15 == 8 or p15 == 9 or p15 == 11 or p15 == 12 or p15 == 14 or p15 == 15 or p15 == 17 or p15 == 18 or p15 == 20 or p15 == 21 or p15 == 23 or p15 == 24
  world.setTree (3,10,true)
end
if p15 == 4 or p15 == 7 or p15 == 10 or p15 == 13 or p15 == 16 or p15 == 19 or p15 == 22
  world.setMushroom (3,10,true)
end

if p16 == 1
  world.setLeaf (2,9,true)
end
if p16 == 2 or p16 == 3 or p16 == 5 or p16 == 6 or p16 == 8 or p16 == 9 or p16 == 11 or p16 == 12 or p16 == 14 or p16 == 15 or p16 == 17 or p16 == 18 or p16 == 20 or p16 == 21 or p16 == 23 or p16 == 24
  world.setTree (2,9,true)
end
if p16 == 4 or p16 == 7 or p16 == 10 or p16 == 13 or p16 == 16 or p16 == 19 or p16 == 22
  world.setMushroom (2,9,true)
end

if p17 == 1
  world.setLeaf (1,8,true)
end
if p17 == 2 or p17 == 3 or p17 == 5 or p17 == 6 or p17 == 8 or p17 == 9 or p17 == 11 or p17 == 12 or p17 == 14 or p17 == 15 or p17 == 17 or p17 == 18 or p17 == 20 or p17 == 21 or p17 == 23 or p17 == 24
  world.setTree (1,8,true)
end
if p17 == 4 or p17 == 7 or p17 == 10 or p17 == 13 or p17 == 16 or p17 == 19 or p17 == 22
  world.setMushroom (1,8,true)
end

if p18 == 1
  world.setLeaf (1,7,true)
end
if p18 == 2 or p18 == 3 or p18 == 5 or p18 == 6 or p18 == 8 or p18 == 9 or p18 == 11 or p18 == 12 or p18 == 14 or p18 == 15 or p18 == 17 or p18 == 18 or p18 == 20 or p18 == 21 or p18 == 23 or p18 == 24
  world.setTree (1,7,true)
end
if p18 == 4 or p18 == 7 or p18 == 10 or p18 == 13 or p18 == 16 or p18 == 19 or p18 == 22
  world.setMushroom (1,7,true)
end

if p19 == 1
  world.setLeaf (1,6,true)
end
if p19 == 2 or p19 == 3 or p19 == 5 or p19 == 6 or p19 == 8 or p19 == 9 or p19 == 11 or p19 == 12 or p19 == 14 or p19 == 15 or p19 == 17 or p19 == 18 or p19 == 20 or p19 == 21 or p19 == 23 or p19 == 24
  world.setTree (1,6,true)
end
if p19 == 4 or p19 == 7 or p19 == 10 or p19 == 13 or p19 == 16 or p19 == 19 or p19 == 22
  world.setMushroom (1,6,true)
end

if p20 == 1
  world.setLeaf (1,5,true)
end
if p20 == 2 or p20 == 3 or p20 == 5 or p20 == 6 or p20 == 8 or p20 == 9 or p20 == 11 or p20 == 12 or p20 == 14 or p20 == 15 or p20 == 17 or p20 == 18 or p20 == 20 or p20 == 21 or p20 == 23 or p20 == 24
  world.setTree (1,5,true)
end
if p20 == 4 or p20 == 7 or p20 == 10 or p20 == 13 or p20 == 16 or p20 == 19 or p20 == 22
  world.setMushroom (1,5,true)
end

if p21 == 1
  world.setLeaf (1,4,true)
end
if p21 == 2 or p21 == 3 or p21 == 5 or p21 == 6 or p21 == 8 or p21 == 9 or p21 == 11 or p21 == 12 or p21 == 14 or p21 == 15 or p21 == 17 or p21 == 18 or p21 == 20 or p21 == 21 or p21 == 23 or p21 == 24
  world.setTree (1,4,true)
end
if p21 == 4 or p21 == 7 or p21 == 10 or p21 == 13 or p21 == 16 or p21 == 19 or p21 == 22
  world.setMushroom (1,4,true)
end

if p22 == 1
  world.setLeaf (2,3,true)
end
if p22 == 2 or p22 == 3 or p22 == 5 or p22 == 6 or p22 == 8 or p22 == 9 or p22 == 11 or p22 == 12 or p22 == 14 or p22 == 15 or p22 == 17 or p22 == 18 or p22 == 20 or p22 == 21 or p22 == 23 or p22 == 24
  world.setTree (2,3,true)
end
if p22 == 4 or p22 == 7 or p22 == 10 or p22 == 13 or p22 == 16 or p22 == 19 or p22 == 22
  world.setMushroom (2,3,true)
end

if p23 == 1
  world.setLeaf (3,2,true)
end
if p23 == 2 or p23 == 3 or p23 == 5 or p23 == 6 or p23 == 8 or p23 == 9 or p23 == 11 or p23 == 12 or p23 == 14 or p23 == 15 or p23 == 17 or p23 == 18 or p23 == 20 or p23 == 21 or p23 == 23 or p23 == 24
  world.setTree (3,2,true)
end
if p23 == 4 or p23 == 7 or p23 == 10 or p23 == 13 or p23 == 16 or p23 == 19 or p23 == 22
  world.setMushroom (3,2,true)
end

if p24 == 1
  world.setLeaf (4,2,true)
end
if p24 == 2 or p24 == 3 or p24 == 5 or p24 == 6 or p24 == 8 or p24 == 9 or p24 == 11 or p24 == 12 or p24 == 14 or p24 == 15 or p24 == 17 or p24 == 18 or p24 == 20 or p24 == 21 or p24 == 23 or p24 == 24
  world.setTree (4,2,true)
end
if p24 == 4 or p24 == 7 or p24 == 10 or p24 == 13 or p24 == 16 or p24 == 19 or p24 == 22
  world.setMushroom (4,2,true)
end


p1 = p1-1
p2 = p2-1
p3 = p3-1
p4 = p4-1
p5 = p5-1
p6 = p6-1
p7 = p7-1
p8 = p8-1
p9 = p9-1
p10 = p10-1
p11 = p11-1
p12 = p12-1
p13 = p13-1
p14 = p14-1
p15 = p15-1
p16 = p16-1
p17 = p17-1
p18 = p18-1
p19 = p19-1
p20 = p20-1
p21 = p21-1
p22 = p22-1
p23 = p23-1
p24 = p24-1
if p1 == 0
  p1 = 24
end
if p2 == 0
  p2 = 24
end
if p3 == 0
  p3 = 24
end
if p4 == 0
  p4 = 24
end
if p5 == 0
  p5 = 24
end
if p6 == 0
  p6 = 24
end
if p7 == 0
  p7 = 24
end
if p8 == 0
  p8 = 24
end
if p9 == 0
  p9 = 24
end
if p10 == 0
  p10 = 24
end
if p11 == 0
  p11 = 24
end
if p12 == 0
  p12 = 24
end
if p13 == 0
  p13 = 24
end
if p14 == 0
  p14 = 24
end
if p15 == 0
  p15 = 24
end
if p16 == 0
  p16 = 24
end
if p17 == 0
  p17 = 24
end
if p18 == 0
  p18 = 24
end
if p19 == 0
  p19 = 24
end
if p20 == 0
  p20 = 24
end
if p21 == 0
  p21 = 24
end
if p22 == 0
  p22 = 24
end
if p23 == 0
  p23 = 24
end
if p24 == 0
  p24 = 24
end
if l == 1
tools.sleep(200)
end
if l == 2
tools.sleep(400)
end
if l == 3
tools.sleep(600)
end
if l == 4
tools.sleep(800)
end
if l == 5
tools.sleep(1000)
end
l = 0
end
if p1 == 24
  Output(kara,tools,world,app_path,menu,"du bekommst #{geset*20} coins","","")
  coins = coins+geset+geset*2
  newc = File.new(my_path+"coin.txt", "w+")
  newc.puts(coins)
  newc.close
end
if p1 == 1 or p1 == 2 or p1 == 4 or p1 == 5 or p1 == 7 or p1 == 8 or p1 == 10 or p1 == 11 or p1 == 13 or p1 == 14 or p1 == 16 or p1 == 17 or p1 == 19 or p1 == 20 or p1 == 22 or p1 == 23
  Output(kara,tools,world,app_path,menu,"du verlierst #{geset} coins","","")
end
if p1 == 3 or p1 == 6 or p1 == 9 or p1 == 12 or p1 == 15 or p1 == 18 or p1 == 21
  Output(kara,tools,world,app_path,menu,"du bekommst #{geset*2} coins","","")
  coins = coins+geset+geset*2
  newc = File.new(my_path+"coin.txt", "w+")
  newc.puts(coins)
  newc.close
end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end