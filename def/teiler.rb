def teiler(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
x = Input(kara,tools,world,app_path,menu,"gieb eine Zahl ein von der du alle Teiler wissen willst","i","","","")
k = ""
for i in 1..x
  if (x%i) == 0
  k = k+"#{i}~"
  end
end
zeigeBuchstaben(pack,k,false)
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end