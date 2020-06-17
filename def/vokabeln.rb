def vokabeln(pack)
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
g = 0
while not g == 4
case g 
  when 0
    if not menu == "app"
	xx = "^ abfrage~^ neues Fach erstellen~^ vokabeln Fach zuweisen~^ vokabeln löschen~^ ende"
	zeigeBuchstaben(pack,xx,true)
	while g == 0
	  for hx in 2..4
	    for hy in 3..5
	      if world.isMushroom(hx,hy)
	        g = 1
	      end
	    end
	  end
	  for hx in 2..4
	    for hy in 10..12
	      if world.isMushroom(hx,hy)
	        g = 5
	      end
	    end
	  end
	  for hx in 2..4
	    for hy in 17..19
	      if world.isMushroom(hx,hy)
	        g = 6
	      end
	    end
	  end
	  for hx in 2..4
	    for hy in 24..26
	      if world.isMushroom(hx,hy)
	        g = 3
	      end
	    end
	  end
      for hx in 2..4
	    for hy in 31..33
	      if world.isMushroom(hx,hy)
	        g = 4
	      end
	    end
	  end
	end
  else
    ap1 = Input(kara,tools,world,app_path,menu,"","s","abfrage/neues Fach erstellen/vokabeln Fach zuweisen/vokabeln löschen/ende","","")
    if ap1 == "abfrage"
      g = 1
    elsif ap1 == "neues Fach erstellen"
      g = 5
    elsif ap1 == "vokabeln Fach zuweisen"
      g = 6
    elsif ap1 == "vokabeln löschen"
      g = 3
    elsif ap1 == "ende"
      g = 4
    end
  end
  when 1
	x4 = ""
    a = 0
      en = ""
      l1 = ""
      l2 = ""
      l3 = ""
      l4 = ""
      l5 = ""
      l6 = ""
      l7 = ""
      l8 = ""
      l9 = ""
      l10 = ""
      l = 0
      Dir.glob(my_path+"vokabeln/*.jdkv") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkv")
        if l == 1
          l1 = r
        elsif l == 2
          l2 = r
        elsif l == 3
          l3 = r
        elsif l == 4
          l4 = r
        elsif l == 5
          l5 = r
        elsif l == 6
          l6 = r
        elsif l == 7
          l7 = r
        elsif l == 8
          l8 = r
        elsif l == 9
          l9 = r
        elsif l == 10
          l10 = r
        end
        if l < 11
          en = en + "^ "+r+"~"
        end
      end
      if l == 0
        Output(kara,tools,world,app_path,menu,"du hast kein Fach in dem du abgefrag werden kannst","","")
      else
      if not menu == "app"
      zeigeBuchstaben(pack,en,true)
      p = ""
      while p == ""
        if l > 0
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                p = l1
              end
            end
          end
        end
        if l > 1
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                p = l2
              end
            end
          end
        end
        if l > 2
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                p = l3
              end
            end
          end
        end
        if l > 3
          for hx in 2..4
            for hy in 24..26
              if world.isMushroom(hx,hy)
                p = l4
              end
            end
          end
        end
        if l > 4
          for hx in 2..4
            for hy in 31..33
              if world.isMushroom(hx,hy)
                p = l5
              end
            end
          end
        end
        if l > 5
          for hx in 2..4
            for hy in 38..40
              if world.isMushroom(hx,hy)
                p = l6
              end
            end
          end
        end
        if l > 6
          for hx in 2..4
            for hy in 45..47
              if world.isMushroom(hx,hy)
                p = l7
              end
            end
          end
        end
        if l > 7
          for hx in 2..4
            for hy in 52..54
              if world.isMushroom(hx,hy)
                p = l8
              end
            end
          end
        end
        if l > 8
          for hx in 2..4
            for hy in 59..61
              if world.isMushroom(hx,hy)
                p = l9
              end
            end
          end
        end
        if l > 9
          for hx in 2..4
            for hy in 66..68
              if world.isMushroom(hx,hy)
                p = l10
              end
            end
          end
        end
      end
      else
      p = Input(kara,tools,world,app_path,menu,"","s","#{l1}/#{l2}/#{l3}/#{l4}/#{l5}/#{l6}/#{l7}/#{l8}/#{l9}/#{l10}","","")
      end
    if not l == 0
	h = ""
	x12 = File.open(my_path + "vokabeln/" + p + ".jdkv", "r")
    Output(kara,tools,world,app_path,menu,"brich das Programm erst ab wenn es durchgelaufen ist sonst wird es nicht gespeichert","","")
	x12.each do |line|
	   line = line.chomp
	   if not line == ""
	   line = line.chomp
	   e = 0
	   y1 = ""
	   y2 = ""
	   y3 = ""
	   y4 = ""
	   e = 0
	   line.each_byte do |liney|
	     case (liney.chr)	
	       when "^"
	         e = e+1
	     end
	     if e == 0
	       if not liney.chr == "^"
	         y1 = y1+liney.chr
	       end
	     end 
	     if e == 1
	       if not liney.chr == "^"
	         y2 = y2+liney.chr
	       end
	     end
	     if e == 2
	       if not liney.chr == "^"
	         y3 = y3+liney.chr
	       end
	     end
	     if e == 3
	       if not liney.chr == "^"
	         y4 = y4+liney.chr
	       end
	     end
	   end
	    dt = Time.now
	    yh = dt.year.to_i
	    mh = dt.mon.to_i
	    dh = dt.day.to_i
	    if dh<10
	      dh="0"+dh.to_s
	    end
	    if mh<10
	      mh="0"+mh.to_s
	    end
	    tt = yh.to_s+mh.to_s+dh.to_s
	    if tt.to_i>y4.to_i or y1 == "1"
	      if not y1 == "8"
	      yy = Input(kara,tools,world,app_path,menu,("frage: "+y2),"s","","","")
          if not menu == "app"
	        yyy = Input(kara,tools,world,app_path,menu,"deine Antwort: #{yy}\r\nrichtige Antwort: #{y3}\r\nist deine Antwort korrekt ? ","s","ja/nein","","")
          else
            yyy = Input(kara,tools,world,app_path,menu,"deine Antwort: #{yy}~richtige Antwort: #{y3}~ist deine Antwort korrekt? ","s","ja/nein","","")
          end
	      fff = 0
	        if yyy == "ja"
	          yy1 = y1.to_i+1
	          if yy1<8
                Output(kara,tools,world,app_path,menu,"diese vokabel ist jetzt in lv.#{yy1}","","")
	          end
	          if yy1 == 8
                Output(kara,tools,world,app_path,menu,"diese vokabel ist jetzt in lv.8 kara hofft das du die jetzt kannst","","")
	          end
	          ww = yy1.to_s+"^"+y2+"^"+y3+"^"+tt
	          h = h+ww+"\r\n"
	          fff = 1
	        else
	          ww = y1.to_s+"^"+y2+"^"+y3+"^"+tt
	          h = h+ww+"\r\n"
	          fff = 1
	        end
	      else
	        ww = y1.to_s+"^"+y2+"^"+y3+"^"+y4
	        h = h+ww+"\r\n"
	      end
	    else
	      ww = y1.to_s+"^"+y2+"^"+y3+"^"+y4
	      h = h+ww+"\r\n"
	    end
	   end
	end
    x12.close
    if not menu == "app"
      Output(kara,tools,world,app_path,menu,"du bist durch\r\nkeine vokabeln mehr vorhanden komm morgen wieder\r\nwiederhole die die noch auf lv.1 sind","","")
    else
      Output(kara,tools,world,app_path,menu,"du bist durch~keine vokabeln mehr vorhanden komm morgen wieder~wiederhole die die noch auf lv.1 sind","","")
    end
	x13 = File.new(my_path + "vokabeln/"+ p+ ".jdkv", "w+")
	x13.puts(h)
    x13.close
    end
    end
    g = 0
  when 3
      en = ""
      l1 = ""
      l2 = ""
      l3 = ""
      l4 = ""
      l5 = ""
      l6 = ""
      l7 = ""
      l8 = ""
      l9 = ""
      l10 = ""
      l = 0
      Dir.glob(my_path+"vokabeln/*.jdkv") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkv")
        if l == 1
          l1 = r
        elsif l == 2
          l2 = r
        elsif l == 3
          l3 = r
        elsif l == 4
          l4 = r
        elsif l == 5
          l5 = r
        elsif l == 6
          l6 = r
        elsif l == 7
          l7 = r
        elsif l == 8
          l8 = r
        elsif l == 9
          l9 = r
        elsif l == 10
          l10 = r
        end
        if l < 11
          en = en + "^ "+r+"~"
        end
      end
      if l == 0
        Output(kara,tools,world,app_path,menu,"du hast kein Fach das du löschen kannst","","")
      else
      if not menu == "app"
      zeigeBuchstaben(pack,en,true)
      p = ""
      while p == ""
        if l > 0
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                p = l1
              end
            end
          end
        end
        if l > 1
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                p = l2
              end
            end
          end
        end
        if l > 2
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                p = l3
              end
            end
          end
        end
        if l > 3
          for hx in 2..4
            for hy in 24..26
              if world.isMushroom(hx,hy)
                p = l4
              end
            end
          end
        end
        if l > 4
          for hx in 2..4
            for hy in 31..33
              if world.isMushroom(hx,hy)
                p = l5
              end
            end
          end
        end
        if l > 5
          for hx in 2..4
            for hy in 38..40
              if world.isMushroom(hx,hy)
                p = l6
              end
            end
          end
        end
        if l > 6
          for hx in 2..4
            for hy in 45..47
              if world.isMushroom(hx,hy)
                p = l7
              end
            end
          end
        end
        if l > 7
          for hx in 2..4
            for hy in 52..54
              if world.isMushroom(hx,hy)
                p = l8
              end
            end
          end
        end
        if l > 8
          for hx in 2..4
            for hy in 59..61
              if world.isMushroom(hx,hy)
                p = l9
              end
            end
          end
        end
        if l > 9
          for hx in 2..4
            for hy in 66..68
              if world.isMushroom(hx,hy)
                p = l10
              end
            end
          end
        end
      end
      else
        p = Input(kara,tools,world,app_path,menu,"","s","#{l1}/#{l2}/#{l3}/#{l4}/#{l5}/#{l6}/#{l7}/#{l8}/#{l9}/#{l10}","","")
      end
      File.delete(my_path+"vokabeln/"+p+".jdkv")
      end
      g = 0
  when 5
      l = 0
      Dir.glob(my_path+"ton/*.jdkv") do |rb_file|
        l = l+1
      end
      if not l > 9
        p = Input(kara,tools,world,app_path,menu,"gib einen namen ein","s","","","")
        y = File.new(my_path+"vokabeln/"+p+".jdkv","w+")
        y.puts("")
        y.close
      else
        Output(kara,tools,world,app_path,menu,"Du kannst nur maximal 10 F�cher haben","","")
      end
      g = 0
  when 6
      en = ""
      l1 = ""
      l2 = ""
      l3 = ""
      l4 = ""
      l5 = ""
      l6 = ""
      l7 = ""
      l8 = ""
      l9 = ""
      l10 = ""
      l = 0
      Dir.glob(my_path+"vokabeln/*.jdkv") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkv")
        if l == 1
          l1 = r
        elsif l == 2
          l2 = r
        elsif l == 3
          l3 = r
        elsif l == 4
          l4 = r
        elsif l == 5
          l5 = r
        elsif l == 6
          l6 = r
        elsif l == 7
          l7 = r
        elsif l == 8
          l8 = r
        elsif l == 9
          l9 = r
        elsif l == 10
          l10 = r
        end
        if l < 11
          en = en + "^ "+r+"~"
        end
      end
      if l == 0
        Output(kara,tools,world,app_path,menu,"du hast kein Fach dem du eine Vokabel zuweisen kannst","","")
      else
      if not menu == "app"
      zeigeBuchstaben(pack,en,true)
      p = ""
      while p == ""
        if l > 0
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                p = l1
              end
            end
          end
        end
        if l > 1
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                p = l2
              end
            end
          end
        end
        if l > 2
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                p = l3
              end
            end
          end
        end
        if l > 3
          for hx in 2..4
            for hy in 24..26
              if world.isMushroom(hx,hy)
                p = l4
              end
            end
          end
        end
        if l > 4
          for hx in 2..4
            for hy in 31..33
              if world.isMushroom(hx,hy)
                p = l5
              end
            end
          end
        end
        if l > 5
          for hx in 2..4
            for hy in 38..40
              if world.isMushroom(hx,hy)
                p = l6
              end
            end
          end
        end
        if l > 6
          for hx in 2..4
            for hy in 45..47
              if world.isMushroom(hx,hy)
                p = l7
              end
            end
          end
        end
        if l > 7
          for hx in 2..4
            for hy in 52..54
              if world.isMushroom(hx,hy)
                p = l8
              end
            end
          end
        end
        if l > 8
          for hx in 2..4
            for hy in 59..61
              if world.isMushroom(hx,hy)
                p = l9
              end
            end
          end
        end
        if l > 9
          for hx in 2..4
            for hy in 66..68
              if world.isMushroom(hx,hy)
                p = l10
              end
            end
          end
        end
      end
      else
        p = Input(kara,tools,world,app_path,menu,"","s","#{l1}/#{l2}/#{l3}/#{l4}/#{l5}/#{l6}/#{l7}/#{l8}/#{l9}/#{l10}","","")
      end
    h = 0
    while h == 0
    fr = Input(kara,tools,world,app_path,menu,"gib eine Frage ein! Gieb -ende ein um zu beenden","s","","","")
    if fr == "-ende"
      h = 1
    end
    if not h == 1
      an = Input(kara,tools,world,app_path,menu,"gib eine Antwort ein! Gieb -ende ein um zu beenden","s","","","")
    end
    if an == "-ende"
      h = 1
    end
    if h == 0
    x12 = File.open(my_path +"vokabeln/"+ p +".jdkv","r").read
    dt = Time.now
    yh = dt.year.to_i
    mh = dt.mon.to_i
    dh = dt.day.to_i
    if dh<10
      dh = "0"+dh.to_s
    end
    if mh<10
      mh = "0"+mh.to_s
    end
    al = "1^"+fr+"^"+an+"^"+yh.to_s+mh.to_s+dh.to_s
    al = x12+al+"\r\n"
    x14 = File.new(my_path +"vokabeln/"+ p +".jdkv", "w+")
    x14.puts(al.to_s)
    x14.close
    x8 = 1
    end
    end
    end
  g = 0
end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end