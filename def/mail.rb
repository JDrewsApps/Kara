def mail(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
kk = 0
while kk == 0
if not menu == "app"
xx = "   Mail~^ lesen~^ schreiben~^ löschen~^ ende~"
zeigeBuchstaben(pack,xx,true)
x = ""
while x == ""
  for hx in 2..4
    for hy in 10..12
      if world.isMushroom(hx,hy)
        x = "open"
      end
    end
  end
  for hx in 2..4
    for hy in 17..19
      if world.isMushroom(hx,hy)
        x = "write"
      end
    end
  end
  for hx in 2..4
    for hy in 24..26
      if world.isMushroom(hx,hy)
        x = "löschen"
      end
    end
  end
  for hx in 2..4
    for hy in 31..33
      if world.isMushroom(hx,hy)
        x = "ende"
      end
    end
  end
end
else
x = Input(kara,tools,world,app_path,menu,"","s","write/open/löschen/ende","","")
end
i = 0
world.clearAll
world.setSize(1,1)
case x
  when "write"
  e = 0
  k = ""
  
  namee = Input(kara,tools,world,app_path,menu,"name des Empfengers","s","","","")
  nachricht = Input(kara,tools,world,app_path,menu,"gib die nachricht an den Empfenger ein","s","","","")
  f = File.open(global_path+namee+"mail.txt")
  f.each do |line|
    e = e + 1
  end
  f.close
  f = File.open(global_path+namee+"mail.txt")
  for j in 1..e
    g = f.readline
    k = k+g+""
  end
  k = k+"("+Time.now.strftime("%A")+","+Time.now.day.to_s+"."+Time.now.month.to_s+"."+Time.now.year.to_s+" "+Time.now.hour.to_s+":"+Time.now.min.to_s+":"+Time.now.min.to_s+")"+" "+name+":  "+nachricht+"\r\n"
  ff = File.new(global_path+namee+"mail.txt","w+")
  ff.puts(k)
  ff.close
  when "open"
    k = ""
    e = 0
    f = File.open(global_path+name+"mail.txt")
    f.each do |line|
      e = e + 1
    end
    f.close
    f = File.open(global_path+name+"mail.txt")
    for j in 1..e
      if not menu == "app"
        g = f.readline
        k = k+g+""
      else
        g = f.readline
        k = k+g.chomp+"~"
      end
    end
    Output(kara,tools,world,app_path,menu,k,"","")
  when "ende"
  kk = 1
  when "löschen"
  File.new(global_path+name+"mail.txt","w+")
end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end