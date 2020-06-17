def chat(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
v7 = 0
v8 = 1
File.new(global_path + "g.txt", "w+")
v9 = File.new(global_path + "h.txt", "w+")
v9.puts("du kannst jetzt chaten")
v9.rewind
k = 0
while k == 0
v3 = File.size(global_path + "h.txt")
v6 = File.size(global_path + "g.txt")
if v3 == 0
  if v6 == 0 and v8 == 0
    v1 = Input(kara,tools,world,app_path,menu,"gib die nachricht an den anderen computer ein drücke -ende um zu beenden","s","","","")
    if v1 == "-ende"
      k = 1
    end
    v2 = File.new(global_path + "g.txt", "w+")
    v2.puts(v1)
    v2.rewind
    v2.close
    v7 = 0
    v8 = 1
  end
else
  if v7 == 0
    v4 = File.open(global_path + "h.txt")
    v5 = v4.readline
    Output(kara,tools,world,app_path,menu,v5.chomp,"","")
    v5 = File.new(global_path + "h.txt", "w+")
    v7 = 1
    v8 = 0
  end
end
tools.sleep(50)
tools.checkState
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end