#bitte alles entsprechend anpassen
global_path = ""          							   	#path zum netzwerk ordner
name = ""                                              	#Name f�r kara-mails
#-----------------------------------------------------------------------------
def zeigeBuchstaben(kara,tools,world,x)
b = 0                               #Statistik  Zähler der Buchstaben
w = 1                               #           Zähler der Worte
n = 0                               #           Zähler der Zahlen
s = 0                               #           Zähler der Sätze (mit ".")
z = 1 
p = 8   
k = 6
j = 6 
kox = 0
koy = 6 
ri = "o"                   
umlaut=0                            
world.clearAll                     
x=x.downcase                       
#-----------------------------------------------------------------------------
# Start der Zeichenerzeugung
#-----------------------------------------------------------------------------
x.each_byte do |y|                 
if z> 900                           
 abort                              
end
if j> 900                           
 abort                              
end
#Sonderbehandlung für Umlaute und ß
if umlaut==1
    yy=[195,y].pack('c*')           #Umlaute gehören nicht direkt zum ASCII-Code
    umlaut=0                        #sie bestehen aus 2 Zeichen --> Kenner 195 und einem Code --> in passenden String wandeln
else
    yy=y.chr                        
end
if y==195                          
 umlaut=1                           
end

xxx =""
if umlaut==0                        
case (yy)
  when "~"
    z = 1
    koy = koy+7
    kox = 0
    p = p+7
    if z > world.getSizeX()
      j = z
    end
  when [195,164].pack('c*'),[195,132].pack('c*')   # ä,Ä  --> bestehen aus zwei Bytes, diese werden mit pack zu einem Zeichen zusammengeführt
    xxx = "51000mplmpmprmprrmrmpmmprrmlmpmpmlmprrmmpmprmprrmrmpmplm"
  when "a"
    xxx = "51000mplmpmprmprrmrmprmlmprmprmlmprmprmprrmrmpmplm"
  when "b"
    xxx = "51000mpmprrmrmpmprmprrmrmpmprmpmpmrmpmrmprrmrmpmrmprrmm"
  when "c"
    xxx = "51000mmprrmrmpmpmpmrmpmpmrmpmmpmrmprrmm"
  when "d"
    xxx = "51000mpmpmprrmmrmpmpmpmprmpmpmrmpmpmpmlm"
  when "e"
    xxx = "41000mpmpmprrmmrmpmprmpmprrmmrmpmprmpmprmmmmlm"
  when "f"
    xxx = "41000mplmpmprmpmprrmmrmpmprmpmprmmmmlm"
  when "g"
    xxx = "51000mmpmprrmmrmpmprmmprrmmrmpmrmpmpmprmmpmpmplm"
  when "h"
    xxx = "51000mplmpmprmprrmrmpmprmmmprmpmprmprrmrmpmplm"
  when "i"
    xxx = "21000mplmpmpmpmprrmmmmlm"
  when "j"
    xxx = "51000mmpmprrmmrmpmmmrmmmprmpmpmpmlm"
  when "k"
    xxx = "51000mplmpmpmpmprmmmprrmlmprmlmpmlmprmlmpm"
  when "l"
    xxx = "41000mpmpmprrmmrmpmpmpmprmmrmmmmlm"
  when "m"
    xxx = "61000mplmpmpmpmprmrmplmrmplmlmprmlmprrmpmpmpmplm"
  when "n"
    xxx = "61000mplmpmpmpmprmrmplmrmplmrmplmrmprrmpmpmpmprrmmmmlm"
  when [195,182].pack('c*'),[195,150].pack('c*')
    xxx = "51000mmpmprrmmrmpmpmpmmprrmlmpmpmlmprrmmpmpmpmlm"
  when "o"
    xxx = "51000mmpmprrmmrmpmpmpmrmpmpmrmpmpmpmlm"
  when "p"
    xxx = "51000mplmpmprmprrmrmpmprmpmpmrmpmrmprrmrmmlm"
  when "q"
    xxx = "61000mmpmprrmmrmpmprmmprrmmrmpmrmpmpmrmpmpmpmlmpm"
  when "r"
    xxx = "51000mplmpmprmprrmrmpmprmpmpmrmpmrmplmpmlmpm"
  when "s"
    xxx = "51000mpmpmpmlmpmlmpmpmrmpmrmpmpmprmmmmlm"
  when "t"
    xxx = "61000mmmplmpmpmpmplmpmprrmmmpmprmmmmlm"
  when "u"
    xxx = "51000mmpmprrmmrmpmpmpmprmmmprmpmpmpmlm"
  when[195,188].pack('c*'),[195,156].pack('c*')#ü,Ü
    xxx = "51000mmpmprrmmrmpmpmpmmprrmlmmmlmprrmmpmpmpmlm"
  when "v"
    xxx = "61000mmmprrmrmpmplmrmpmprmmmmprmpmrmplmpmlmm"
  when "w"
    xxx = "61000mmpmmpmlmplmmpmmprmpmpmprmmmmprmpmpmmlm"
  when "x"
    xxx = "61000mplmrmplmrmplmrmplmrmprrmmmmprrmrmplmrmlmrmplmrmplm"
  when "y"
    xxx = "61000mmmplmpmprmlmprmlmplmmmmplmlmprmlmrmmlmmm"
  when "z"
    xxx = "61000mpmpmpmprrmmrmpmrmplmrmplmplmpmpmprrmmmmprmmmmplm"
  when "1"
    xxx = "40010mlmmpmrmplmrmprmpmpmpmplm"
  when "2"
    xxx = "40010mpmprrmrmpmprmplmmplmprrmmprmpmpmmplm"
  when "3"
    xxx = "40010mpmprrmrmmprmplmmplmprrmmprmpmpmpmplm"
  when "4"
    xxx = "40010mlmmprmprrmrmpmprmmprmpmpmpmplm"
  when "5"
    xxx = "40010mpmplmmplmprmpmprmpmprmmpmpmplm"
  when "6"
    xxx = "40010mpmplmmplmplmprrmmpmprmpmprmmpmpmplm"
  when "7"
    xxx = "40010mmlmmpmmplmprrmmprmpmpmpmplm"
  when "8"
    xxx = "40010mpmplmmplmplmprrmmpmprmpmprmpmpmpmplm"
  when "9"
    xxx = "40010mpmplmmplmprmpmprmpmprmpmpmpmplm"
  when "0"
    xxx = "40010mpmprrmrmpmpmpmprmpmprmpmpmpmplm"
  when "."
    xxx = "20101mpm"
  when ":"
    xxx = "20101mlmpmmprrmmmlm"
  when"!"
    xxx = "20000mplmmpmpmpmprmrmmmmml"
  when"?"
    xxx = "40000mmprrmrmmmmprmlmprmpmrmpmpmrmpmplmmlmm"
  when"-"
    xxx = "40000mlmmprmpmprmmlm"
  when"/"
    xxx = "40000mplmprmlmprmlmpmprrmmmmlm"
  when"#"
    xxx = "60000mmplmplmprrmmprrmrmpmplmprrmlmprmmprmplmprrmmprrmrmpmplmprrmlmplmm"
  when"^"
    xxx = "60000mmpmpmprrmmmrmpmpmpmrmpmpmpmrmpmpmpmlm"
  when"+"
    xxx = "40000mlmmprmprmprrmmprrmlmprmmlm"
  when"%"
    xxx = "70000mplmmmmpmprmprmpmmmplmlmpmrmplmrmplmrmprmmmmprmplmplmpm"
  when"|"
    xxx = "10000m"
  when"("
    xxx = "30000mlmpmpmpmpmrmprmmmmmplm"
  when")"
    xxx = "30000mplmmmmmprmrmpmpmpmpmlm"
  when"*"
    xxx = "40000mlmpmmprmmprmrmprrmrmpmlm"
  when"="
    xxx = "40000mlmpmmprmpmprmmprmprrmrmlm"
  when"_"
    xxx = "40000lmmrmpmpmpmprmml"
   when"�"
    xxx = "40000lmmmmpmrmpmrmpmrmplmmmlmm"
  when " "
    xxx = "30100mmm"
