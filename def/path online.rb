def path_online(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
xx = ""
e = 0
y = Input(kara,tools,world,app_path,menu,"Gib eine Inernet Seite oder ip ein","s","","","")
x = `tracert -d -4 "#{y}" `
b = x.split("\n")
e = b.length
for i in 0..(e-1)
c = b[i]
if i >= 3 and not i >= (e-2)
nr = 0
if not i == (e-2)
  if (i-2) <10
    k = "#{i-2}  |"
  else
    k = "#{i-2} "
  end
end
c.each_byte do |z|
  nr = nr+1
  if nr > 32 
    k = k+ "#{(z.chr)}"
  end
end
xx = xx + k +"~"
end
end
zeigeBuchstaben(pack,xx,false)
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end