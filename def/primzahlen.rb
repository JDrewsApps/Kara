def primzahlen(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
x = Input(kara,tools,world,app_path,menu,"gieb eine Zahl ein um zu schauen ob sie eine Primzahl ist","i","","","")
p = 0
for i in 1..x
  if (x%i) == 0
    if not (i == 1 or i == x)
    p = 1 
    end
  end
end
if not p == 1
  if not x == 1
    zeigeBuchstaben(pack,"#{x} ist eine Primzahl",false)
  else
    zeigeBuchstaben(pack,"#{x} ist keine Primzahl",false)
  end
else
  zeigeBuchstaben(pack,"#{x} ist keine Primzahl",false)
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end