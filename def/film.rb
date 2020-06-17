def film(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
k = 0
while not k == 5
  case k
	   when 0
      if not menu == "app"
        xx = "^ film abspielen~^ film erstellen~^ film bearbeiten~^ film löschen~^ gif abspielen~^ ende"
        zeigeBuchstaben(pack,xx,true)
        while k == 0
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                k = 1
              end
            end
          end
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                k = 2
              end
            end
          end
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                k = 3
              end
            end
          end
          for hx in 2..4
            for hy in 24..26
              if world.isMushroom(hx,hy)
                k = 4
              end
            end
          end
          for hx in 2..4
            for hy in 31..33
              if world.isMushroom(hx,hy)
                k = 6
              end
            end
          end
          for hx in 2..4
            for hy in 38..40
              if world.isMushroom(hx,hy)
                k = 5
              end
            end
          end
        end
      else
    ap1 = Input(kara,tools,world,app_path,menu,"","s","film abspielen/[film erstellen]/[film bearbeiten]/film löschen/gif abspielen/ende","","")
    if ap1 == "film abspielen"
      k = 1
    elsif ap1 == "[film erstellen]"
      k = 2
    elsif ap1 == "[film bearbeiten]"
      k = 3
    elsif ap1 == "film löschen"
      k = 4
    elsif ap1 == "ende"
      k = 5
    elsif ap1 == "gif abspielen"
      k = 6
    end
    end
    when 1
      e = ""
      l = 0
      l1 = ""
      l2 = ""
      l3 = ""
      l4 = ""
      l5 = ""
      ll1 = 0
      ll2 = 0
      ll3 = 0
      ll4 = 0
      ll5 = 0
      Dir.glob(my_path+"film/*.jdkf9") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkf9")
        if l == 1
          l1 = r
          ll1 = 9
        elsif l == 2
          l2 = r
          ll2 = 9
        elsif l == 3
          l3 = r
          ll3 = 9
        elsif l == 4
          l4 = r
          ll4 = 9
        elsif l == 5
          l5 = r
          ll5 = 9
        end
        if l < 6
          e = e + "^ "+r+"~"
        end
      end
      Dir.glob(my_path+"film/*.jdkf18") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkf18")
        if l == 1
          l1 = r
          ll1 = 18
        elsif l == 2
          l2 = r
          ll2 = 18
        elsif l == 3
          l3 = r
          ll3 = 18
        elsif l == 4
          l4 = r
          ll4 = 18
        elsif l == 5
          l5 = r
          ll5 = 18
        end
        if l < 6
          e = e + "^ "+r+"~"
        end
      end
      if l == 0
        Output(kara,tools,world,app_path,menu,"du hast keinen Film den du ansehen kannst","","")
      else
      if not menu == "app"
        zeigeBuchstaben(pack,e,true)
        p = ""
        ppp = 0
        while p == ""
          if l > 0
            for hx in 2..4
              for hy in 3..5
                if world.isMushroom(hx,hy)
                  p = l1
                  ppp = ll1
                end
              end
            end
          end
          if l > 1
            for hx in 2..4
              for hy in 10..12
                if world.isMushroom(hx,hy)
                  p = l2
                  ppp = ll2
                end
              end
            end
          end
          if l > 2
            for hx in 2..4
              for hy in 17..19
                if world.isMushroom(hx,hy)
                  p = l3
                  ppp = ll3
                end
              end
            end
          end
          if l > 3
            for hx in 2..4
              for hy in 24..26
                if world.isMushroom(hx,hy)
                  p = l4
                  ppp = ll4
                end
              end
            end
          end
          if l > 4
            for hx in 2..4
              for hy in 31..33
                if world.isMushroom(hx,hy)
                  p = l5
                  ppp = ll5
                end
              end
            end
          end
        end
      else
      p = Input(kara,tools,world,app_path,menu,"","s","#{l1}/#{l2}/#{l3}/#{l4}/#{l5}","","")
      if p == l1
        ppp = ll1
      elsif p == l2
        ppp = ll2
      elsif p == l3
        ppp = ll3
      elsif p == l4
        ppp = ll4
      elsif p == l5
        ppp = ll5
      end
      end
      t = Input(kara,tools,world,app_path,menu,"Wieviele Bilder pro Sekunde?","i","","","")
      ti = (1000/t).round
      if ppp == 9
      d = File.open(my_path+"film/"+p+".jdkf9").read
      a = d.length/81
      world.setSize(11,11)
      `"#{my_path}"mouse zoomKara`
      h1 = 0
      h2 = 80
      
      for i in 1..a
        world.clearAll
        pu = d[h1..h2]
	    for i in 0..10
		  world.setTree(0,i,true)
		  world.setTree(i,0,true)
		  world.setTree(10,i,true)
		  world.setTree(i,10,true)
	    end
        for i in 0..8
          for j in 1..9
            c = (i*9)+j
            if pu[c-1].chr == "m"
              world.setMushroom(i+1,j,true)
            elsif pu[c-1].chr == "l"
              world.setLeaf(i+1,j,true)
            elsif pu[c-1].chr == "t"
              world.setTree(i+1,j,true)
            end
          end
        end
        tools.sleep(ti)
        h1 = h1+81
        h2 = h2+81
      end
      elsif ppp = 18
      d = File.open(my_path+"film/"+p+".jdkf18").read
      a = d.length/324
      world.setSize(20,20)
      `"#{my_path}"mouse zoomKara`
      h1 = 0
      h2 = 323
      for i in 1..a
        world.clearAll
        pu = d[h1..h2]
	    for i in 0..19
		  world.setTree(0,i,true)
		  world.setTree(i,0,true)
		  world.setTree(19,i,true)
		  world.setTree(i,19,true)
	    end
        for i in 0..17
          for j in 1..18
            c = (i*18)+j
            if pu[c-1].chr == "m"
              world.setMushroom(i+1,j,true)
            elsif pu[c-1].chr == "l"
              world.setLeaf(i+1,j,true)
            elsif pu[c-1].chr == "t"
              world.setTree(i+1,j,true)
            end
          end
        end
        tools.sleep(ti)
        h1 = h1+324
        h2 = h2+324
      end
      end
      end
      k = 0
        
    when 2
      l = 0
      Dir.glob(my_path+"film/*.jdkf9") do |rb_file|
        l = l+1
      end
      Dir.glob(my_path+"film/*.jdkf18") do |rb_file|
        l = l+1
      end
      if l > 4
        Output(kara,tools,world,app_path,menu,"Du kannst nur maximal 5 Filme haben","","")
      else
        p = Input(kara,tools,world,app_path,menu,"gib einen namen ein","s","","","")
        gr = Input(kara,tools,world,app_path,menu,"Welche Filmbreite?","i","9/18","","")
        if gr == 9
        kkk = 0
        pp = ""
        while kkk == 0
        world.clearAll
		world.setSize(11,16)
        `"#{my_path}"mouse zoomKara`
        `"#{my_path}"mouse setKaraMushroom`
		for i in 0..10
			world.setTree(0,i,true)
			world.setTree(i,0,true)
			world.setTree(10,i,true)
			world.setTree(i,10,true)
		end
		world.setLeaf(1,12,true)
		world.setLeaf(2,12,true)
		world.setLeaf(1,13,true)
		world.setLeaf(1,14,true)
		world.setLeaf(3,12,true)
		world.setLeaf(3,13,true)
		world.setLeaf(3,14,true)
		world.setLeaf(2,14,true)
		world.setLeaf(7,12,true)
		world.setLeaf(6,13,true)
		world.setLeaf(8,13,true)
		world.setLeaf(7,14,true)
		kk = 0
		while kk== 0
		  if world.isMushroom(2,13)
		    world.setMushroom(2,13,false)
		    for i in 1..9
              for j in 1..9
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
            kkk = 1
          end
          if world.isMushroom(7,13)
		    world.setMushroom(7,13,false)
		    for i in 1..9
              for j in 1..9
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
          end
		end
        end
        y = File.new(my_path+"film/"+p+".jdkf9","w+")
        y.puts(pp.chomp)
        y.close
        k = 0
        elsif gr == 18
        kkk = 0
        pp = ""
        while kkk == 0
        world.clearAll
		world.setSize(20,25)
        `"#{my_path}"mouse zoomKara`
        `"#{my_path}"mouse setKaraMushroom`
		for i in 0..19
			world.setTree(0,i,true)
			world.setTree(i,0,true)
			world.setTree(19,i,true)
			world.setTree(i,19,true)
		end
		world.setLeaf(1,21,true)
		world.setLeaf(2,21,true)
		world.setLeaf(1,22,true)
		world.setLeaf(1,23,true)
		world.setLeaf(3,21,true)
		world.setLeaf(3,22,true)
		world.setLeaf(3,23,true)
		world.setLeaf(2,23,true)
		world.setLeaf(7,21,true)
		world.setLeaf(6,22,true)
		world.setLeaf(8,22,true)
		world.setLeaf(7,23,true)
		kk = 0
		while kk== 0
		  if world.isMushroom(2,22)
		    world.setMushroom(2,22,false)
		    for i in 1..18
              for j in 1..18
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
            kkk = 1
          end
          if world.isMushroom(7,22)
		    world.setMushroom(7,22,false)
		    for i in 1..18
              for j in 1..18
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
          end
		end
        end
        y = File.new(my_path+"film/"+p+".jdkf18","w+")
        y.puts(pp.chomp)
        y.close
        k = 0
        else
          Output(kara,tools,world,app_path,menu,"Keine zugelassene Film Breite!!","","")
        end
      end
    when 3
      e = ""
      l = 0
      l1 = ""
      l2 = ""
      l3 = ""
      l4 = ""
      l5 = ""
      ll1 = 0
      ll2 = 0
      ll3 = 0
      ll4 = 0
      ll5 = 0
      Dir.glob(my_path+"film/*.jdkf9") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkf9")
        if l == 1
          l1 = r
          ll1 = 9
        elsif l == 2
          l2 = r
          ll2 = 9
        elsif l == 3
          l3 = r
          ll3 = 9
        elsif l == 4
          l4 = r
          ll4 = 9
        elsif l == 5
          l5 = r
          ll5 = 9
        end
        if l < 6
          e = e + "^ "+r+"~"
        end
      end
      Dir.glob(my_path+"film/*.jdkf18") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkf18")
        if l == 1
          l1 = r
          ll1 = 18
        elsif l == 2
          l2 = r
          ll2 = 18
        elsif l == 3
          l3 = r
          ll3 = 18
        elsif l == 4
          l4 = r
          ll4 = 18
        elsif l == 5
          l5 = r
          ll5 = 18
        end
        if l < 6
          e = e + "^ "+r+"~"
        end
      end
      if l == 0
        Output(kara,tools,world,app_path,menu,"du hast keinen Film den du bearbeiten kannst","","")
      else
      if not menu == "app"
        zeigeBuchstaben(pack,e,true)
        p = ""
        while p == ""
          if l > 0
            for hx in 2..4
              for hy in 3..5
                if world.isMushroom(hx,hy)
                  p = l1
                  ppp = ll1
                end
              end
            end
          end
          if l > 1
            for hx in 2..4
              for hy in 10..12
                if world.isMushroom(hx,hy)
                  p = l2
                  ppp = ll2
                end
              end
            end
          end
          if l > 2
            for hx in 2..4
              for hy in 17..19
                if world.isMushroom(hx,hy)
                  p = l3
                  ppp = ll3
                end
              end
            end
          end
          if l > 3
            for hx in 2..4
              for hy in 24..26
                if world.isMushroom(hx,hy)
                  p = l4
                  ppp = ll4
                end
              end
            end
          end
          if l > 4
            for hx in 2..4
              for hy in 31..33
                if world.isMushroom(hx,hy)
                  p = l5
                  ppp = ll5
                end
              end
            end
          end
        end
      else
      p = Input(kara,tools,world,app_path,menu,"","s","#{l1}/#{l2}/#{l3}/#{l4}/#{l5}","","")
      if p == l1
        ppp = ll1
      elsif p == l2
        ppp = ll2
      elsif p == l3
        ppp = ll3
      elsif p == l4
        ppp = ll4
      elsif p == l5
        ppp = ll5
      end
      end
      
      if ppp == 9
      d = File.open(my_path+"film/"+p+".jdkf9").read.chomp
      a = d.length/81
      b = Input(kara,tools,world,app_path,menu,"Wähle den Film den du bearbeiten willst. n = neues (#{a} Bilder)","s","","","")
      if b == "n"
        kkk = 0
        pp = ""
        while kkk == 0
        world.clearAll
		world.setSize(11,16)
        `"#{my_path}"mouse zoomKara`
        `"#{my_path}"mouse setKaraMushroom`
		for i in 0..10
			world.setTree(0,i,true)
			world.setTree(i,0,true)
			world.setTree(10,i,true)
			world.setTree(i,10,true)
		end
		world.setLeaf(1,12,true)
		world.setLeaf(2,12,true)
		world.setLeaf(1,13,true)
		world.setLeaf(1,14,true)
		world.setLeaf(3,12,true)
		world.setLeaf(3,13,true)
		world.setLeaf(3,14,true)
		world.setLeaf(2,14,true)
		world.setLeaf(7,12,true)
		world.setLeaf(6,13,true)
		world.setLeaf(8,13,true)
		world.setLeaf(7,14,true)
		kk = 0
		while kk== 0
		  if world.isMushroom(2,13)
		    world.setMushroom(2,13,false)
		    for i in 1..9
              for j in 1..9
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
            kkk = 1
          end
          if world.isMushroom(7,13)
		    world.setMushroom(7,13,false)
		    for i in 1..9
              for j in 1..9
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
          end
		end
        end
        y = File.new(my_path+"film/"+p+".jdkf9","w+")
	    y.puts(d.chomp+pp.chomp)
	    y.close
	    k = 0
      elsif (b.to_i <= a) and (b.to_i > 0)
        h1 = (b.to_i-1)*81
        h2 = ((b.to_i)*81)-1
        fi = d[0..(h1-1)]
        se = d[(h2+1)..(d.length-1)]
        if b.to_i == 1
          fi = ""
        end
        if b.to_i == a
          se = ""
        end
        pu = d[h1..h2]
        world.clearAll
	    world.setSize(11,16)
        `"#{my_path}"mouse zoomKara`
        `"#{my_path}"mouse setKaraMushroom`
	    for i in 0..10
		  world.setTree(0,i,true)
		  world.setTree(i,0,true)
		  world.setTree(10,i,true)
		  world.setTree(i,10,true)
	    end
	    world.setLeaf(1,12,true)
	    world.setLeaf(2,12,true)
	    world.setLeaf(1,13,true)
	    world.setLeaf(1,14,true)
	    world.setLeaf(3,12,true)
	    world.setLeaf(3,13,true)
	    world.setLeaf(3,14,true)
	    world.setLeaf(2,14,true)
        for i in 0..8
          for j in 1..9
            c = (i*9)+j
            if pu[c-1].chr == "m"
              world.setMushroom(i+1,j,true)
            elsif pu[c-1].chr == "l"
              world.setLeaf(i+1,j,true)
            elsif pu[c-1].chr == "t"
              world.setTree(i+1,j,true)
            end
          end
        end  
 	    kk = 0
	    while kk == 0
	      if world.isMushroom(2,13)
	        world.setMushroom(2,13,false)
            kk = 1
	        for i in 1..9
              for j in 1..9
                if world.isMushroom(i,j)
                  fi = fi+"m"
                elsif world.isLeaf(i,j)
                  fi = fi+"l"
                elsif world.isTree(i,j)
                  fi = fi+"t"
                else
                  fi = fi+"e"
                end
              end
	        end
          end
        end
        y = File.new(my_path+"film/"+p+".jdkf9","w+")
	    y.puts((fi.chomp+se.chomp))
	    y.close
	    k = 0
      else
        Output(kara,tools,world,app_path,menu,"Dieses Bild gibt es nicht","","")
        k = 0
      end
      elsif ppp == 18
      d = File.open(my_path+"film/"+p+".jdkf18").read.chomp
      a = d.length/324
      b = Input(kara,tools,world,app_path,menu,"Wähle den Film den du bearbeiten willst. n = neues (#{a} Bilder)","s","","","")
      if b == "n"
        kkk = 0
        pp = ""
        while kkk == 0
        world.clearAll
		world.setSize(20,25)
        `"#{my_path}"mouse zoomKara`
        `"#{my_path}"mouse setKaraMushroom`
		for i in 0..19
			world.setTree(0,i,true)
			world.setTree(i,0,true)
			world.setTree(19,i,true)
			world.setTree(i,19,true)
		end
		world.setLeaf(1,21,true)
		world.setLeaf(2,21,true)
		world.setLeaf(1,22,true)
		world.setLeaf(1,23,true)
		world.setLeaf(3,21,true)
		world.setLeaf(3,22,true)
		world.setLeaf(3,23,true)
		world.setLeaf(2,23,true)
		world.setLeaf(7,21,true)
		world.setLeaf(6,22,true)
		world.setLeaf(8,22,true)
		world.setLeaf(7,23,true)
		kk = 0
		while kk== 0
		  if world.isMushroom(2,22)
		    world.setMushroom(2,22,false)
		    for i in 1..18
              for j in 1..18
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
            kkk = 1
          end
          if world.isMushroom(7,22)
		    world.setMushroom(7,22,false)
		    for i in 1..18
              for j in 1..18
                if world.isMushroom(i,j)
                  pp = pp+"m"
                elsif world.isLeaf(i,j)
                  pp = pp+"l"
                elsif world.isTree(i,j)
                  pp = pp+"t"
                else
                  pp = pp+"e"
                end
              end
		    end
            kk = 1
          end
		end
        end
        y = File.new(my_path+"film/"+p+".jdkf18","w+")
	    y.puts(d.chomp+pp.chomp)
	    y.close
	    k = 0
      elsif (b.to_i <= a) and (b.to_i > 0)
        h1 = (b.to_i-1)*324
        h2 = ((b.to_i)*324)-1
        fi = d[0..(h1-1)]
        se = d[(h2+1)..(d.length-1)]
        if b.to_i == 1
          fi = ""
        end
        if b.to_i == a
          se = ""
        end
        pu = d[h1..h2]
        world.clearAll
	    world.setSize(20,25)
        `"#{my_path}"mouse zoomKara`
        `"#{my_path}"mouse setKaraMushroom`
	    for i in 0..19
		  world.setTree(0,i,true)
		  world.setTree(i,0,true)
		  world.setTree(19,i,true)
		  world.setTree(i,19,true)
	    end
	    world.setLeaf(1,21,true)
	    world.setLeaf(2,21,true)
	    world.setLeaf(1,22,true)
	    world.setLeaf(1,23,true)
	    world.setLeaf(3,21,true)
	    world.setLeaf(3,22,true)
	    world.setLeaf(3,23,true)
	    world.setLeaf(2,23,true)
        for i in 0..17
          for j in 1..18
            c = (i*18)+j
            if pu[c-1].chr == "m"
              world.setMushroom(i+1,j,true)
            elsif pu[c-1].chr == "l"
              world.setLeaf(i+1,j,true)
            elsif pu[c-1].chr == "t"
              world.setTree(i+1,j,true)
            end
          end
        end  
 	    kk = 0
	    while kk == 0
	      if world.isMushroom(2,22)
	        world.setMushroom(2,22,false)
            kk = 1
	        for i in 1..18
              for j in 1..18
                if world.isMushroom(i,j)
                  fi = fi+"m"
                elsif world.isLeaf(i,j)
                  fi = fi+"l"
                elsif world.isTree(i,j)
                  fi = fi+"t"
                else
                  fi = fi+"e"
                end
              end
	        end
          end
        end
        y = File.new(my_path+"film/"+p+".jdkf18","w+")
	    y.puts((fi.chomp+se.chomp))
	    y.close
	    k = 0
      else
        Output(kara,tools,world,app_path,menu,"Dieses Bild gibt es nicht","","")
        k = 0
      end
      end
      end
      k = 0
    when 4
      e = ""
      l = 0
      l1 = ""
      l2 = ""
      l3 = ""
      l4 = ""
      l5 = ""
      ll1 = 0
      ll2 = 0
      ll3 = 0
      ll4 = 0
      ll5 = 0
      Dir.glob(my_path+"film/*.jdkf9") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkf9")
        if l == 1
          l1 = r
          ll1 = 9
        elsif l == 2
          l2 = r
          ll2 = 9
        elsif l == 3
          l3 = r
          ll3 = 9
        elsif l == 4
          l4 = r
          ll4 = 9
        elsif l == 5
          l5 = r
          ll5 = 9
        end
        if l < 6
          e = e + "^ "+r+"~"
        end
      end
      Dir.glob(my_path+"film/*.jdkf18") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkf18")
        if l == 1
          l1 = r
          ll1 = 18
        elsif l == 2
          l2 = r
          ll2 = 18
        elsif l == 3
          l3 = r
          ll3 = 18
        elsif l == 4
          l4 = r
          ll4 = 18
        elsif l == 5
          l5 = r
          ll5 = 18
        end
        if l < 6
          e = e + "^ "+r+"~"
        end
      end
      if l == 0
        Output(kara,tools,world,app_path,menu,"du hast keinen Film den du löschen kannst","","")
      else
      if not menu == "app"
        zeigeBuchstaben(pack,e,true)
        p = ""
        ppp = 0
        while p == ""
          if l > 0
            for hx in 2..4
              for hy in 3..5
                if world.isMushroom(hx,hy)
                  p = l1
                  ppp = ll1
                end
              end
            end
          end
          if l > 1
            for hx in 2..4
              for hy in 10..12
                if world.isMushroom(hx,hy)
                  p = l2
                  ppp = ll2
                end
              end
            end
          end
          if l > 2
            for hx in 2..4
              for hy in 17..19
                if world.isMushroom(hx,hy)
                  p = l3
                  ppp = ll3
                end
              end
            end
          end
          if l > 3
            for hx in 2..4
              for hy in 24..26
                if world.isMushroom(hx,hy)
                  p = l4
                  ppp = ll4
                end
              end
            end
          end
          if l > 4
            for hx in 2..4
              for hy in 31..33
                if world.isMushroom(hx,hy)
                  p = l5
                  ppp = ll5
                end
              end
            end
          end
        end
      else
      p = Input(kara,tools,world,app_path,menu,"","s","#{l1}/#{l2}/#{l3}/#{l4}/#{l5}","","")
      if p == l1
        ppp = ll1
      elsif p == l2
        ppp = ll2
      elsif p == l3
        ppp = ll3
      elsif p == l4
        ppp = ll4
      elsif p == l5
        ppp = ll5
      end
      end
      end
      File.delete(my_path+"film/"+p+".jdkf#{ppp}")
      k = 0
  when 6
	  input = Input(kara,tools,world,app_path,menu,"Wähle ein Gif","s","","","")
	  t = Input(kara,tools,world,app_path,menu,"Wieviele Bilder pro Sekunde?","i","","","")
	  o = Input(kara,tools,world,app_path,menu,"Wie häufig soll das gif abgespielt werden?","i","","","")
	  ti = (1000/t).round
	  infoOfGif = %x[#{my_path}KaraImage getInfoOfGif  #{my_path}/gif/#{input}.gif]
	  arrayInfoOfGif=infoOfGif.split(";")
	  sGifWidth       = arrayInfoOfGif[0]  # Breite der einzelnen gif -  Framebilddaten
	  sGifHeight      = arrayInfoOfGif[1]  # H�he der einzelnen gif -  Framebilddaten
	  sGifFrameCount  = arrayInfoOfGif[2]  # Anzahl aller Frames pro gif- Bild
	  iGifWidth       = sGifWidth.to_i
	  iGifHeight      = sGifHeight.to_i
	  iGifFrameCount  = sGifFrameCount.to_i
	  # Laden aller Frames
	  gifFrameAllData=Array.new(iGifFrameCount)
	  for frameIndex in 0..(iGifFrameCount-1)
	    sframeIndex = frameIndex.to_s
	    gifFrameAllData[frameIndex]= `"#{my_path}"KaraImage getGifFrame "#{my_path}"/gif/"#{input}".gif #{sframeIndex}`
	  end
	  
	  # Welt anlegen
      world.clearAll
      world.setSize(100,100)
      `"#{my_path}"mouse zoomKara`
      tools.sleep(200)
	  world.setSize(iGifWidth,iGifHeight)
	  for count in 1..o
	   # einen gif -  Frame Durchlauf erzeugen
	   for gifFrameCountIndex in 0..(iGifFrameCount-1)
	    gifFrameData=gifFrameAllData[gifFrameCountIndex]
	    for height in 0..(iGifHeight-1)
	      for width in 0..(iGifWidth-1)
		    if gifFrameData[width+height*iGifWidth].chr == "m"
		      world.setMushroom(width,height,true)
		    elsif gifFrameData[width+height*iGifWidth].chr == "l"
		      world.setLeaf(width,height,true)
		    elsif gifFrameData[width+height*iGifWidth].chr == "t"
		      world.setTree(width,height,true)
		    else
		      world.setMushroom(width,height,false)
	        end
	     end
	   end
	   tools.sleep(ti)
	 end
	 tools.checkState
	end
    k = 0
	  
  end
end
Output(kara, tools, world, app_path, menu, "Drücke ok damit das Programm beendet wird", "", "")
end