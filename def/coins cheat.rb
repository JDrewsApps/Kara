def coins_cheat(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
  x = Input(kara,tools,world,app_path,menu,"gieb das passwort ein","i","","","")
  if x == 1248
      y = Input(kara,tools,world,app_path,menu,"gieb die c Zahl ein die du haben wilst","i","","","")
      coins = y
      z = File.new(my_path+"coin.txt", "w+")
      z.puts(coins)
      z.close
  else
    Output(kara,tools,world,app_path,menu,"das ist leider das falsche passwort","","")
  end
  Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end