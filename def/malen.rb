def malen(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
  def fill4(x, y, world, aFarbe, nFarbe)
    j = 0
    stack = Array.new
    stackt = Array.new
    stack.push(x, y)
    while (stack.empty?) == false 
      y = stack.pop
      x = stack.pop
      stackt.push(x, y)
      if aFarbe == "b"
        if world.isTree(x,y)
          world.setTree(x,y,false)
	      if nFarbe == "b"
	        world.setTree(x,y,true)
	      elsif nFarbe == "k"
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "p"
	        world.setMushroom(x,y,true)
	      elsif nFarbe == "p und k"
	        world.setMushroom(x,y,true)
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "e"
	      end
          if y+1<101
            stack.push(x, y + 1)
          end
          if y-1>1
            stack.push(x, y - 1)
          end
          if x+1<101
            stack.push(x + 1, y)
          end
          if x-1>1
             stack.push(x - 1, y)
          end
        end
      end
      if aFarbe == "k"
        if world.isLeaf(x,y)
          world.setLeaf(x,y,false)
	      if nFarbe == "b"
	        world.setTree(x,y,true)
	      elsif nFarbe == "k"
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "p"
	        world.setMushroom(x,y,true)
	      elsif nFarbe == "p und k"
	        world.setMushroom(x,y,true)
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "e"
	      end
          if y+1<101
            stack.push(x, y + 1)
          end
          if y-1>0
            stack.push(x, y - 1)
          end
          if x+1<101
            stack.push(x + 1, y)
          end
          if x-1>0
             stack.push(x - 1, y)
          end
        end
      end
      if aFarbe == "p"
        if world.isMushroom(x,y)
          world.setMushroom(x,y,false)
	      if nFarbe == "b"
	        world.setTree(x,y,true)
	      elsif nFarbe == "k"
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "p"
	        world.setMushroom(x,y,true)
	      elsif nFarbe == "p und k"
	        world.setMushroom(x,y,true)
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "e"
	      end
          if y+1<101
            stack.push(x, y + 1)
          end
          if y-1>0
            stack.push(x, y - 1)
          end
          if x+1<101
            stack.push(x + 1, y)
          end
          if x-1>0
             stack.push(x - 1, y)
          end
        end
      end
      if aFarbe == "p und k"
        if world.isMushroom(x,y) and world.isLeaf(x,y)
          world.setMushroom(x,y,false)
          world.setLeaf(x,y,false)
	      if nFarbe == "b"
	        world.setTree(x,y,true)
	      elsif nFarbe == "k"
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "p"
	        world.setMushroom(x,y,true)
	      elsif nFarbe == "p und k"
	        world.setMushroom(x,y,true)
	        world.setLeaf(x,y,true)
	      elsif nFarbe == "e"
	      end
          if y+1<101
            stack.push(x, y + 1)
          end
          if y-1>0
            stack.push(x, y - 1)
          end
          if x+1<101
            stack.push(x + 1, y)
          end
          if x-1>0
             stack.push(x - 1, y)
          end
        end
      end
      if aFarbe == "e"
        if world.isEmpty(x,y)
	    if nFarbe == "b"
	      world.setTree(x,y,true)
	    elsif nFarbe == "k"
	      world.setLeaf(x,y,true)
	    elsif nFarbe == "p"
	      world.setMushroom(x,y,true)
	    elsif nFarbe == "p und k"
	      world.setMushroom(x,y,true)
	      world.setLeaf(x,y,true)
	    elsif nFarbe == "e"
	    end
        if y+1<101
            stack.push(x, y + 1)
        end
        if y-1>0
          stack.push(x, y - 1)
        end
        if x+1<101
          stack.push(x + 1, y)
        end
        if x-1>0
           stack.push(x - 1, y)
        end
      end
      end
    end
  end
        

gg = 0
while not gg == 3
  
    case gg
      when 0
        if not menu == "app"
        xx = "^ selber malen~^ bild malen~^ zurück"
        zeigeBuchstaben(pack,xx,true)
        while gg == 0
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                gg = 1
              end
            end
          end
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                gg = 2
              end
            end
          end
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                gg = 3
              end
            end
          end
        end
        else
          ggt = Input(kara,tools,world,app_path,menu,"","s","selber malen/bild malen/zurück","","")
          if ggt == "selber malen"
            gg = 1
          elsif ggt == "bild malen"
            gg = 2
          elsif ggt == "zurück"
            gg = 3
          end
        end
      when 1
        if not menu == "app"
        xx = "^ farbig~^ schwarz weiss~^ zurück"
        zeigeBuchstaben(pack,xx,true)
        while gg == 1
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                gg = 4
              end
            end
          end
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                gg = 5
              end
            end
          end
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                gg = 0
              end
            end
          end
        end
        else
          ggt = Input(kara,tools,world,app_path,menu,"","s","farbig/schwarz weiss/zurück","","")
          if ggt == "farbig"
            gg = 4
          elsif ggt == "schwarz weiss"
            gg = 5
          elsif ggt == "zurück"
            gg = 0
          end
        end
      when 2      
        my_file_name  = Input(kara,tools,world,app_path,menu,"wähle ein Bild","s","","","")
	    mAX_HOEHE_BILD = 1000
	    mAX_BREITE_BILD = 1000
	    sCHWELLE_BILD = 128
	    my_file=my_path+"bilder/"+my_file_name+".bmp"                	       
	    my_fileSize = File.size(my_file)   
	    f = File.open(my_file, 'rb')                                    
	    imgdata=f.read(my_fileSize)    
	    if (imgdata[0].to_i!=66)  and (imgdata[1].to_i !=77)
          Output(kara,tools,world,app_path,menu,"Kara kann nur bmp Bilder malen","","")
	      k = 1
	    end#if 
	    breiteHex = imgdata[21].to_s(16)+imgdata[20].to_s(16)+imgdata[19].to_s(16)+imgdata[18].to_s(16)     #breite       
	    hoeheHex = imgdata[25].to_s(16)+imgdata[24].to_s(16)+imgdata[23].to_s(16)+imgdata[22].to_s(16)      #höhe
	    breite=breiteHex.hex
	    hoehe=hoeheHex.hex
	    if breite >mAX_BREITE_BILD
          Output(kara,tools,world,app_path,menu,"kara kann nur bilder die  >#{mAX_BREITE_BILD} pixel breit sind malen","","")	
	      k = 1
	    end#if
	    if hoehe >mAX_HOEHE_BILD
          Output(kara,tools,world,app_path,menu,"kara kann nur bilder die  >#{mAX_HOEHE_BILD} pixel hoch sind malen}","","")	
	      k = 1
	    end#if
	    compressionHex=imgdata[33].to_s(16)+imgdata[32].to_s(16)+imgdata[31].to_s(16)+imgdata[30] .to_s  (16)
	    compression=compressionHex.hex
	    if (compression!=0)
          Output(kara,tools,world,app_path,menu,"kara kann nur dekomprimierte Bilder malen","","")
	      k = 1
	    end#if
	    farbtiefeHex=imgdata[29].to_s(16)+imgdata[28].to_s(16)
	    farbtiefe=farbtiefeHex.hex
	    if (farbtiefe!=24)
          Output(kara,tools,world,app_path,menu,"kara kann nur Bilder mit einer Farbtiefe von 24 Bit malen","","")
	      k = 1
	    end#if
	    sizeImageHex=imgdata[37].to_s(16)+imgdata[36].to_s(16)+imgdata[35].to_s(16)+imgdata[34 ] .to_s(16)
	    sizeImage=sizeImageHex.hex
	    if sizeImage!=(breite*hoehe*3) 
          Output(kara,tools,world,app_path,menu,"Höhe*Breite ist nicht die Bildgroße kann dadurch etwas anders aussehen!","","")
	      k = 1
	    end#if
	    world.clearAll
	    world.setSize (breite,hoehe)
        `"#{my_path}"mouse zoomKara`
	    imd=Array.new(hoehe*breite);                # neues Array anlegen
	    j=54                                                            # Offset setzen
	    jjj=hoehe*breite-breite                               # Ende des neuen Array festlegen
	    for y in 0..hoehe-1                                     # Höhe 
	      jj=jjj                                                          # Zielindex zuweisen
	      for x in 0..breite-1                                 # Breite 
	        imd[jj]=imgdata[j]                               # Array umkopieren
	        j=j+3                                                   # nur jedes 3te Byte verwenden
	        jj=jj+1                                                  # Zielindex  für eine Zeile  erhöhen
	      end
	      jjj=jjj-breite                                              # nächste Zeile beginnen
	    end
	    floyd = Input(kara,tools,world,app_path,menu,"soll kara das bild mit dem Floyd-Steinberg-Algorithmus malen ","s","ja/nein","","")
	    case floyd
	      when "ja"
	        for yi in 0..hoehe-1                                     # Höhe
	          for xj in 0..breite-1                                 # Breite
	            ci = yi*breite+xj;                                # aktueller Index
	            cc = imd[ci].to_i;                                # aktuelle Farbe
	            if   (cc<sCHWELLE_BILD)                 #  Schwelle  durchführen
	              rc=0
	            else
	              rc=255
	            end
	            err = cc-rc;                                        
	            imd[ci] = rc;                                         
	            if(xj+1<breite) 
	              imd[ci+1] = imd[ci+1] +(err*7)/16                  #wenn ein rechter Pixel vorhanden ist
	            end
	            if(yi+1!=hoehe)   
	              if(xj  >0) 
	                imd[ci+breite-1] =imd[ci+breite-1]+ (err*3)/16   #unter linker Pixel
	              end
	              imd[ci+breite] =imd[ci+breite]+ (err*5)/16           # unterer Pixel
	              if(xj+1<breite) 
	                imd[ci+breite+1] =imd[ci+breite+1] + (err*1)/16   # unterer  rechter Pixel
	              end 
	            end    
	            end
	        end
	      when "nein"
	      else 
            Output(kara,tools,world,app_path,menu,"bitte geben sie beim nächsten mal ja oder nein ein","","")
	        k = 1
	    end
	    jj=0
	    for y in 0..hoehe-1                                     # Höhe
	      for x in 0..breite-1                                  # Breite
	        if ( imd[jj].to_i<sCHWELLE_BILD )  
              world.setLeaf(x,y,true)   # und von oben nach unten bewegen                                     # Blatt nur setzen wenn der Farbwert 
	        end                                                 # kleiner als die Mitte des Farbbereiches liegt
	        jj=jj+1                                             # Arrayindex vergrößern
	      end    
	    end
        Output(kara,tools,world,app_path,menu,"du gehst ein Schritt zurück","","")
      gg = 0
    when 4
      if not menu == "app"
      xx = "^ hintergrund schwarz~^ hintergrund weiss~^ zurück"
        zeigeBuchstaben(pack,xx,true)
        while gg == 4
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                gg = 6
              end
            end
          end
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                gg = 7
              end
            end
          end
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                gg = 1
              end
            end
          end
        end
        else
          ggt = Input(kara,tools,world,app_path,menu,"","s","hintergrund schwarz/hintergrund weiss/zurück","","")
          if ggt == "hintergrund schwarz"
            gg = 6
          elsif ggt == "hintergrund weiss"
            gg = 7
          elsif ggt == "zurück"
            gg = 1
          end
        end
      when 5
        if not menu == "app"
        xx = "^ hintergrund schwarz~^ hintergrund weiss~^ zurück"
        zeigeBuchstaben(pack,xx,true)
        while gg == 5
          for hx in 2..4
            for hy in 3..5
              if world.isMushroom(hx,hy)
                gg = 8
              end
            end
          end
          for hx in 2..4
            for hy in 10..12
              if world.isMushroom(hx,hy)
                gg = 9
              end
            end
          end
          for hx in 2..4
            for hy in 17..19
              if world.isMushroom(hx,hy)
                gg = 1
              end
            end
          end
        end
        else
          ggt = Input(kara,tools,world,app_path,menu,"","s","hintergrund schwarz/hintergrund weiss/zurück","","")
          if ggt == "hintergrund schwarz"
            gg = 8
          elsif ggt == "hintergrund weiss"
            gg = 9
          elsif ggt == "zurück"
            gg = 1
          end
        end
      when 7
        world.clearAll
        if not menu == "app"
		world.setSize(102,112)
        `"#{my_path}"mouse zoomKara`
        else
        world.setSize(102,102)
        `"#{my_path}"mouse zoomKara`
        end
        if not menu == "app"
		world.setLeaf(1,104,true)
		world.setLeaf(1,105,true)
		world.setLeaf(2,103,true)
		world.setLeaf(3,103,true)
		world.setLeaf(2,106,true)
		world.setLeaf(3,106,true)
		world.setLeaf(4,104,true)
		world.setLeaf(4,105,true)
        world.setLeaf(11,104,true)
		world.setLeaf(11,105,true)
		world.setLeaf(12,103,true)
		world.setLeaf(13,103,true)
		world.setLeaf(12,106,true)
		world.setLeaf(13,106,true)
		world.setLeaf(14,104,true)
		world.setLeaf(14,105,true)
        world.setLeaf(21,104,true)
		world.setLeaf(21,105,true)
		world.setLeaf(22,103,true)
		world.setLeaf(23,103,true)
		world.setLeaf(22,106,true)
		world.setLeaf(23,106,true)
		world.setLeaf(24,104,true)
		world.setLeaf(24,105,true)
		world.setMushroom(11,108,true)
        world.setMushroom(12,108,true)
        world.setMushroom(13,108,true)
        world.setMushroom(14,108,true)
        world.setMushroom(11,109,true)
        world.setMushroom(12,109,true)
        world.setMushroom(13,109,true)
        world.setMushroom(14,109,true)
        world.setMushroom(11,110,true)
        world.setMushroom(12,110,true)
        world.setMushroom(13,110,true)
        world.setMushroom(14,110,true)
        world.setMushroom(11,111,true)
        world.setMushroom(12,111,true)
        world.setMushroom(13,111,true)
        world.setMushroom(14,111,true)
        world.setTree(21,108,true)
        world.setTree(22,108,true)
        world.setTree(23,108,true)
        world.setTree(24,108,true)
        world.setTree(21,109,true)
        world.setMushroom(22,109,true)
        world.setMushroom(23,109,true)
        world.setTree(24,109,true)
        world.setTree(21,110,true)
        world.setMushroom(22,110,true)
        world.setMushroom(23,110,true)
        world.setTree(24,110,true)
        world.setTree(21,111,true)
        world.setTree(22,111,true)
        world.setTree(23,111,true)
        world.setTree(24,111,true)
        end
		for i in 0..101
		  world.setTree(i,0,true)
		  world.setTree(0,i,true)
		  world.setTree(i,101,true)
		  world.setTree(101,i,true)
		end
		f = 0
        mode = 1
        hh2 = ""
        hh3 = ""
        if not menu == "app"
		while f == 0
          for i in 12..13
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 2
              end
            end
          end
          for i in 22..23
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 3
              end
            end
          end
          if mode == 2
            s1 = tools.intInput("gib die erste kordinate ein [x]")
            s2 = tools.intInput("gib die erste kordinate ein [y]")
            s3 = tools.intInput("gib die zweite kordinate ein [x]")
            s4 = tools.intInput("gib die zweite kordinate ein [y]")
            sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
            if s1 > 0 and s1 < 101 and s2 > 0 and s2 < 101 and s3 > 0 and s3 < 101 and s4 > 0 and s4 < 101
              if s1>s3
              st1 = 1
              end
              if s1<s3
              st1 = 2
              end
              if s1==s3
              st1 = 2
              end
              if s2>s4
              st2 = 1
              end
              if s2<s4
              st2 = 2
              end
              if s2==s4
              st2 = 2
              end
              if st1 == 1 and st2 == 1
                for i in s3..s1
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 1 and st2 == 2
                for i in s3..s1
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 1
                for i in s1..s3
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 2
                for i in s1..s3
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              mode = 1
            end
          end
          if mode == 3
          s1 = tools.intInput("gib die eine kordinate ein [x]")
          s2 = tools.intInput("gib die eine kordinate ein [y]") 
          sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
          aa = ""
          if world.isMushroom(s1,s2) and world.isLeaf(s1,s2)
            aa = "p und k"
          elsif world.isLeaf(s1,s2)
            aa = "k"
          elsif world.isMushroom(s1,s2)
            aa = "p"
          elsif world.isTree(s1,s2)
            aa = "b"
          else
            aa = "e"
          end
          fill4(s1,s2,world,aa,sg)
          mode = 1
        end
	    for i in 2..3
	      for j in 104..105
	        if world.isMushroom(i,j)
	          f = 1
	        end
	      end
	    end
        end
        end
        if menu == "app"
        y = 0
		while y == 0
			begin
				b = File.new(app_path+"bluetooth_in.txt", "w+")
				b.puts("b%")
				b.close
				y = 1
			rescue
			end
		end
	    x = ""
	    while x == ""
	      z = File.open(app_path+"bluetooth_out.txt", "r").read
	      d = z.strip
	      if not d == "" and d.split("").pop == "$"
            x = d.chop!
            y = 0
	        while y == 0
				begin
					c = File.new(app_path+"bluetooth_out.txt","w+")
					c.puts("")
					c.close
					y = 1
				rescue
				end
			end
	      end
	    end
          y = 0
			for i in 1..100
			  for j in 1..100
			    z = d[y].chr
			    if z == "b"
			      world.setTree(j,i,true)
			    end
			    if z == "r"
			      world.setMushroom(j,i,true)
			    end
			    if z == "g"
			      world.setLeaf(j,i,true)
			    end
			    if z == "y"
			      world.setMushroom(j,i,true)
			      world.setLeaf(j,i,true)
			    end
			    y = y+1
			  end
			end
        end
		x = 66.chr+77.chr+102.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+54.chr+0.chr+0.chr+0.chr+40.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+1.chr+0.chr+24.chr+0.chr+0.chr+0.chr+0.chr+0.chr+48.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr
		i = 101
		while i > 1
		  i -= 1
		   for j in 1..100
		     if world.isMushroom(j,i) and world.isLeaf(j,i)
		       x = x+0.chr+255.chr+255.chr
		     elsif world.isMushroom(j,i)
		       x = x+0.chr+0.chr+255.chr
		     elsif world.isLeaf(j,i)
		       x = x+0.chr+255.chr+0.chr
		     elsif world.isTree(j,i)
		       x = x+255.chr+0.chr+0.chr
		     else
		       x = x+255.chr+255.chr+255.chr
		     end
		   end
		end
	    zz = Input(kara,tools,world,app_path,menu,"gib einen namen für das Bild ein","s","","","")
		y = File.new(my_path+zz+".bmp","w+")
		y.puts(x.chomp)
		y.close
        gg = 4
      when 6
        world.clearAll
        if not menu == "app"
		world.setSize(102,112)
        `"#{my_path}"mouse zoomKara`
        else
        world.setSize(102,102)
        `"#{my_path}"mouse zoomKara`
        end
        if not menu == "app"
		world.setLeaf(1,104,true)
		world.setLeaf(1,105,true)
		world.setLeaf(2,103,true)
		world.setLeaf(3,103,true)
		world.setLeaf(2,106,true)
		world.setLeaf(3,106,true)
		world.setLeaf(4,104,true)
		world.setLeaf(4,105,true)
        world.setLeaf(11,104,true)
		world.setLeaf(11,105,true)
		world.setLeaf(12,103,true)
		world.setLeaf(13,103,true)
		world.setLeaf(12,106,true)
		world.setLeaf(13,106,true)
		world.setLeaf(14,104,true)
		world.setLeaf(14,105,true)
        world.setLeaf(21,104,true)
		world.setLeaf(21,105,true)
		world.setLeaf(22,103,true)
		world.setLeaf(23,103,true)
		world.setLeaf(22,106,true)
		world.setLeaf(23,106,true)
		world.setLeaf(24,104,true)
		world.setLeaf(24,105,true)
		world.setMushroom(11,108,true)
        world.setMushroom(12,108,true)
        world.setMushroom(13,108,true)
        world.setMushroom(14,108,true)
        world.setMushroom(11,109,true)
        world.setMushroom(12,109,true)
        world.setMushroom(13,109,true)
        world.setMushroom(14,109,true)
        world.setMushroom(11,110,true)
        world.setMushroom(12,110,true)
        world.setMushroom(13,110,true)
        world.setMushroom(14,110,true)
        world.setMushroom(11,111,true)
        world.setMushroom(12,111,true)
        world.setMushroom(13,111,true)
        world.setMushroom(14,111,true)
        world.setTree(21,108,true)
        world.setTree(22,108,true)
        world.setTree(23,108,true)
        world.setTree(24,108,true)
        world.setTree(21,109,true)
        world.setMushroom(22,109,true)
        world.setMushroom(23,109,true)
        world.setTree(24,109,true)
        world.setTree(21,110,true)
        world.setMushroom(22,110,true)
        world.setMushroom(23,110,true)
        world.setTree(24,110,true)
        world.setTree(21,111,true)
        world.setTree(22,111,true)
        world.setTree(23,111,true)
        world.setTree(24,111,true)
        end
		for i in 0..101
		  world.setTree(i,0,true)
		  world.setTree(0,i,true)
		  world.setTree(i,101,true)
		  world.setTree(101,i,true)
		end
		f = 0
        mode = 1
        hh2 = ""
        hh3 = ""
        if not menu == "app"
		while f == 0
          for i in 12..13
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 2
              end
            end
          end
          for i in 22..23
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 3
              end
            end
          end
          if mode == 2
            s1 = tools.intInput("gib die erste kordinate ein [x]")
            s2 = tools.intInput("gib die erste kordinate ein [y]")
            s3 = tools.intInput("gib die zweite kordinate ein [x]")
            s4 = tools.intInput("gib die zweite kordinate ein [y]")
            sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
            if s1 > 0 and s1 < 101 and s2 > 0 and s2 < 101 and s3 > 0 and s3 < 101 and s4 > 0 and s4 < 101
              if s1>s3
              st1 = 1
              end
              if s1<s3
              st1 = 2
              end
              if s1==s3
              st1 = 2
              end
              if s2>s4
              st2 = 1
              end
              if s2<s4
              st2 = 2
              end
              if s2==s4
              st2 = 2
              end
              if st1 == 1 and st2 == 1
                for i in s3..s1
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 1 and st2 == 2
                for i in s3..s1
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 1
                for i in s1..s3
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 2
                for i in s1..s3
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              mode = 1
            end
          end
          if mode == 3
          s1 = tools.intInput("gib die eine kordinate ein [x]")
          s2 = tools.intInput("gib die eine kordinate ein [y]") 
          sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
          aa = ""
          if world.isMushroom(s1,s2) and world.isLeaf(s1,s2)
            aa = "p und k"
          elsif world.isLeaf(s1,s2)
            aa = "k"
          elsif world.isMushroom(s1,s2)
            aa = "p"
          elsif world.isTree(s1,s2)
            aa = "b"
          else
            aa = "e"
          end
          fill4(s1,s2,world,aa,sg)
          mode = 1
        end
		  for i in 2..3
		    for j in 104..105
		      if world.isMushroom(i,j)
		        f = 1
		      end
		    end
		  end
		end
        end
        if menu == "app"
        y = 0
		while y == 0
			begin
				b = File.new(app_path+"bluetooth_in.txt", "w+")
				b.puts("b%")
				b.close
				y = 1
			rescue
			end
		end
	    x = ""
	    while x == ""
	      z = File.open(app_path+"bluetooth_out.txt", "r").read
	      d = z.strip
	      if not d == "" and d.split("").pop == "$"
            x = d.chop!
            y = 0
	        while y == 0
				begin
					c = File.new(app_path+"bluetooth_out.txt","w+")
					c.puts("")
					c.close
					y = 1
				rescue
				end
			end
	      end
	    end
          y = 0
			for i in 1..100
			  for j in 1..100
			    z = d[y].chr
			    if z == "b"
			      world.setTree(j,i,true)
			    end
			    if z == "r"
			      world.setMushroom(j,i,true)
			    end
			    if z == "g"
			      world.setLeaf(j,i,true)
			    end
			    if z == "y"
			      world.setMushroom(j,i,true)
			      world.setLeaf(j,i,true)
			    end
			    y = y+1
			  end
			end
        end
        
		x = 66.chr+77.chr+102.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+54.chr+0.chr+0.chr+0.chr+40.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+1.chr+0.chr+24.chr+0.chr+0.chr+0.chr+0.chr+0.chr+48.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr
		i = 101
		while i > 1
		  i -= 1
		   for j in 1..100
		     if world.isMushroom(j,i) and world.isLeaf(j,i)
		       x = x+0.chr+255.chr+255.chr
		     elsif world.isMushroom(j,i)
		       x = x+0.chr+0.chr+255.chr
		     elsif world.isLeaf(j,i)
		       x = x+0.chr+255.chr+0.chr
		     elsif world.isTree(j,i)
		       x = x+255.chr+0.chr+0.chr
		     else
		       x = x+0.chr+0.chr+0.chr
		     end
		   end
		end
        zz = Input(kara,tools,world,app_path,menu,"gib einen namen für das Bild ein","s","","","")
		y = File.new(my_path+zz+".bmp","w+")
		y.puts(x.chomp)
		y.close
        gg = 4
      when 8
        world.clearAll
		if not menu == "app"
		world.setSize(102,112)
        `"#{my_path}"mouse zoomKara`
        else
        world.setSize(102,102)
        `"#{my_path}"mouse zoomKara`
        end
        if not menu == "app"
		world.setLeaf(1,104,true)
		world.setLeaf(1,105,true)
		world.setLeaf(2,103,true)
		world.setLeaf(3,103,true)
		world.setLeaf(2,106,true)
		world.setLeaf(3,106,true)
		world.setLeaf(4,104,true)
		world.setLeaf(4,105,true)
        world.setLeaf(11,104,true)
		world.setLeaf(11,105,true)
		world.setLeaf(12,103,true)
		world.setLeaf(13,103,true)
		world.setLeaf(12,106,true)
		world.setLeaf(13,106,true)
		world.setLeaf(14,104,true)
		world.setLeaf(14,105,true)
        world.setLeaf(21,104,true)
		world.setLeaf(21,105,true)
		world.setLeaf(22,103,true)
		world.setLeaf(23,103,true)
		world.setLeaf(22,106,true)
		world.setLeaf(23,106,true)
		world.setLeaf(24,104,true)
		world.setLeaf(24,105,true)
		world.setMushroom(11,108,true)
        world.setMushroom(12,108,true)
        world.setMushroom(13,108,true)
        world.setMushroom(14,108,true)
        world.setMushroom(11,109,true)
        world.setMushroom(12,109,true)
        world.setMushroom(13,109,true)
        world.setMushroom(14,109,true)
        world.setMushroom(11,110,true)
        world.setMushroom(12,110,true)
        world.setMushroom(13,110,true)
        world.setMushroom(14,110,true)
        world.setMushroom(11,111,true)
        world.setMushroom(12,111,true)
        world.setMushroom(13,111,true)
        world.setMushroom(14,111,true)
        world.setTree(21,108,true)
        world.setTree(22,108,true)
        world.setTree(23,108,true)
        world.setTree(24,108,true)
        world.setTree(21,109,true)
        world.setMushroom(22,109,true)
        world.setMushroom(23,109,true)
        world.setTree(24,109,true)
        world.setTree(21,110,true)
        world.setMushroom(22,110,true)
        world.setMushroom(23,110,true)
        world.setTree(24,110,true)
        world.setTree(21,111,true)
        world.setTree(22,111,true)
        world.setTree(23,111,true)
        world.setTree(24,111,true)
        end
		for i in 0..101
		  world.setTree(i,0,true)
		  world.setTree(0,i,true)
		  world.setTree(i,101,true)
		  world.setTree(101,i,true)
		end
		f = 0
        mode = 1
        hh2 = ""
        hh3 = ""
        if not menu == "app"
		while f == 0
          for i in 12..13
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 2
              end
            end
          end
          for i in 22..23
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 3
              end
            end
          end
          if mode == 2
            s1 = tools.intInput("gib die erste kordinate ein [x]")
            s2 = tools.intInput("gib die erste kordinate ein [y]")
            s3 = tools.intInput("gib die zweite kordinate ein [x]")
            s4 = tools.intInput("gib die zweite kordinate ein [y]")
            sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
            if s1 > 0 and s1 < 101 and s2 > 0 and s2 < 101 and s3 > 0 and s3 < 101 and s4 > 0 and s4 < 101
              if s1>s3
              st1 = 1
              end
              if s1<s3
              st1 = 2
              end
              if s1==s3
              st1 = 2
              end
              if s2>s4
              st2 = 1
              end
              if s2<s4
              st2 = 2
              end
              if s2==s4
              st2 = 2
              end
              if st1 == 1 and st2 == 1
                for i in s3..s1
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 1 and st2 == 2
                for i in s3..s1
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 1
                for i in s1..s3
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 2
                for i in s1..s3
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              mode = 1
            end
          end
          if mode == 3
          s1 = tools.intInput("gib die eine kordinate ein [x]")
          s2 = tools.intInput("gib die eine kordinate ein [y]") 
          sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
          aa = ""
          if world.isMushroom(s1,s2) and world.isLeaf(s1,s2)
            aa = "p und k"
          elsif world.isLeaf(s1,s2)
            aa = "k"
          elsif world.isMushroom(s1,s2)
            aa = "p"
          elsif world.isTree(s1,s2)
            aa = "b"
          else
            aa = "e"
          end
          fill4(s1,s2,world,aa,sg)
          mode = 1
        end
		  for i in 2..3
		    for j in 104..105
		      if world.isMushroom(i,j)
		        f = 1
		      end
		    end
		  end
		end
        end
        if menu == "app"
        y = 0
		while y == 0
			begin
				b = File.new(app_path+"bluetooth_in.txt", "w+")
				b.puts("b%")
				b.close
				y = 1
			rescue
			end
		end
	    x = ""
	    while x == ""
	      z = File.open(app_path+"bluetooth_out.txt", "r").read
	      d = z.strip
	      if not d == "" and d.split("").pop == "$"
            x = d.chop!
            y = 0
	        while y == 0
				begin
					c = File.new(app_path+"bluetooth_out.txt","w+")
					c.puts("")
					c.close
					y = 1
				rescue
				end
			end
	      end
	    end
          y = 0
			for i in 1..100
			  for j in 1..100
			    z = d[y].chr
			    if z == "b"
			      world.setTree(j,i,true)
			    end
			    if z == "r"
			      world.setMushroom(j,i,true)
			    end
			    if z == "g"
			      world.setLeaf(j,i,true)
			    end
			    if z == "y"
			      world.setMushroom(j,i,true)
			      world.setLeaf(j,i,true)
			    end
			    y = y+1
			  end
			end
        end
		x = 66.chr+77.chr+102.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+54.chr+0.chr+0.chr+0.chr+40.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+1.chr+0.chr+24.chr+0.chr+0.chr+0.chr+0.chr+0.chr+48.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr
		i = 101
		while i > 1
		  i -= 1
		   for j in 1..100
		     if world.isMushroom(j,i) and world.isLeaf(j,i)
		       x = x+255.chr+255.chr+255.chr
		     elsif world.isMushroom(j,i)
		       x = x+255.chr+255.chr+255.chr
		     elsif world.isLeaf(j,i)
		       x = x+255.chr+255.chr+255.chr
		     elsif world.isTree(j,i)
		       x = x+255.chr+255.chr+255.chr
		     else
		       x = x+0.chr+0.chr+0.chr
		     end
		   end
		end
        zz = Input(kara,tools,world,app_path,menu,"gib einen namen für das Bild ein","s","","","")
		y = File.new(my_path+zz+".bmp","w+")
		y.puts(x.chomp)
		y.close
        gg = 5
      when 9
        world.clearAll
		if not menu == "app"
		world.setSize(102,112)
        `"#{my_path}"mouse zoomKara`
        else
        world.setSize(102,102)
        `"#{my_path}"mouse zoomKara`
        end
        if not menu == "app"
		world.setLeaf(1,104,true)
		world.setLeaf(1,105,true)
		world.setLeaf(2,103,true)
		world.setLeaf(3,103,true)
		world.setLeaf(2,106,true)
		world.setLeaf(3,106,true)
		world.setLeaf(4,104,true)
		world.setLeaf(4,105,true)
        world.setLeaf(11,104,true)
		world.setLeaf(11,105,true)
		world.setLeaf(12,103,true)
		world.setLeaf(13,103,true)
		world.setLeaf(12,106,true)
		world.setLeaf(13,106,true)
		world.setLeaf(14,104,true)
		world.setLeaf(14,105,true)
        world.setLeaf(21,104,true)
		world.setLeaf(21,105,true)
		world.setLeaf(22,103,true)
		world.setLeaf(23,103,true)
		world.setLeaf(22,106,true)
		world.setLeaf(23,106,true)
		world.setLeaf(24,104,true)
		world.setLeaf(24,105,true)
		world.setMushroom(11,108,true)
        world.setMushroom(12,108,true)
        world.setMushroom(13,108,true)
        world.setMushroom(14,108,true)
        world.setMushroom(11,109,true)
        world.setMushroom(12,109,true)
        world.setMushroom(13,109,true)
        world.setMushroom(14,109,true)
        world.setMushroom(11,110,true)
        world.setMushroom(12,110,true)
        world.setMushroom(13,110,true)
        world.setMushroom(14,110,true)
        world.setMushroom(11,111,true)
        world.setMushroom(12,111,true)
        world.setMushroom(13,111,true)
        world.setMushroom(14,111,true)
        world.setTree(21,108,true)
        world.setTree(22,108,true)
        world.setTree(23,108,true)
        world.setTree(24,108,true)
        world.setTree(21,109,true)
        world.setMushroom(22,109,true)
        world.setMushroom(23,109,true)
        world.setTree(24,109,true)
        world.setTree(21,110,true)
        world.setMushroom(22,110,true)
        world.setMushroom(23,110,true)
        world.setTree(24,110,true)
        world.setTree(21,111,true)
        world.setTree(22,111,true)
        world.setTree(23,111,true)
        world.setTree(24,111,true)
        end
		for i in 0..101
		  world.setTree(i,0,true)
		  world.setTree(0,i,true)
		  world.setTree(i,101,true)
		  world.setTree(101,i,true)
		end
		f = 0
        mode = 1
        hh2 = ""
        hh3 = ""
        if not menu == "app"
		while f == 0
          for i in 12..13
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 2
              end
            end
          end
          for i in 22..23
            for j in 104..105
              if world.isMushroom(i,j)
                world.setMushroom(i,j,false)
                mode = 3
              end
            end
          end
          if mode == 2
            s1 = tools.intInput("gib die erste kordinate ein [x]")
            s2 = tools.intInput("gib die erste kordinate ein [y]")
            s3 = tools.intInput("gib die zweite kordinate ein [x]")
            s4 = tools.intInput("gib die zweite kordinate ein [y]")
            sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
            if s1 > 0 and s1 < 101 and s2 > 0 and s2 < 101 and s3 > 0 and s3 < 101 and s4 > 0 and s4 < 101
              if s1>s3
              st1 = 1
              end
              if s1<s3
              st1 = 2
              end
              if s1==s3
              st1 = 2
              end
              if s2>s4
              st2 = 1
              end
              if s2<s4
              st2 = 2
              end
              if s2==s4
              st2 = 2
              end
              if st1 == 1 and st2 == 1
                for i in s3..s1
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 1 and st2 == 2
                for i in s3..s1
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 1
                for i in s1..s3
                  for j in s4..s2
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              if st1 == 2 and st2 == 2
                for i in s1..s3
                  for j in s2..s4
                    world.setTree(i,j,false)
                    world.setLeaf(i,j,false)
                    world.setMushroom(i,j,false)
                    if sg == "p"
                      world.setMushroom(i,j,true)
                    elsif sg == "b"
                      world.setTree(i,j,true)
                    elsif sg == "k"
                      world.setLeaf(i,j,true)
                    elsif sg == "p und k"
                      world.setLeaf(i,j,true)
                      world.setMushroom(i,j,true)
                    elsif sg == "e"
                      world.setLeaf(i,j,false)
                      world.setMushroom(i,j,false)
                      world.setTree(i,j,false)
                    end
                  end
                end
              end
              mode = 1
            end
          end
          if mode == 3
          s1 = tools.intInput("gib die eine kordinate ein [x]")
          s2 = tools.intInput("gib die eine kordinate ein [y]") 
          sg = tools.stringInput("was willst du setzen [b/p/k/p und k/e]")
          aa = ""
          if world.isMushroom(s1,s2) and world.isLeaf(s1,s2)
            aa = "p und k"
          elsif world.isLeaf(s1,s2)
            aa = "k"
          elsif world.isMushroom(s1,s2)
            aa = "p"
          elsif world.isTree(s1,s2)
            aa = "b"
          else
            aa = "e"
          end
          fill4(s1,s2,world,aa,sg)
          mode = 1
        end
		  for i in 2..3
		    for j in 104..105
		      if world.isMushroom(i,j)
		        f = 1
		      end
		    end
		  end
		end
        end
        if menu == "app"
        y = 0
		while y == 0
			begin
				b = File.new(app_path+"bluetooth_in.txt", "w+")
				b.puts("b%")
				b.close
				y = 1
			rescue
			end
		end
	    x = ""
	    while x == ""
	      z = File.open(app_path+"bluetooth_out.txt", "r").read
	      d = z.strip
	      if not d == "" and d.split("").pop == "$"
            x = d.chop!
            y = 0
	        while y == 0
				begin
					c = File.new(app_path+"bluetooth_out.txt","w+")
					c.puts("")
					c.close
					y = 1
				rescue
				end
			end
	      end
	    end
          y = 0
			for i in 1..100
			  for j in 1..100
			    z = d[y].chr
			    if z == "b"
			      world.setTree(j,i,true)
			    end
			    if z == "r"
			      world.setMushroom(j,i,true)
			    end
			    if z == "g"
			      world.setLeaf(j,i,true)
			    end
			    if z == "y"
			      world.setMushroom(j,i,true)
			      world.setLeaf(j,i,true)
			    end
			    y = y+1
			  end
			end
        end
		x = 66.chr+77.chr+102.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+54.chr+0.chr+0.chr+0.chr+40.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+100.chr+0.chr+0.chr+0.chr+1.chr+0.chr+24.chr+0.chr+0.chr+0.chr+0.chr+0.chr+48.chr+117.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr+0.chr
		i = 101
		while i > 1
		  i -= 1
		   for j in 1..100
		     if world.isMushroom(j,i) and world.isLeaf(j,i)
		       x = x+0.chr+0.chr+0.chr
		     elsif world.isMushroom(j,i)
		       x = x+0.chr+0.chr+0.chr
		     elsif world.isLeaf(j,i)
		       x = x+0.chr+0.chr+0.chr
		     elsif world.isTree(j,i)
		       x = x+0.chr+0.chr+0.chr
		     else
		       x = x+255.chr+255.chr+255.chr
		     end
		   end
		end
        zz = Input(kara,tools,world,app_path,menu,"gib einen namen für das Bild ein","s","","","")
		y = File.new(my_path+zz+".bmp","w+")
		y.puts(x.chomp)
		y.close
        gg = 5
    end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","") 
end