end
x0 = 0 
x1 = ""
x2 = ""
x3 = ""
x4 = ""
x5 = ""
x6 = ""
xxx.each_byte do |y|
if x0 == 0
x1 = y.chr
end
if x0 == 1
x2 = y.chr
end
if x0 == 2
x3 = y.chr
end
if x0 == 3
x4 = y.chr
end
if x0 == 4
x5 = y.chr
end
if x0 > 4
x6 = x6+y.chr
end
x0 = x0+1
end
hh = world.getSizeX()
z = z+x1.to_i
if true
  world.setSize(j ,p)
  x6.each_byte do |y6|
  if z > hh
  j = z
  end
  world.setSize(j ,p)
  case y6.chr
    when "m"
      if ri == "o"
        kox = kox+1
      end
      if ri == "w"
        kox = kox-1
      end
      if ri == "n"
        koy = koy-1
      end
      if ri == "s"
        koy = koy+1
      end
    when "r"
      if ri == "o"
        ri = "s"
      elsif ri == "w"
        ri = "n"
      elsif ri == "n"
        ri = "o"
      elsif ri == "s"
        ri = "w"
      end
    when "l"
      if ri == "o"
        ri = "n"
      elsif ri == "w"
        ri = "s"
      elsif ri == "n"
        ri = "w"
      elsif ri == "s"
        ri = "o"
      end
    when "p"
      world.setLeaf(kox,koy,true)
  end
  end
  b = b+x2.to_i
  w = w+x3.to_i
  n = n+x4.to_i
  s = s+x5.to_i
