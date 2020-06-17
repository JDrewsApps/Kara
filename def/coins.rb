def coins(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
  coins = File.open(my_path+"coin.txt").read.to_i
  x= "du hast:~"+coins.to_s+"c"
  zeigeBuchstaben(pack,x,false)
  Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end