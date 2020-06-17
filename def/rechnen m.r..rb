def rechnen_m_r(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
x = Input(kara,tools,world,app_path,menu,"gib eine Rechnung ein","s","","","")

op1=""
op2=""
k = 0
operation=0
str_len=0
x.each_byte do |y|
  str_len=str_len+1
end#DO
if str_len>7
  Output(kara,tools,world,app_path,menu,"Zahlen zu groß","","")
  k = 1
end#IF
x.each_byte do |y| 
  operation_aktiv=0
  case (y.chr)	
    when "+"
      operation=1
      operation_aktiv=1
    when "-"
      operation=2
      operation_aktiv=1 
    when "*"
      operation=3
      operation_aktiv=1		
    when "/"
      operation=4
      operation_aktiv=1
      Output(kara,tools,world,app_path,menu,"nur +,-,* sind zugelassen","","")
      k = 1
    when "^"
      operation=5
      operation_aktiv=1
      Output(kara,tools,world,app_path,menu,"nur +,-,* sind zugelassen","","")
      k = 1
    when "#"
      operation=6
      operation_aktiv=1
      Output(kara,tools,world,app_path,menu,"nur +,-,* sind zugelassen","","")
      k = 1
  end#CASE 
  if operation==0 and operation_aktiv==0
    op1=op1+y.chr
  else
    if operation_aktiv==0
   	  op2=op2+y.chr
    end#IF
  end#IF
   end#DO
if k == 0
  case (operation)
when 1
  erg="+"
when 2
  erg="-"
when 3
  erg="*"
when 4
  erg="/"
when 5
  erg="**"
when 6
  erg="sqrt"
end#case
if erg == "+"
e = " |"
z1 = 0
z2 = 0
op1.each_byte do |y1|
  z1 = z1+1
end
op2.each_byte do |y2|
  z2 = z2+1
end
if z2 -z1 > 0
zz1 = z2-z1
zz1.times do
  e = e+" |"
end
end
e = e+op1+"~+"
if z1 -z2 > 0
zz2 = z1-z2
zz2.times do
  e = e+" |"
end
end
if (z1+1)>(z2+1)
e = e+op2+"~"
  z1.times do
    e = e+"_"
  end
  e = e+"_~"

elsif (z1+1)<(z2+1)
e = e+op2+"~"
  z2.times do
    e = e+"_"
  end
  e = e+"_~"
else
  e = e+op2+"~"
  z2.times do
    e = e+"_"
  end
  e = e+"_~"
end
er = op1.to_i+op2.to_i
z3 = 0
er.to_s.each_byte do |y3|
  z3 = z3+1
end
if (z3>z2 and z3>z1) and not (z3 < z2)
  e = e +er.to_s
elsif z3<z2
  (z1-z3+1).times do
    e = e+" |"
  end
  e = e+" |"+er.to_s
else
  e = e+" |"+er.to_s
end

end
if erg == "-"
  e = " |"
  z1 = 0
  z2 = 0
  op1.each_byte do |y1|
    z1 = z1+1
  end
  op2.each_byte do |y2|
    z2 = z2+1
  end
  if z2 -z1 > 0
    zz1 = z2-z1
    zz1.times do
      e = e+" |"
    end
  end
  e = e+op1+"~-"
  if z1 -z2 > 0
    zz2 = z1-z2
    zz2.times do
      e = e+" |"
    end
  end
  if (z1+1)>(z2+1)
    e = e+op2+"~"
    z1.times do
      e = e+"_"
    end
    e = e+"_~"
  elsif (z1+1)<(z2+1)
    e = e+op2+"~"
    z2.times do
      e = e+"_"
    end
    e = e+"_~"
  else
    e = e+op2+"~"
    z2.times do
      e = e+"_"
    end
    e = e+"_~"
  end
  er = op1.to_i-op2.to_i
  z3 = 0
  er.to_s.each_byte do |y3|
    z3 = z3+1
  end
  if er >= 0
    if z3 >z2 and z3>z1
      e = e+er.to_s
    else 
      if not z1==z2
        if z3 <z2
          (z1-z3+1).times do
            e = e+" |"
          end
          e = e+er.to_s
        else
          e = e+" | |"
          e = e+er.to_s
        end
      else
        z1.times do
          e = e+" |"
        end
        e = e+er.to_s
      end
    end
  else
    if z3 >z2 and z3>z1
      e = e+er.to_s
    else 
      if not z1==z2
        if z3 <z1
          (z2-z3+1).times do
            e = e+" |"
          end
          e = e+er.to_s
        else
          e = e+" | |"
          e = e+er.to_s
        end
      else
        (z1-1).times do
          e = e+" |"
        end
        e = e+er.to_s
      end
    end
  end
end
if erg == "*"
e = op1.to_s+"*"+op2.to_s+"~"
e2 = op1.to_i*op2.to_i
z4 = 0
z3 = 0
e2.to_s.each_byte do |y3|
  z4 = z4+1
end
e.each_byte do |y3|
  z3 = z3+1
end
(z3-1).times do
  e = e+"_"
end
e = e+"~"
z2 = 0
z8 = 0
op2.to_s.each_byte do |y1|
  z8 = z8+1
end
if z8>1
op2.to_s.each_byte do |y1|
  z2 = z2+1
  z1 = 0
  op2.to_s.each_byte do |y2|
    z1 = z1+1
  end
e1 = (y1.chr).to_i*op1.to_i
(z1-z2).times do 
  e1 = e1.to_s+"0"
end
z4 = 0
e1.to_s.each_byte do
  z4 = z4+1
end
if z2 == 1
e = e+" |"
else
e = e+"+"
end
(z3-z4-2).times do
  e = e.to_s+" |"
end
e = e+e1.to_s+"~" 
end

(z3-1).times do
  e = e+"_"
end
e = e+"~"
end
g = 0
f = op1.to_s+"*"+op2.to_s
f.each_byte do |y5|
  g = g+1
end
e2 = op1.to_i*op2.to_i
z4 = 0
e2.to_s.each_byte do |y3|
  z4 = z4+1
end
eg = g.to_i - z4.to_i
eg.times do
  e = e + " |"
end
e = e+e2.to_s
end
if erg == "/"
  e = op1.to_s+":"+op2.to_s+"="
  e2 = op1.to_i/op2.to_i
  e = e +e2.to_s+" r:"
  e3 = e2*op2.to_i
  e4 = op1.to_i-e3
  e = e + e4.to_s
  zif = 0
  en1 = ""
  z1 = ""
  d = 0
  op1.each_byte do |y1|
    z1 = z1+y1.chr
    if (z1.to_i/op2.to_i) >= 1 and d == 0
      en1 = ((z1.to_i/op2.to_i)*op2.to_i).to_s
      d = 1
    end
  end
  e = e +"~"+en1+"~"
  z2 = 0
  en1.each_byte do |y2|
    z2 = z2+1
  end
  z3 = 0
  z4 = ""
  op1.each_byte do |y3|
    if z3<z2
      z3 = z3+1
      z4 = z4+y3.chr
    end
  end
  z5 = 0
  (z4.to_i-en1.to_i).to_s.each_byte do |y4|
    z5 = z5+1
  end
  (z2-z5).times do
    e = e+" |"
  end
  e = e + (z4.to_i-en1.to_i).to_s
  z6 = 0
  z7 = ""
  op1.each_byte do |y5|
    z6 = z6+1
    if (z6)==z5+1
      z7 = y5.chr
    end
  end
  e = e+z7
end
zeigeBuchstaben(pack,e,false)
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end