end
end#if umlaut 
end#do
end
kk = 0
while kk == 0
	zeigeBuchstaben(kara,tools,world,"   Gegenspieler version:~^ chat~^ karas weg~^ mail~^ ende")
	fa = ""
	while fa == ""
	  for hx in 2..4
	    for hy in 10..12
	      if world.isMushroom(hx,hy)
	        fa = "chat"
	      end
	    end
	  end
	  for hx in 2..4
	    for hy in 17..19
	      if world.isMushroom(hx,hy)
	        fa = "karas weg"
	      end
	    end
	  end
	  for hx in 2..4
	    for hy in 24..26
	      if world.isMushroom(hx,hy)
	        fa = "mail"
	      end
	    end
	  end
      for hx in 2..4
	    for hy in 31..33
	      if world.isMushroom(hx,hy)
	        kk = 1
            fa = "ende"
	      end
	    end
	  end
	end
	case fa
	  when "chat"
	    if not File.file?(global_path+"chat_out.txt")
	        File.new(global_path+"chat_out.txt", "w+")
	    end
	    if not File.file?(global_path+"chat_in.txt")
	        File.new(global_path+"chat_in.txt", "w+")
	    end
	    v7 = 0
	    v8 = 1
	    tools.showMessage("du kannst jetzt chaten")
        kkk = 0
	    while kkk == 0
	      v3 = File.size(global_path+"chat_out.txt")
	      v6 = File.size(global_path+"chat_in.txt")
	      if v3 == 0 
	        if v8 == 0 and v6 == 0
	          v1 = tools.stringInput("gieb die nachricht an den anderen computer ein")
	          v2 = File.new(global_path+"chat_in.txt", "w+")
	          v2.puts(v1)
	          v2.rewind
	          v7 = 0
	          v8 = 1
	        end
	      else
	        if v7 == 0
	          v4 = File.open(global_path+"chat_out.txt")
	          v5 = v4.readline
	          if v5.chomp == "-ende"
	            tools.showMessage("chat wurde beendet")
	            kkk = 1
	          end
              if kkk == 0
	           tools.showMessage(v5)
              end
	          v5 = File.new(global_path+"chat_out.txt", "w+")
	          v7 = 1
	          v8 = 0
	        end
	      end
	      tools.sleep(50)
	      tools.checkState
	    end
        tools.showMessage("Drücke ok damit das Programm beendet wird")
	  when "karas weg"
	    f = File.new(global_path+"karas_weg.txt", "w+")
	    f.puts()
	    f.rewind
	    world.clearAll
	    world.setSize(9,9)
	    kara.setPosition(0,0)
	    p = "00"
	    w = tools.stringInput("gieb karas weg ein")
	    w.each_byte do |y|
	      case (y.chr)
	        when "m"
	          kara.move
	        when "r"
	          kara.turnRight
	        when "l"
	          kara.turnLeft
	      end
	      x = kara.getPosition.getX.to_i
	      y = kara.getPosition.getY.to_i
	      p = p + x.to_s + y.to_s
	    end
	    v = File.new(global_path+"karas_weg.txt", "w+")
	    v.puts(p)
	    v.rewind
        tools.showMessage("Drücke ok damit das Programm beendet wird")
	  when "mail"
      kkk = 0
	  while kkk == 0
	    zeigeBuchstaben(kara,tools,world,"   Mail~^ lesen~^ schreiben~^ löschen~^ ende~")
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
		    for hy in 17..29
		      if world.isMushroom(hx,hy)
		        x = "write"
		      end
		    end
		  end
		  for hx in 2..4
		    for hy in 24..26
		      if world.isMushroom(hx,hy)
		        x = "l�schen"
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
		i = 0
		world.clearAll
		world.setSize(1,1)
		case x
		  when "write"
		  e = 0
		  k = ""
		  namee = tools.stringInput("name des Empfengers")
		  nachricht = tools.stringInput("gib die nachricht an den Empfenger ein")
		  if not File.file?(global_path+namee+"mail.txt")
			File.new(global_path+namee+"mail.txt", "w+")
		  end
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
		  ff.puts(k+"\r\n")
		  #ff.rewind
		  ff.close
		  when "open"
		    k = ""
		    e = 0
		    if not File.file?(global_path+name+"mail.txt")
			  File.new(global_path+name+"mail.txt", "w+")
		    end
		    f = File.open(global_path+name+"mail.txt")
		    f.each do |line|
		      e = e + 1
		    end
		    f.close
		    f = File.open(global_path+name+"mail.txt")
		    for j in 1..e
		      g = f.readline
		      k = k+g+""#+"\r\n"
		    end
		    tools.showMessage(k.to_s)
		  when "ende"
		  kkk = 1
		  when "l�schen"
		  File.new(global_path+name+"mail.txt","w+")
		end
	  end
      tools.showMessage("Drücke ok damit das Programm beendet wird")
	end
end