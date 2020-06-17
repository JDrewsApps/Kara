def heron_verfahren(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]

x1 = Input(kara,tools,world,app_path,menu,"gib eine Zahl ein aus der du die Wurzel ziehen willst","i","","","")
if not (x1 == 1 or x1 == 4 or x1 == 9 or x1 == 16 or x1 == 25 or x1 == 36 or x1 == 49 or x1 == 64 or x1 == 81 or x1 == 100)
k= "wurzel aus:#{x1}~#{x1} = "
z1 = 0
z2 = 0
t1 = (Math.sqrt(x1)).round
k = k+"#{t1.to_f} * "
tg1 = x1/t1.to_f
k = k+"#{tg1.to_f}~(#{t1} + #{tg1.to_f}) : 2~#{x1} = "
t2 = (t1+tg1)/2.to_f
tg2 = x1/t2
k = k+"#{t2.to_f} * #{tg2.to_f}~"
t3 = (t2+tg2)/2.to_f
tg3 = x1/t3
k = k+"(#{t2} + #{tg2.to_f}) : 2~#{x1} = "
k = k+"#{t3.to_f} * #{tg3.to_f}~(#{t3} + #{tg3}) : 2~#{x1} = "
t4 = (t3+tg3)/2.to_f
tg4 = x1/t4
k = k+"#{t4.to_f} * #{tg4.to_f}~(#{t4} + #{tg4}) : 2~Wurzel aus:#{x1} = "
r1 = (t4 * 100000).round/100000.0
r2 = (tg4 * 100000).round/100000.0
r3 = (((r1+r2)/2)*100000).round/100000.0
k = k+"#{r3}"
end
if x1 == 1 or x1 == 4 or x1 == 9 or x1 == 16 or x1 == 25 or x1 == 36 or x1 == 49 or x1 == 64 or x1 == 81 or x1 == 100
k= "wurzel aus: #{x1} = #{Math.sqrt(x1).round}"
end
zeigeBuchstaben(pack,k,false)
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end