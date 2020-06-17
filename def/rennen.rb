def rennen(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
ar1 = -13
ar2 = -12
ar3 = -11
ar4 = -10
ar5 = -9
ar6 = -8
ar7 = -7
ar8 = -6
ar9 = -5
ar10 = -4
ar11 = -3
ar12 = -2
ar13 = -1
ar14 = 0

br1 = -13
br2 = -12
br3 = -11
br4 = -10
br5 = -9
br6 = -8
br7 = -7
br8 = -6
br9 = -5
br10 = -4
br11 = -3
br12 = -2
br13 = -1
br14 = 0

cr1 = -13
cr2 = -12
cr3 = -11
cr4 = -10
cr5 = -9
cr6 = -8
cr7 = -7
cr8 = -6
cr9 = -5
cr10 = -4
cr11 = -3
cr12 = -2
cr13 = -1
cr14 = 0

dr1 = -13
dr2 = -12
dr3 = -11
dr4 = -10
dr5 = -9
dr6 = -8
dr7 = -7
dr8 = -6
dr9 = -5
dr10 = -4
dr11 = -3
dr12 = -2
dr13 = -1
dr14 = 0

er1 = -13
er2 = -12
er3 = -11
er4 = -10
er5 = -9
er6 = -8
er7 = -7
er8 = -6
er9 = -5
er10 = -4
er11 = -3
er12 = -2
er13 = -1
er14 = 0
k = 0
world.clearAll
coins = File.open(my_path+"coin.txt").read.to_i
if coins < 0 or coins == 0
  Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
  k = 1
end
if k == 0
i = Input(kara,tools,world,app_path,menu,"größe wählen","s","sehr klein/klein/mittel/groß/sehr groß","","")
set = Input(kara,tools,world,app_path,menu,"setze auf einen kara","i","1/2/3/4/5","","")
geset = Input(kara,tools,world,app_path,menu,"wie viele coins willst du setzen","i","","","")
if geset < 0
  k = 1
  Output(kara,tools,world,app_path,menu,"es sind nur positive coin Werte erlaubt","","")
end
pc=geset*5
if k == 0
  coins = coins - geset
end
if coins < 0
  Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
  coins = coins+geset
  k = 1
end
newc = File.new(my_path+"coin.txt", "w+")
newc.puts(coins.to_s)
newc.close
if k == 0
if i =="sehr klein"
  g = 20
end
if i =="klein"
  g = 40
end
if i =="mittel"
  g = 60
end
if i =="groß"
  g = 80
end
if i =="sehr groß"
  g = 100
end

world.setSize (g,69)
`"#{my_path}"mouse zoomKara`
ag = ""
bg = ""
cg = ""
dg = ""
eg = ""
spiel = 0
while spiel == 0

  u = tools.random (2)
  l = tools.random (4)
	world.clearAll
    x = world.getSizeX()
    for i in 0..x-1
    world.setMushroom (i,13,true)
    world.setMushroom (i,27,true)
    world.setMushroom (i,41,true)
    world.setMushroom (i,55,true)
    end
	if ar14 > -1
	world.setLeaf (ar14,3,true)  
	world.setLeaf (ar14,9,true)
	end
	if ar13 > -1
	world.setLeaf (ar13,4,true)  
	world.setLeaf (ar13,8,true)  
	end
	if ar12 > -1
	world.setLeaf (ar12,4,true)  
	world.setLeaf (ar12,8,true)  
	end
	if ar11 > -1
	world.setLeaf (ar11,4,true)
	world.setLeaf (ar11,5,true) 
	world.setLeaf (ar11,6,true) 
	world.setLeaf (ar11,7,true)   
	world.setLeaf (ar11,8,true)  
	end
	if ar10 > -1
	world.setLeaf (ar10,3,true)
	world.setLeaf (ar10,4,true)
	world.setLeaf (ar10,5,true) 
	world.setLeaf (ar10,6,true) 
	world.setLeaf (ar10,7,true)   
	world.setLeaf (ar10,8,true) 
	world.setLeaf (ar10,9,true) 
	end
	if ar9 > -1
	world.setLeaf (ar9,0,true)
	world.setLeaf (ar9,2,true)
	world.setLeaf (ar9,3,true)
	world.setLeaf (ar9,4,true)
	world.setLeaf (ar9,5,true) 
	world.setLeaf (ar9,6,true) 
	world.setLeaf (ar9,7,true)   
	world.setLeaf (ar9,8,true) 
	world.setLeaf (ar9,9,true)
	world.setLeaf (ar9,10,true)
	world.setLeaf (ar9,12,true) 
	end
	if ar8 > -1
	world.setLeaf (ar8,1,true)
	world.setLeaf (ar8,2,true)
	world.setLeaf (ar8,3,true)
	world.setLeaf (ar8,4,true)
	world.setLeaf (ar8,5,true) 
	world.setLeaf (ar8,6,true) 
	world.setLeaf (ar8,7,true)   
	world.setLeaf (ar8,8,true) 
	world.setLeaf (ar8,9,true)
	world.setLeaf (ar8,10,true)
	world.setLeaf (ar8,11,true) 
	end
	if ar7 > -1
	world.setLeaf (ar7,1,true)
	world.setLeaf (ar7,2,true)
	world.setLeaf (ar7,3,true)
	world.setTree (ar7,4,true)
	world.setTree (ar7,5,true) 
	world.setTree (ar7,6,true) 
	world.setTree (ar7,7,true)   
	world.setTree (ar7,8,true) 
	world.setLeaf (ar7,9,true)
	world.setLeaf (ar7,10,true)
	world.setLeaf (ar7,11,true) 
	end
	if ar6 > -1
	world.setLeaf (ar6,0,true)
	world.setLeaf (ar6,1,true)
	world.setLeaf (ar6,2,true)
	world.setLeaf (ar6,3,true)
	world.setLeaf (ar6,4,true)
	world.setTree (ar6,5,true) 
	world.setLeaf (ar6,6,true) 
	world.setLeaf (ar6,7,true)   
	world.setLeaf (ar6,8,true) 
	world.setLeaf (ar6,9,true)
	world.setLeaf (ar6,10,true)
	world.setLeaf (ar6,11,true)
	world.setLeaf (ar6,12,true) 
	end
	if ar5 > -1
	world.setLeaf (ar5,1,true)
	world.setLeaf (ar5,2,true)
	world.setLeaf (ar5,3,true)
	world.setLeaf (ar5,4,true)
	world.setLeaf (ar5,5,true) 
	world.setTree (ar5,6,true) 
	world.setLeaf (ar5,7,true)   
	world.setLeaf (ar5,8,true) 
	world.setLeaf (ar5,9,true)
	world.setLeaf (ar5,10,true)
	world.setLeaf (ar5,11,true) 
	end
	if ar4 > -1
	world.setLeaf (ar4,1,true)
	world.setLeaf (ar4,2,true)
	world.setLeaf (ar4,3,true)
	world.setLeaf (ar4,4,true)
	world.setLeaf (ar4,5,true) 
	world.setLeaf (ar4,6,true) 
	world.setLeaf (ar4,7,true)   
	world.setLeaf (ar4,8,true) 
	world.setLeaf (ar4,9,true)
	world.setLeaf (ar4,10,true)
	world.setLeaf (ar4,11,true) 
	end
	if ar3 > -1
	world.setLeaf (ar3,0,true)
	world.setLeaf (ar3,2,true)
	world.setLeaf (ar3,3,true)
	world.setLeaf (ar3,4,true)
	world.setLeaf (ar3,5,true) 
	world.setLeaf (ar3,6,true) 
	world.setLeaf (ar3,7,true)   
	world.setLeaf (ar3,8,true) 
	world.setLeaf (ar3,9,true)
	world.setLeaf (ar3,10,true)
	world.setLeaf (ar3,12,true) 
	end
	if ar2 > -1
	world.setLeaf (ar2,3,true)
	world.setLeaf (ar2,4,true)
	world.setLeaf (ar2,5,true) 
	world.setLeaf (ar2,6,true) 
	world.setLeaf (ar2,7,true)   
	world.setLeaf (ar2,8,true) 
	world.setLeaf (ar2,9,true) 
	end
	if ar1 > -1
	world.setLeaf (ar1,4,true)
	world.setLeaf (ar1,5,true) 
	world.setLeaf (ar1,6,true) 
	world.setLeaf (ar1,7,true)   
	world.setLeaf (ar1,8,true)  
	end
	
	if br14 > -1
	world.setLeaf (br14,17,true)  
	world.setLeaf (br14,23,true)
	end
	if br13 > -1
	world.setLeaf (br13,18,true)  
	world.setLeaf (br13,22,true)  
	end
	if br12 > -1
	world.setLeaf (br12,18,true)  
	world.setLeaf (br12,22,true)  
	end
	if br11 > -1
	world.setLeaf (br11,18,true)
	world.setLeaf (br11,19,true) 
	world.setLeaf (br11,20,true) 
	world.setLeaf (br11,21,true)   
	world.setLeaf (br11,22,true)  
	end
	if br10 > -1
	world.setLeaf (br10,17,true)
	world.setLeaf (br10,18,true)
	world.setLeaf (br10,19,true) 
	world.setLeaf (br10,20,true) 
	world.setLeaf (br10,21,true)   
	world.setLeaf (br10,22,true) 
	world.setLeaf (br10,23,true) 
	end
	if br9 > -1
	world.setLeaf (br9,14,true)
	world.setLeaf (br9,16,true)
	world.setLeaf (br9,17,true)
	world.setLeaf (br9,18,true)
	world.setLeaf (br9,19,true) 
	world.setLeaf (br9,20,true) 
	world.setLeaf (br9,21,true)   
	world.setLeaf (br9,22,true) 
	world.setLeaf (br9,23,true)
	world.setLeaf (br9,24,true)
	world.setLeaf (br9,26,true) 
	end
	if br8 > -1
	world.setLeaf (br8,15,true)
	world.setLeaf (br8,16,true)
	world.setLeaf (br8,17,true)
	world.setLeaf (br8,18,true)
	world.setLeaf (br8,19,true) 
	world.setLeaf (br8,20,true) 
	world.setLeaf (br8,21,true)   
	world.setLeaf (br8,22,true) 
	world.setLeaf (br8,23,true)
	world.setLeaf (br8,24,true)
	world.setLeaf (br8,25,true) 
	end
	if br7 > -1
	world.setLeaf (br7,15,true)
	world.setLeaf (br7,16,true)
	world.setLeaf (br7,17,true)
	world.setTree (br7,18,true)
	world.setTree (br7,19,true) 
	world.setTree (br7,20,true) 
	world.setLeaf (br7,21,true)   
	world.setTree (br7,22,true) 
	world.setLeaf (br7,23,true)
	world.setLeaf (br7,24,true)
	world.setLeaf (br7,25,true) 
	end
	if br6 > -1
	world.setLeaf (br6,14,true)
	world.setLeaf (br6,15,true)
	world.setLeaf (br6,16,true)
	world.setLeaf (br6,17,true)
	world.setTree (br6,18,true)
	world.setLeaf (br6,19,true) 
	world.setTree (br6,20,true) 
	world.setLeaf (br6,21,true)   
	world.setTree (br6,22,true) 
	world.setLeaf (br6,23,true)
	world.setLeaf (br6,24,true)
	world.setLeaf (br6,25,true)
	world.setLeaf (br6,26,true) 
	end
	if br5 > -1
	world.setLeaf (br5,15,true)
	world.setLeaf (br5,16,true)
	world.setLeaf (br5,17,true)
	world.setTree (br5,18,true)
	world.setLeaf (br5,19,true) 
	world.setTree (br5,20,true) 
	world.setTree (br5,21,true)   
	world.setTree (br5,22,true) 
	world.setLeaf (br5,23,true)
	world.setLeaf (br5,24,true)
	world.setLeaf (br5,25,true) 
	end
	if br4 > -1
	world.setLeaf (br4,15,true)
	world.setLeaf (br4,16,true)
	world.setLeaf (br4,17,true)
	world.setLeaf (br4,18,true)
	world.setLeaf (br4,19,true) 
	world.setLeaf (br4,20,true) 
	world.setLeaf (br4,21,true)   
	world.setLeaf (br4,22,true) 
	world.setLeaf (br4,23,true)
	world.setLeaf (br4,24,true)
	world.setLeaf (br4,25,true) 
	end
	if br3 > -1
	world.setLeaf (br3,14,true)
	world.setLeaf (br3,16,true)
	world.setLeaf (br3,17,true)
	world.setLeaf (br3,18,true)
	world.setLeaf (br3,19,true) 
	world.setLeaf (br3,20,true) 
	world.setLeaf (br3,21,true)   
	world.setLeaf (br3,22,true) 
	world.setLeaf (br3,23,true)
	world.setLeaf (br3,24,true)
	world.setLeaf (br3,26,true) 
	end
	if br2 > -1
	world.setLeaf (br2,17,true)
	world.setLeaf (br2,18,true)
	world.setLeaf (br2,19,true) 
	world.setLeaf (br2,20,true) 
	world.setLeaf (br2,21,true)   
	world.setLeaf (br2,22,true) 
	world.setLeaf (br2,23,true) 
	end
	if br1 > -1
	world.setLeaf (br1,18,true)
	world.setLeaf (br1,19,true) 
	world.setLeaf (br1,20,true) 
	world.setLeaf (br1,21,true)   
	world.setLeaf (br1,22,true)  
	end
	if cr14 > -1
	world.setLeaf (cr14,31,true)  
	world.setLeaf (cr14,37,true)
	end
	if cr13 > -1
	world.setLeaf (cr13,32,true)  
	world.setLeaf (cr13,36,true)  
	end
	if cr12 > -1
	world.setLeaf (cr12,32,true)  
	world.setLeaf (cr12,36,true)  
	end
	if cr11 > -1
	world.setLeaf (cr11,32,true)
	world.setLeaf (cr11,33,true) 
	world.setLeaf (cr11,34,true) 
	world.setLeaf (cr11,35,true)   
	world.setLeaf (cr11,36,true)  
	end
	if cr10 > -1
	world.setLeaf (cr10,31,true)
	world.setLeaf (cr10,32,true)
	world.setLeaf (cr10,33,true) 
	world.setLeaf (cr10,34,true) 
	world.setLeaf (cr10,35,true)   
	world.setLeaf (cr10,36,true) 
	world.setLeaf (cr10,37,true) 
	end
	if cr9 > -1
	world.setLeaf (cr9,28,true)
	world.setLeaf (cr9,30,true)
	world.setLeaf (cr9,31,true)
	world.setLeaf (cr9,32,true)
	world.setLeaf (cr9,33,true) 
	world.setLeaf (cr9,34,true) 
	world.setLeaf (cr9,35,true)   
	world.setLeaf (cr9,36,true) 
	world.setLeaf (cr9,37,true)
	world.setLeaf (cr9,38,true)
	world.setLeaf (cr9,40,true) 
	end
	if cr8 > -1
	world.setLeaf (cr8,29,true)
	world.setLeaf (cr8,30,true)
	world.setLeaf (cr8,31,true)
	world.setLeaf (cr8,32,true)
	world.setLeaf (cr8,33,true) 
	world.setLeaf (cr8,34,true) 
	world.setLeaf (cr8,35,true)   
	world.setLeaf (cr8,36,true) 
	world.setLeaf (cr8,37,true)
	world.setLeaf (cr8,38,true)
	world.setLeaf (cr8,39,true) 
	end
	if cr7 > -1
	world.setLeaf (cr7,29,true)
	world.setLeaf (cr7,30,true)
	world.setLeaf (cr7,31,true)
	world.setTree (cr7,32,true)
	world.setTree (cr7,33,true) 
	world.setTree (cr7,34,true) 
	world.setTree (cr7,35,true)   
	world.setTree (cr7,36,true) 
	world.setLeaf (cr7,37,true)
	world.setLeaf (cr7,38,true)
	world.setLeaf (cr7,39,true) 
	end
	if cr6 > -1
	world.setLeaf (cr6,28,true)
	world.setLeaf (cr6,29,true)
	world.setLeaf (cr6,30,true)
	world.setLeaf (cr6,31,true)
	world.setTree (cr6,32,true)
	world.setLeaf (cr6,33,true) 
	world.setTree (cr6,34,true) 
	world.setLeaf (cr6,35,true)   
	world.setTree (cr6,36,true) 
	world.setLeaf (cr6,37,true)
	world.setLeaf (cr6,38,true)
	world.setLeaf (cr6,39,true)
	world.setLeaf (cr6,40,true) 
	end
	if cr5 > -1
	world.setLeaf (cr5,29,true)
	world.setLeaf (cr5,30,true)
	world.setLeaf (cr5,31,true)
	world.setTree (cr5,32,true)
	world.setLeaf (cr5,33,true) 
	world.setTree (cr5,34,true) 
	world.setLeaf (cr5,35,true)   
	world.setTree (cr5,36,true) 
	world.setLeaf (cr5,37,true)
	world.setLeaf (cr5,38,true)
	world.setLeaf (cr5,39,true) 
	end
	if cr4 > -1
	world.setLeaf (cr4,29,true)
	world.setLeaf (cr4,30,true)
	world.setLeaf (cr4,31,true)
	world.setLeaf (cr4,32,true)
	world.setLeaf (cr4,33,true) 
	world.setLeaf (cr4,34,true) 
	world.setLeaf (cr4,35,true)   
	world.setLeaf (cr4,36,true) 
	world.setLeaf (cr4,37,true)
	world.setLeaf (cr4,38,true)
	world.setLeaf (cr4,39,true) 
	end
	if cr3 > -1
	world.setLeaf (cr3,28,true)
	world.setLeaf (cr3,30,true)
	world.setLeaf (cr3,31,true)
	world.setLeaf (cr3,32,true)
	world.setLeaf (cr3,33,true) 
	world.setLeaf (cr3,34,true) 
	world.setLeaf (cr3,35,true)   
	world.setLeaf (cr3,36,true) 
	world.setLeaf (cr3,37,true)
	world.setLeaf (cr3,38,true)
	world.setLeaf (cr3,40,true) 
	end
	if cr2 > -1
	world.setLeaf (cr2,31,true)
	world.setLeaf (cr2,32,true)
	world.setLeaf (cr2,33,true) 
	world.setLeaf (cr2,34,true) 
	world.setLeaf (cr2,35,true)   
	world.setLeaf (cr2,36,true) 
	world.setLeaf (cr2,37,true) 
	end
	if cr1 > -1
	world.setLeaf (cr1,32,true)
	world.setLeaf (cr1,33,true) 
	world.setLeaf (cr1,34,true) 
	world.setLeaf (cr1,35,true)   
	world.setLeaf (cr1,36,true)  
	end
    if dr14 > -1
	world.setLeaf (dr14,45,true)  
	world.setLeaf (dr14,51,true)
	end
	if dr13 > -1
	world.setLeaf (dr13,46,true)  
	world.setLeaf (dr13,50,true)  
	end
	if dr12 > -1
	world.setLeaf (dr12,46,true)  
	world.setLeaf (dr12,50,true)  
	end
	if dr11 > -1
	world.setLeaf (dr11,46,true)
	world.setLeaf (dr11,47,true) 
	world.setLeaf (dr11,48,true) 
	world.setLeaf (dr11,49,true)   
	world.setLeaf (dr11,50,true)  
	end
	if dr10 > -1
	world.setLeaf (dr10,45,true)
	world.setLeaf (dr10,46,true)
	world.setLeaf (dr10,47,true) 
	world.setLeaf (dr10,48,true) 
	world.setLeaf (dr10,49,true)   
	world.setLeaf (dr10,50,true) 
	world.setLeaf (dr10,51,true) 
	end
	if dr9 > -1
	world.setLeaf (dr9,42,true)
	world.setLeaf (dr9,44,true)
	world.setLeaf (dr9,45,true)
	world.setLeaf (dr9,46,true)
	world.setLeaf (dr9,47,true) 
	world.setLeaf (dr9,48,true) 
	world.setLeaf (dr9,49,true)   
	world.setLeaf (dr9,50,true) 
	world.setLeaf (dr9,51,true)
	world.setLeaf (dr9,52,true)
	world.setLeaf (dr9,54,true) 
	end
	if dr8 > -1
	world.setLeaf (dr8,43,true)
	world.setLeaf (dr8,44,true)
	world.setLeaf (dr8,45,true)
	world.setLeaf (dr8,46,true)
	world.setLeaf (dr8,47,true) 
	world.setLeaf (dr8,48,true) 
	world.setLeaf (dr8,49,true)   
	world.setLeaf (dr8,50,true) 
	world.setLeaf (dr8,51,true)
	world.setLeaf (dr8,52,true)
	world.setLeaf (dr8,53,true) 
	end
	if dr7 > -1
	world.setLeaf (dr7,43,true)
	world.setLeaf (dr7,44,true)
	world.setLeaf (dr7,45,true)
	world.setLeaf (dr7,46,true)
	world.setTree (dr7,47,true) 
	world.setTree (dr7,48,true) 
	world.setTree (dr7,49,true)   
	world.setTree (dr7,50,true) 
	world.setLeaf (dr7,51,true)
	world.setLeaf (dr7,52,true)
	world.setLeaf (dr7,53,true) 
	end
	if dr6 > -1
	world.setLeaf (dr6,42,true)
	world.setLeaf (dr6,43,true)
	world.setLeaf (dr6,44,true)
	world.setLeaf (dr6,45,true)
	world.setLeaf (dr6,46,true)
	world.setLeaf (dr6,47,true) 
	world.setTree (dr6,48,true) 
	world.setLeaf (dr6,49,true)   
	world.setLeaf (dr6,50,true) 
	world.setLeaf (dr6,51,true)
	world.setLeaf (dr6,52,true)
	world.setLeaf (dr6,53,true)
	world.setLeaf (dr6,54,true) 
	end
	if dr5 > -1
	world.setLeaf (dr5,43,true)
	world.setLeaf (dr5,44,true)
	world.setLeaf (dr5,45,true)
	world.setTree (dr5,46,true)
	world.setTree (dr5,47,true) 
	world.setTree (dr5,48,true) 
	world.setLeaf (dr5,49,true)   
	world.setLeaf (dr5,50,true) 
	world.setLeaf (dr5,51,true)
	world.setLeaf (dr5,52,true)
	world.setLeaf (dr5,53,true) 
	end
	if dr4 > -1
	world.setLeaf (dr4,43,true)
	world.setLeaf (dr4,44,true)
	world.setLeaf (dr4,45,true)
	world.setLeaf (dr4,46,true)
	world.setLeaf (dr4,47,true) 
	world.setLeaf (dr4,48,true) 
	world.setLeaf (dr4,49,true)   
	world.setLeaf (dr4,50,true) 
	world.setLeaf (dr4,51,true)
	world.setLeaf (dr4,52,true)
	world.setLeaf (dr4,53,true) 
	end
	if dr3 > -1
	world.setLeaf (dr3,42,true)
	world.setLeaf (dr3,44,true)
	world.setLeaf (dr3,45,true)
	world.setLeaf (dr3,46,true)
	world.setLeaf (dr3,47,true) 
	world.setLeaf (dr3,48,true) 
	world.setLeaf (dr3,49,true)   
	world.setLeaf (dr3,50,true) 
	world.setLeaf (dr3,51,true)
	world.setLeaf (dr3,52,true)
	world.setLeaf (dr3,54,true) 
	end
	if dr2 > -1
	world.setLeaf (dr2,45,true)
	world.setLeaf (dr2,46,true)
	world.setLeaf (dr2,47,true) 
	world.setLeaf (dr2,48,true) 
	world.setLeaf (dr2,49,true)   
	world.setLeaf (dr2,50,true) 
	world.setLeaf (dr2,51,true) 
	end
	if dr1 > -1
	world.setLeaf (dr1,46,true)
	world.setLeaf (dr1,47,true) 
	world.setLeaf (dr1,48,true) 
	world.setLeaf (dr1,49,true)   
	world.setLeaf (dr1,50,true)  
	end
    if er14 > -1
	world.setLeaf (er14,59,true)  
	world.setLeaf (er14,65,true)
	end
	if er13 > -1
	world.setLeaf (er13,60,true)  
	world.setLeaf (er13,64,true)  
	end
	if er12 > -1
	world.setLeaf (er12,60,true)  
	world.setLeaf (er12,64,true)  
	end
	if er11 > -1
	world.setLeaf (er11,60,true)
	world.setLeaf (er11,61,true) 
	world.setLeaf (er11,62,true) 
	world.setLeaf (er11,63,true)   
	world.setLeaf (er11,64,true)  
	end
	if er10 > -1
	world.setLeaf (er10,59,true)
	world.setLeaf (er10,60,true)
	world.setLeaf (er10,61,true) 
	world.setLeaf (er10,62,true) 
	world.setLeaf (er10,63,true)   
	world.setLeaf (er10,64,true) 
	world.setLeaf (er10,65,true) 
	end
	if er9 > -1
	world.setLeaf (er9,56,true)
	world.setLeaf (er9,58,true)
	world.setLeaf (er9,59,true)
	world.setLeaf (er9,60,true)
	world.setLeaf (er9,61,true) 
	world.setLeaf (er9,62,true) 
	world.setLeaf (er9,63,true)   
	world.setLeaf (er9,64,true) 
	world.setLeaf (er9,65,true)
	world.setLeaf (er9,66,true)
	world.setLeaf (er9,68,true) 
	end
	if er8 > -1
	world.setLeaf (er8,57,true)
	world.setLeaf (er8,58,true)
	world.setLeaf (er8,59,true)
	world.setLeaf (er8,60,true)
	world.setLeaf (er8,61,true) 
	world.setLeaf (er8,62,true) 
	world.setLeaf (er8,63,true)   
	world.setLeaf (er8,64,true) 
	world.setLeaf (er8,65,true)
	world.setLeaf (er8,66,true)
	world.setLeaf (er8,67,true) 
	end
	if er7 > -1
	world.setLeaf (er7,57,true)
	world.setLeaf (er7,58,true)
	world.setLeaf (er7,59,true)
	world.setTree (er7,60,true)
	world.setLeaf (er7,61,true) 
	world.setTree (er7,62,true) 
	world.setTree (er7,63,true)   
	world.setTree (er7,64,true) 
	world.setLeaf (er7,65,true)
	world.setLeaf (er7,66,true)
	world.setLeaf (er7,67,true) 
	end
	if er6 > -1
	world.setLeaf (er6,56,true)
	world.setLeaf (er6,57,true)
	world.setLeaf (er6,58,true)
	world.setLeaf (er6,59,true)
	world.setTree (er6,60,true)
	world.setLeaf (er6,61,true) 
	world.setTree (er6,62,true) 
	world.setLeaf (er6,63,true)   
	world.setTree (er6,64,true) 
	world.setLeaf (er6,65,true)
	world.setLeaf (er6,66,true)
	world.setLeaf (er6,67,true)
	world.setLeaf (er6,68,true) 
	end
	if er5 > -1
	world.setLeaf (er5,57,true)
	world.setLeaf (er5,58,true)
	world.setLeaf (er5,59,true)
	world.setTree (er5,60,true)
	world.setTree (er5,61,true) 
	world.setTree (er5,62,true) 
	world.setLeaf (er5,63,true)   
	world.setTree (er5,64,true) 
	world.setLeaf (er5,65,true)
	world.setLeaf (er5,66,true)
	world.setLeaf (er5,67,true) 
	end
	if er4 > -1
	world.setLeaf (er4,57,true)
	world.setLeaf (er4,58,true)
	world.setLeaf (er4,59,true)
	world.setLeaf (er4,60,true)
	world.setLeaf (er4,61,true) 
	world.setLeaf (er4,62,true) 
	world.setLeaf (er4,63,true)   
	world.setLeaf (er4,64,true) 
	world.setLeaf (er4,65,true)
	world.setLeaf (er4,66,true)
	world.setLeaf (er4,67,true) 
	end
	if er3 > -1
	world.setLeaf (er3,56,true)
	world.setLeaf (er3,58,true)
	world.setLeaf (er3,59,true)
	world.setLeaf (er3,60,true)
	world.setLeaf (er3,61,true) 
	world.setLeaf (er3,62,true) 
	world.setLeaf (er3,63,true)   
	world.setLeaf (er3,64,true) 
	world.setLeaf (er3,65,true)
	world.setLeaf (er3,66,true)
	world.setLeaf (er3,68,true) 
	end
	if er2 > -1
	world.setLeaf (er2,59,true)
	world.setLeaf (er2,60,true)
	world.setLeaf (er2,61,true) 
	world.setLeaf (er2,62,true) 
	world.setLeaf (er2,63,true)   
	world.setLeaf (er2,64,true) 
	world.setLeaf (er2,65,true) 
	end
	if er1 > -1
	world.setLeaf (er1,60,true)
	world.setLeaf (er1,61,true) 
	world.setLeaf (er1,62,true) 
	world.setLeaf (er1,63,true)   
	world.setLeaf (er1,64,true)  
	end

	if l==0 or u == 2    
	ar1 = ar1+1
	ar2 = ar2+1
	ar3 = ar3+1
	ar4 = ar4+1
	ar5 = ar5+1
	ar6 = ar6+1
	ar7 = ar7+1
	ar8 = ar8+1
	ar9 = ar9+1
	ar10 = ar10+1
	ar11 = ar11+1
	ar12 = ar12+1
	ar13 = ar13+1
	ar14 = ar14+1
	end
	if l==1 or u == 2 
	br1 = br1+1
	br2 = br2+1
	br3 = br3+1
	br4 = br4+1
	br5 = br5+1
	br6 = br6+1
	br7 = br7+1
	br8 = br8+1
	br9 = br9+1
	br10 = br10+1
	br11 = br11+1
	br12 = br12+1
	br13 = br13+1
	br14 = br14+1
	end
	if l==2 or u == 2 
	cr1 = cr1+1
	cr2 = cr2+1
	cr3 = cr3+1
	cr4 = cr4+1
	cr5 = cr5+1
	cr6 = cr6+1
	cr7 = cr7+1
	cr8 = cr8+1
	cr9 = cr9+1
	cr10 = cr10+1
	cr11 = cr11+1
	cr12 = cr12+1
	cr13 = cr13+1
	cr14 = cr14+1
	end
    if l==3 or u == 2 
	dr1 = dr1+1
	dr2 = dr2+1
	dr3 = dr3+1
	dr4 = dr4+1
	dr5 = dr5+1
	dr6 = dr6+1
	dr7 = dr7+1
	dr8 = dr8+1
	dr9 = dr9+1
	dr10 = dr10+1
	dr11 = dr11+1
	dr12 = dr12+1
	dr13 = dr13+1
	dr14 = dr14+1
	end
    if l==4 or u == 2 
	er1 = er1+1
	er2 = er2+1
	er3 = er3+1
	er4 = er4+1
	er5 = er5+1
	er6 = er6+1
	er7 = er7+1
	er8 = er8+1
	er9 = er9+1
	er10 = er10+1
	er11 = er11+1
	er12 = er12+1
	er13 = er13+1
	er14 = er14+1
	end
	tools.sleep(400)
  gew = 0
  if g == er14
    eg = "Kara 5,"
    if set == 5
      gew = 1
    end
  end
  if g == dr14
    dg = "Kara 4,"
    if set == 4
      gew = 1
    end
  end
  if g == cr14
    cg = "Kara 3,"
    if set == 3
      gew = 1
    end
  end
  if g == br14
    bg = "Kara 2,"
    if set == 2
      gew = 1
    end
  end
  if g == ar14
    ag = "Kara 1,"
    if set == 1
      gew = 1
    end
  end
  if g == er14 or g == dr14 or g == cr14 or g == br14 or g == ar14
	  if gew == 1
	      Output(kara,tools,world,app_path,menu,"du bekommst #{pc.to_s} coins","","")
	      coins = coins + geset*5+geset
	      newc = File.new(my_path+"coin.txt", "w+")
	      newc.puts(coins.to_s)
	      newc.close
	    else
	      Output(kara,tools,world,app_path,menu,"du verlierst #{geset} coins","","")
	    end
    end
  if g == ar14 or g == br14 or g == cr14 or g == dr14 or g == er14
    Output(kara,tools,world,app_path,menu,"Gewonnen hat #{ag}#{bg}#{cg}#{dg}#{eg}".chomp(",") ,"","")
    spiel = 1
  end
end
end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end