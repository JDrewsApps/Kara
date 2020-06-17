def ip_online(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
Output(kara,tools,world,app_path,menu,"diser Vorgang kann bis zu 5 Minuten dauern","","")
xx = ""
k = 1
ip2 = ip.split(".")
ip3 = ip2[0]+"."+ip2[1]+"."+ip2[2]+"."
for j in 0..255
b = 0

p = (j*0.392156862745098).round
if p > ((k*5)-1)
	xxx = "#{p.to_s}%"
	zeigeBuchstaben(pack,xxx,false)
    k = k+1
end
t = ip3+ j.to_s
value = `ping "#{t}" -n 1 -w 100`
value2 = value.split("\n")
value2[6].each_byte do |r|
rr = r.chr
if rr == "1"
b = 1
end
end
tools.checkState
if not b == 1
xx = xx + "Das Geraet mit der ip #{t.to_s} ist online~"
end
end
Output(kara,tools,world,app_path,menu,"Alle Geräte die in der Zeit einmal in diesem sub netz online waren, werden jetzt angezeigt","","")
zeigeBuchstaben(pack,xx,false)
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end