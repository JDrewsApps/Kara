def klavier(pack)
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
      xx = "^ noten spielen~^ lied schreiben~^ lied spielen~^ lied löschen~^ ende"
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
              k = 5
            end
          end
        end
      end
    else
    ap1 = Input(kara,tools,world,app_path,menu,"","s","Noten spielen/Lied schreiben/Lied spielen/Lied löschen/ende","","")
    if ap1 == "Noten spielen"
      k = 1
    elsif ap1 == "Lied schreiben"
      k = 2
    elsif ap1 == "Lied spielen"
      k = 3
    elsif ap1 == "Lied löschen"
      k = 4
    elsif ap1 == "ende"
      k = 5
    end
    end
    when 1
      x = Input(kara,tools,world,app_path,menu,"gib eine note mit lenge ein","s","","","")
      y = 0
      x.each_byte do |z|
        y = y+1
      end
      e = 0
      xyz = "PowerShell.exe -Command "
      xyz2 = "PowerShell.exe -Command "
      xyz3 = "PowerShell.exe -Command "
      xyz4 = "PowerShell.exe -Command "
      xyz5 = "PowerShell.exe -Command "
      xyz6 = "PowerShell.exe -Command "
      xyz7 = "PowerShell.exe -Command "
      xyz8 = "PowerShell.exe -Command "
      n = 1
      for i in 1..(y/4)
        e1 = x[e].chr
        e2 = x[e+1].chr
        e3 = x[e+2].chr
        e4 = x[e+3].chr
        m = e1+e2+e3
        l = 0
        case m
          when "C-2"; l = 16.3516
          when "D-2"; l = 18.4540
          when "E-2"; l = 20.6017
          when "F-2"; l = 21.8268
          when "G-2"; l = 24.4997
          when "A-2"; l = 27.5000
          when "H-2"; l = 30.8677
          when "C-1"; l = 32.7032
          when "D-1"; l = 36.7081
          when "E-1"; l = 41.2034
          when "F-1"; l = 43.6535
          when "G-1"; l = 48.9994
          when "A-1"; l = 55.0000
          when "H-1"; l = 61.7354
          when "C-0"; l = 65.4064
          when "D-0"; l = 73.4162
          when "E-0"; l = 82.4069
          when "F-0"; l = 87.3071
          when "G-0"; l = 97.9989
          when "A-0"; l = 110.000
          when "H-0"; l = 123.471
          when "c-0"; l = 130.813
          when "d-0"; l = 146.832
          when "e-0"; l = 164.814
          when "f-0"; l = 174.614
          when "g-0"; l = 195.998
          when "a-0"; l = 220.000
          when "h-0"; l = 246.942
          when "c-1"; l = 261.626
          when "d-1"; l = 293.665
          when "e-1"; l = 329.628
          when "f-1"; l = 349.228
          when "g-1"; l = 391.995
          when "a-1"; l = 440.000
          when "h-1"; l = 493.883
          when "c-2"; l = 523.251
          when "d-2"; l = 587.330
          when "e-2"; l = 659.255
          when "f-2"; l = 698.456
          when "g-2"; l = 783.991
          when "a-2"; l = 880.000
          when "h-2"; l = 987.767
          when "c-3"; l = 1046.50
          when "d-3"; l = 1174.66
          when "e-3"; l = 1318.51
          when "f-3"; l = 1396.91
          when "g-3"; l = 1567.98
          when "a-3"; l = 1760.00
          when "h-3"; l = 1975.53
          when "c-4"; l = 2093.00
          when "d-4"; l = 2349.32
          when "e-4"; l = 2637.02
          when "f-4"; l = 2793.83
          when "g-4"; l = 3135.96
          when "a-4"; l = 3520.00
          when "h-4"; l = 3951.07   
          when "C#2"; l = 17.3239
          when "D#2"; l = 19.4454
          when "E#2"; l = 21.8268
          when "F#2"; l = 23.1247
          when "G#2"; l = 25.9565
          when "A#2"; l = 29.1352
          when "H#2"; l = 32.7032
          when "C#1"; l = 34.6478
          when "D#1"; l = 38.8909
          when "E#1"; l = 43.6535
          when "F#1"; l = 46.2493
          when "G#1"; l = 51.9131
          when "A#1"; l = 58.2705
          when "H#1"; l = 65.4064
          when "C#0"; l = 69.2957
          when "D#0"; l = 77.7817
          when "E#0"; l = 87.3071
          when "F#0"; l = 92.4986
          when "G#0"; l = 103.826
          when "A#0"; l = 116.541
          when "H#0"; l = 130.813
          when "c#0"; l = 138.591
          when "d#0"; l = 155.563
          when "e#0"; l = 174.614
          when "f#0"; l = 184.997
          when "g#0"; l = 207.652
          when "a#0"; l = 233.082
          when "h#0"; l = 261.626
          when "c#1"; l = 277.183
          when "d#1"; l = 311.127
          when "e#1"; l = 349.228
          when "f#1"; l = 369.994
          when "g#1"; l = 415.305
          when "a#1"; l = 466.164
          when "h#1"; l = 523.251
          when "c#2"; l = 554.365
          when "d#2"; l = 622.254
          when "e#2"; l = 698.456
          when "f#2"; l = 739.989
          when "g#2"; l = 830.609
          when "a#2"; l = 932.328
          when "h#2"; l = 1046.50
          when "c#3"; l = 1108.73
          when "d#3"; l = 1244.51
          when "e#3"; l = 1396.91
          when "f#3"; l = 1479.98
          when "g#3"; l = 1661.22
          when "a#3"; l = 1864.66
          when "h#3"; l = 2093.00
          when "c#4"; l = 2217.46
          when "d#4"; l = 2489.02
          when "e#4"; l = 2793.83
          when "f#4"; l = 2959.96
          when "g#4"; l = 3322.44
          when "a#4"; l = 3729.31
          when "h#4"; l = 4186.01
          when "Db2"; l = 17.3239
          when "Eb2"; l = 19.4454
          when "Fb2"; l = 20.6017
          when "Gb2"; l = 23.1247
          when "Ab2"; l = 25.9565
          when "Hb2"; l = 29.1352
          when "Cb1"; l = 30.8677
          when "Db1"; l = 34.6478
          when "Eb1"; l = 38.8909
          when "Fb1"; l = 41.2034
          when "Gb1"; l = 46.2493
          when "Ab1"; l = 51.9131
          when "Hb1"; l = 58.2705
          when "Cb0"; l = 61.7354
          when "Db0"; l = 69.2957
          when "Eb0"; l = 77.7817
          when "Fb0"; l = 82.4069
          when "Gb0"; l = 92.4986
          when "Ab0"; l = 103.826
          when "Hb0"; l = 116.541
          when "cb0"; l = 123.471
          when "db0"; l = 138.591
          when "eb0"; l = 155.563
          when "fb0"; l = 164.814
          when "gb0"; l = 184.997
          when "ab0"; l = 207.652
          when "hb0"; l = 233.082
          when "cb1"; l = 246.626
          when "db1"; l = 277.183
          when "eb1"; l = 311.127
          when "fb1"; l = 329.628
          when "gb1"; l = 369.994
          when "ab1"; l = 415.305
          when "hb1"; l = 466.164
          when "cb2"; l = 493.883
          when "db2"; l = 554.365
          when "eb2"; l = 622.254
          when "fb2"; l = 659.255
          when "gb2"; l = 739.989
          when "ab2"; l = 830.609
          when "hb2"; l = 932.328
          when "cb3"; l = 987.767
          when "db3"; l = 1108.73
          when "eb3"; l = 1244.51
          when "fb3"; l = 1318.51
          when "gb3"; l = 1479.98
          when "ab3"; l = 1661.22
          when "hb3"; l = 1864.66
          when "cb4"; l = 1975.53
          when "db4"; l = 2217.46
          when "eb4"; l = 2489.02
          when "fb4"; l = 2637.02
          when "gb4"; l = 2959.96
          when "ab4"; l = 3322.44
          when "hb4"; l = 3729.31
          when "~~~"; n = n+1
        end
        if not e4 == "~"
          le = e4.to_i*125
        else
          le = 62.5
        end
        if n == 1
          if not m == "---"
            if not m == "~~~"
              xyz = xyz+"[console]::beep(#{l},#{le});"
            end
          else
            xyz = xyz+"Start-Sleep -m #{le};"
          end
        elsif n == 2
          if not m == "---"
            if not m == "~~~"
              xyz2 = xyz2+"[console]::beep(#{l},#{le});"
            end
          else
            xyz2 = xyz2+"Start-Sleep -m #{le};"
          end
        elsif n == 3
          if not m == "---"
            if not m == "~~~"
              xyz3 = xyz3+"[console]::beep(#{l},#{le});"
            end
          else
            xyz3 = xyz3+"Start-Sleep -m #{le};"
          end
        elsif n == 4
          if not m == "---"
            if not m == "~~~"
              xyz4 = xyz4+"[console]::beep(#{l},#{le});"
            end
          else
            xyz4 = xyz4+"Start-Sleep -m #{le};"
          end
        elsif n == 5
          if not m == "---"
            if not m == "~~~"
              xyz5 = xyz5+"[console]::beep(#{l},#{le});"
            end
          else
            xyz5 = xyz5+"Start-Sleep -m #{le};"
          end
        elsif n == 6
          if not m == "---"
            if not m == "~~~"
              xyz6 = xyz6+"[console]::beep(#{l},#{le});"
            end
          else
            xyz6 = xyz6+"Start-Sleep -m #{le};"
          end
        elsif n == 7
          if not m == "---"
            if not m == "~~~"
              xyz7 = xyz7+"[console]::beep(#{l},#{le});"
            end
          else
            xyz7 = xyz7+"Start-Sleep -m #{le};"
          end
        elsif n == 8
          if not m == "---"
            if not m == "~~~"
              xyz8 = xyz8+"[console]::beep(#{l},#{le});"
            end
          else
            xyz8 = xyz8+"Start-Sleep -m #{le};"
          end
        end
      e = e+4
      end
      xyz = xyz+"\nexit"
      xyz2 = xyz2+"\nexit"
      xyz3 = xyz3+"\nexit"
      xyz4 = xyz4+"\nexit"
      xyz5 = xyz5+"\nexit"
      xyz6 = xyz6+"\nexit"
      xyz7 = xyz7+"\nexit"
      xyz8 = xyz8+"\nexit"
      
      x = system("#{xyz}")
      x = system("#{xyz2}")
      x = system("#{xyz3}")
      x = system("#{xyz4}")
      x = system("#{xyz5}")
      x = system("#{xyz6}")
      x = system("#{xyz7}")
      x = system("#{xyz8}")
      k = 0
    when 2
      Output(kara,tools,world,app_path,menu,"achte darauf das alles richtig eingegeben ist sonst gibt es beim abspielen probleme","","")
      l = 0
      Dir.glob(my_path+"ton/*.jdkt") do |rb_file|
        l = l+1
      end
      if not l > 9
        p = Input(kara,tools,world,app_path,menu,"gib einen namen ein","s","","","")
        pp = Input(kara,tools,world,app_path,menu,"gib die noten ein","s","","","")
        y = File.new(my_path+"ton/"+p+".jdkt","w+")
        y.puts(pp)
        y.close
      else
        Output(kara,tools,world,app_path,menu,"Du kannst nur maximal 10 Lieder haben","","")
      end
      k = 0
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
      Dir.glob(my_path+"ton/*.jdkt") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkt")
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
        Output(kara,tools,world,app_path,menu,"du hast keinen Lied das du abspielen kannst","","")
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
      note = File.open(my_path+"ton/"+p+".jdkt","r").read
      x = note
      y = 0
      x.each_byte do |z|
        y = y+1
      end
      e = 0
      xyz = "PowerShell.exe -Command "
      xyz2 = "PowerShell.exe -Command "
      xyz3 = "PowerShell.exe -Command "
      xyz4 = "PowerShell.exe -Command "
      xyz5 = "PowerShell.exe -Command "
      xyz6 = "PowerShell.exe -Command "
      xyz7 = "PowerShell.exe -Command "
      xyz8 = "PowerShell.exe -Command "
      n = 1
      for i in 1..(y/4)
        e1 = x[e].chr
        e2 = x[e+1].chr
        e3 = x[e+2].chr
        e4 = x[e+3].chr
        m = e1+e2+e3
        l = 0
        case m
          when "C-2"; l = 16.3516
          when "D-2"; l = 18.4540
          when "E-2"; l = 20.6017
          when "F-2"; l = 21.8268
          when "G-2"; l = 24.4997
          when "A-2"; l = 27.5000
          when "H-2"; l = 30.8677
          when "C-1"; l = 32.7032
          when "D-1"; l = 36.7081
          when "E-1"; l = 41.2034
          when "F-1"; l = 43.6535
          when "G-1"; l = 48.9994
          when "A-1"; l = 55.0000
          when "H-1"; l = 61.7354
          when "C-0"; l = 65.4064
          when "D-0"; l = 73.4162
          when "E-0"; l = 82.4069
          when "F-0"; l = 87.3071
          when "G-0"; l = 97.9989
          when "A-0"; l = 110.000
          when "H-0"; l = 123.471
          when "c-0"; l = 130.813
          when "d-0"; l = 146.832
          when "e-0"; l = 164.814
          when "f-0"; l = 174.614
          when "g-0"; l = 195.998
          when "a-0"; l = 220.000
          when "h-0"; l = 246.942
          when "c-1"; l = 261.626
          when "d-1"; l = 293.665
          when "e-1"; l = 329.628
          when "f-1"; l = 349.228
          when "g-1"; l = 391.995
          when "a-1"; l = 440.000
          when "h-1"; l = 493.883
          when "c-2"; l = 523.251
          when "d-2"; l = 587.330
          when "e-2"; l = 659.255
          when "f-2"; l = 698.456
          when "g-2"; l = 783.991
          when "a-2"; l = 880.000
          when "h-2"; l = 987.767
          when "c-3"; l = 1046.50
          when "d-3"; l = 1174.66
          when "e-3"; l = 1318.51
          when "f-3"; l = 1396.91
          when "g-3"; l = 1567.98
          when "a-3"; l = 1760.00
          when "h-3"; l = 1975.53
          when "c-4"; l = 2093.00
          when "d-4"; l = 2349.32
          when "e-4"; l = 2637.02
          when "f-4"; l = 2793.83
          when "g-4"; l = 3135.96
          when "a-4"; l = 3520.00
          when "h-4"; l = 3951.07   
          when "C#2"; l = 17.3239
          when "D#2"; l = 19.4454
          when "E#2"; l = 21.8268
          when "F#2"; l = 23.1247
          when "G#2"; l = 25.9565
          when "A#2"; l = 29.1352
          when "H#2"; l = 32.7032
          when "C#1"; l = 34.6478
          when "D#1"; l = 38.8909
          when "E#1"; l = 43.6535
          when "F#1"; l = 46.2493
          when "G#1"; l = 51.9131
          when "A#1"; l = 58.2705
          when "H#1"; l = 65.4064
          when "C#0"; l = 69.2957
          when "D#0"; l = 77.7817
          when "E#0"; l = 87.3071
          when "F#0"; l = 92.4986
          when "G#0"; l = 103.826
          when "A#0"; l = 116.541
          when "H#0"; l = 130.813
          when "c#0"; l = 138.591
          when "d#0"; l = 155.563
          when "e#0"; l = 174.614
          when "f#0"; l = 184.997
          when "g#0"; l = 207.652
          when "a#0"; l = 233.082
          when "h#0"; l = 261.626
          when "c#1"; l = 277.183
          when "d#1"; l = 311.127
          when "e#1"; l = 349.228
          when "f#1"; l = 369.994
          when "g#1"; l = 415.305
          when "a#1"; l = 466.164
          when "h#1"; l = 523.251
          when "c#2"; l = 554.365
          when "d#2"; l = 622.254
          when "e#2"; l = 698.456
          when "f#2"; l = 739.989
          when "g#2"; l = 830.609
          when "a#2"; l = 932.328
          when "h#2"; l = 1046.50
          when "c#3"; l = 1108.73
          when "d#3"; l = 1244.51
          when "e#3"; l = 1396.91
          when "f#3"; l = 1479.98
          when "g#3"; l = 1661.22
          when "a#3"; l = 1864.66
          when "h#3"; l = 2093.00
          when "c#4"; l = 2217.46
          when "d#4"; l = 2489.02
          when "e#4"; l = 2793.83
          when "f#4"; l = 2959.96
          when "g#4"; l = 3322.44
          when "a#4"; l = 3729.31
          when "h#4"; l = 4186.01
          when "Db2"; l = 17.3239
          when "Eb2"; l = 19.4454
          when "Fb2"; l = 20.6017
          when "Gb2"; l = 23.1247
          when "Ab2"; l = 25.9565
          when "Hb2"; l = 29.1352
          when "Cb1"; l = 30.8677
          when "Db1"; l = 34.6478
          when "Eb1"; l = 38.8909
          when "Fb1"; l = 41.2034
          when "Gb1"; l = 46.2493
          when "Ab1"; l = 51.9131
          when "Hb1"; l = 58.2705
          when "Cb0"; l = 61.7354
          when "Db0"; l = 69.2957
          when "Eb0"; l = 77.7817
          when "Fb0"; l = 82.4069
          when "Gb0"; l = 92.4986
          when "Ab0"; l = 103.826
          when "Hb0"; l = 116.541
          when "cb0"; l = 123.471
          when "db0"; l = 138.591
          when "eb0"; l = 155.563
          when "fb0"; l = 164.814
          when "gb0"; l = 184.997
          when "ab0"; l = 207.652
          when "hb0"; l = 233.082
          when "cb1"; l = 246.626
          when "db1"; l = 277.183
          when "eb1"; l = 311.127
          when "fb1"; l = 329.628
          when "gb1"; l = 369.994
          when "ab1"; l = 415.305
          when "hb1"; l = 466.164
          when "cb2"; l = 493.883
          when "db2"; l = 554.365
          when "eb2"; l = 622.254
          when "fb2"; l = 659.255
          when "gb2"; l = 739.989
          when "ab2"; l = 830.609
          when "hb2"; l = 932.328
          when "cb3"; l = 987.767
          when "db3"; l = 1108.73
          when "eb3"; l = 1244.51
          when "fb3"; l = 1318.51
          when "gb3"; l = 1479.98
          when "ab3"; l = 1661.22
          when "hb3"; l = 1864.66
          when "cb4"; l = 1975.53
          when "db4"; l = 2217.46
          when "eb4"; l = 2489.02
          when "fb4"; l = 2637.02
          when "gb4"; l = 2959.96
          when "ab4"; l = 3322.44
          when "hb4"; l = 3729.31
          when "~~~"; n = n+1
        end
        if not e4 == "~"
          le = e4.to_i*125
        else
          le = 62.5
        end
        if n == 1
          if not m == "---"
            if not m == "~~~"
              xyz = xyz+"[console]::beep(#{l},#{le});"
            end
          else
            xyz = xyz+"Start-Sleep -m #{le};"
          end
        elsif n == 2
          if not m == "---"
            if not m == "~~~"
              xyz2 = xyz2+"[console]::beep(#{l},#{le});"
            end
          else
            xyz2 = xyz2+"Start-Sleep -m #{le};"
          end
        elsif n == 3
          if not m == "---"
            if not m == "~~~"
              xyz3 = xyz3+"[console]::beep(#{l},#{le});"
            end
          else
            xyz3 = xyz3+"Start-Sleep -m #{le};"
          end
        elsif n == 4
          if not m == "---"
            if not m == "~~~"
              xyz4 = xyz4+"[console]::beep(#{l},#{le});"
            end
          else
            xyz4 = xyz4+"Start-Sleep -m #{le};"
          end
        elsif n == 5
          if not m == "---"
            if not m == "~~~"
              xyz5 = xyz5+"[console]::beep(#{l},#{le});"
            end
          else
            xyz5 = xyz5+"Start-Sleep -m #{le};"
          end
        elsif n == 6
          if not m == "---"
            if not m == "~~~"
              xyz6 = xyz6+"[console]::beep(#{l},#{le});"
            end
          else
            xyz6 = xyz6+"Start-Sleep -m #{le};"
          end
        elsif n == 7
          if not m == "---"
            if not m == "~~~"
              xyz7 = xyz7+"[console]::beep(#{l},#{le});"
            end
          else
            xyz7 = xyz7+"Start-Sleep -m #{le};"
          end
        elsif n == 8
          if not m == "---"
            if not m == "~~~"
              xyz8 = xyz8+"[console]::beep(#{l},#{le});"
            end
          else
            xyz8 = xyz8+"Start-Sleep -m #{le};"
          end
        end
      e = e+4
      end
      xyz = xyz+"\nexit"
      xyz2 = xyz2+"\nexit"
      xyz3 = xyz3+"\nexit"
      xyz4 = xyz4+"\nexit"
      xyz5 = xyz5+"\nexit"
      xyz6 = xyz6+"\nexit"
      xyz7 = xyz7+"\nexit"
      xyz8 = xyz8+"\nexit"
      x = system("#{xyz}")
      x = system("#{xyz2}")
      x = system("#{xyz3}")
      x = system("#{xyz4}")
      x = system("#{xyz5}")
      x = system("#{xyz6}")
      x = system("#{xyz7}")
      x = system("#{xyz8}")
      end
      k = 0
    when 4
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
      Dir.glob(my_path+"ton/*.jdkt") do |rb_file|
        l = l+1
        r = File.basename(rb_file, ".jdkt")
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
        Output(kara,tools,world,app_path,menu,"du hast keine Lied das du löschen kannst","","")
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
      File.delete(my_path+"ton/"+p+".jdkt")
      end
      k = 0
  end
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end   