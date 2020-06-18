def karas_weg(pack)
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
world.setSize(9,9)
`"#{my_path}"mouse zoomKara`
if not File.file?(global_path+"karas_weg.txt")
    File.new(global_path+"karas_weg.txt", "w+")
end
while k == 0
8.times do
world.clearAll
size = File.size(global_path + "karas_weg.txt")
if not size == 0
	h = File.open(global_path + "karas_weg.txt")
	a = h.readline
	x = a.length/2
	y = 0
	z = 1
	x.times do
	    b = a[y]
	    c = a[z]
	    world.setLeaf(b.chr.to_i,c.chr.to_i,true)
	    tools.checkState
	    y = y + 2
	    z = z + 2
	  end 
end
tools.sleep(2000)
tools.checkState
end
z = Input(kara,tools,world,app_path,menu,"Willst du beenden?","s","ja/nein","","")
if z == "ja"
k = 1
end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end