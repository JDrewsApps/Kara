def pi(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
k = "pi~"
x = 0
s = 1
n = 6
while x < 12
    n = 6
	x.times do
		n = n*2
	end
	x = x+1
    p = "=sqrt(2-sqrt(4-#{s}**2))"
	s = Math.sqrt(2-Math.sqrt(4-s**2))
	k = k+(s*n).to_s+p+"*#{n}~"
end
k= k+"pi=#{(((s*n)*100000000).round).to_f/100000000}"
zeigeBuchstaben(pack,k,false)
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end