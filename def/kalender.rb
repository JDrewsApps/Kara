def kalender(pack)
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
    zz = Input(kara,tools,world,app_path,menu,"gib ein Datum ein oder heute","s","","","")
    z = 1
    xx = 0
    ts = ""
    ms = ""
    js = ""
    a = 6
    ziffer1 = "" 
    ziffer2 = ""
    ziffer3 = ""
    ziffer4 = ""
    ziffer5 = ""
    ziffer6 = ""
    ziffer7 = ""
    hi1 = 1
    hi2 = 0
    if zz == "heute"
      h = Time.now.to_s
      h.each_byte do |hy|
        case hy.chr
          when " ","+"
          hi1 = hi1 + 1
          hi2 = 1
        end
        if (hi1==1) and (hi2==0)
          ziffer1 = ziffer1+hy.chr
        end
        if (hi1==2) and (hi2==0)
          ziffer2 = ziffer2+hy.chr
        end
        if (hi1==3) and (hi2==0)
          ziffer3 = ziffer3+hy.chr
        end
        if (hi1==4) and (hi2==0)
          ziffer4 = ziffer4+hy.chr
        end
        if (hi1==5) and (hi2==0)
          ziffer5 = ziffer5+hy.chr
        end
        if (hi1==6) and (hi2==0)
          ziffer6 = ziffer6+hy.chr
        end
        if (hi1==7) and (hi2==0)
          ziffer7 = ziffer7+hy.chr
        end
        hi2 = 0
      end
      case ziffer1
      when "Mon"
        zr= "montag"
      when "Tue"
        zr = "dienstag"
      when "Wed"
        zr = "mittwoch"
      when "Thu"
        zr = "donnerstag"
      when "Fri"
        zr = "freitag"
      when "Sat"
        zr = "samstag"
      when "Sun"
        zr = "sonntag"
    end
      x = "heute ist #{zr} der #{ziffer3} #{ziffer2} #{ziffer7} und es ist #{ziffer4} Uhr"
      zeigeBuchstaben(pack,x,false)
    end
    if not zz == "heute"
    zz.each_byte do |y|
      case y.chr
        when "."
        z = z + 1
        xx = 1
      end
      if (z==1) and (xx==0)
        ts=ts+y.chr
      end
      if (z==2) and (xx==0)
        ms=ms+y.chr
      end
      if (z==3) and (xx==0)
        js=js+y.chr
      end
      xx = 0
    end
    ti = ts.to_i
    mi = ms.to_i
    ji = js.to_i
    dt = Time.mktime(ji,mi,ti)
    if ji<140
      Output(kara,tools,world,app_path,menu,"kara kennt nur die Jahre ab 140 n.Chr","","")
      k = 1
    end
    if ji>10000
      Output(kara,tools,world,app_path,menu,"kara kennt nur die Jahre bis 10.000 n.Chr","","")
      k = 1
    end
    if k == 0
    w = 0
    ww = 0
    wt = ""
    dt.to_s.each_byte do |wo|
      case wo.chr
        when " "
         w = w + 1
         ww = 1
      end
      if (w==0) and (ww==0)
        wt=wt+wo.chr
      end
    end
    case wt
      when "Mon"
        x= "montag  #{ts}.#{ms}.#{js}"
      when "Tue"
        x = "dienstag  #{ts}.#{ms}.#{js}"
      when "Wed"
        x = "mittwoch  #{ts}.#{ms}.#{js}"
      when "Thu"
        x = "donnerstag  #{ts}.#{ms}.#{js}"
      when "Fri"
        x = "freitag  #{ts}.#{ms}.#{js}"
      when "Sat"
        x = "samstag  #{ts}.#{ms}.#{js}"
      when "Sun"
        x = "sonntag  #{ts}.#{ms}.#{js}"
    end
    zeigeBuchstaben(pack,x,false)
    end
    end
    Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end