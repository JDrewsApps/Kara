def kara_rollen(pack)
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
if k == 0   
a = 0
world.clearAll
world.setSize(9,12)
`"#{my_path}"mouse zoomKara`
for i in 0..11
  if not i == 0
    world.setTree(0,i,true)
  end
  if not i == 2
    world.setTree(2,i,true)
  end
  if not i == 4
    world.setTree(4,i,true)
  end
  if not i == 6
    world.setTree(6,i,true)
  end
  world.setTree(8,i,true)
end
world.setMushroom(1,3,true)
world.setMushroom(3,5,true)
world.setMushroom(5,7,true)
world.setMushroom(7,9,true)
world.setLeaf(1,10,true)
world.setLeaf(3,10,true)
world.setLeaf(5,10,true)
world.setLeaf(7,10,true)
kara.setPosition(0,0)
x = tools.random(1)
y = tools.random(1)
z = tools.random(1)
tools.sleep(500)
kara.move
tools.sleep(500)
kara.turnRight
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
if x == 0
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
y = 2
z = 2
elsif x == 1
kara.turnLeft
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.turnRight
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
end
if y == 0
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
z = 2
elsif y == 1
kara.turnLeft
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.turnRight
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
end
if z == 0
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
elsif z == 1
kara.turnLeft
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.turnRight
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
kara.move
tools.sleep(500)
end
x = kara.getPosition.getX.to_i
if x == 1
  a = 0
  Output(kara,tools,world,app_path,menu,"Du verlierst #{geset} coins","","")
elsif x == 3
  a = geset-(geset/2).round
  Output(kara,tools,world,app_path,menu,"Du verlierst #{(geset/2).round} coins","","")
elsif x == 5
  a = geset+(geset/2).round
  Output(kara,tools,world,app_path,menu,"Du bekommst #{(geset/2).round} coins","","")
elsif x == 7
  a = geset+geset
  Output(kara,tools,world,app_path,menu,"Du bekommst #{geset} coins","","")
end
coins = File.open(my_path+"coin.txt").read.to_i
b = File.new(my_path+"coin.txt","w+")
b.puts(coins+a)
end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end