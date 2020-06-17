def heron_verfahren_grafisch(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
x1 = Input(kara,tools,world,app_path,menu,"gieb eine Zahle zwischen 0 und 100 ein aus der du die Wurzel ziehen willst","i","","","")
if x1 <= 100 and x1 >= 0
	z1 = 0
	z2 = 0
	t1 = 10
	tg1 = x1/t1
	t2 = (t1+tg1)/2.to_f
	tg2 = x1/t2
	t3 = (t2+tg2)/2.to_f
	tg3 = x1/t3
	t4 = (t3+tg3)/2.to_f
	tg4 = x1/t4
	t5 = (t4+tg4)/2.to_f
	tg5 = x1/t5
	t6 = (t5+tg5)/2.to_f
	tg6 = x1/t6
	t7 = (t6+tg6)/2.to_f
	tg7 = x1/t7
	t8 = (t7+tg7)/2.to_f
	tg8 = x1/t8
	t9 = (t8+tg8)/2.to_f
	tg9 = x1/t9
	t10 = (t9+tg9)/2.to_f
	tg10 = x1/t10
	diagamm_1_10_10(world,kara,tools,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,my_path)
else
    Output(kara,tools,world,app_path,menu,"Zahl ist nicht zwischen 0 und 100","","")
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end