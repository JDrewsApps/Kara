def zeigeBuchstaben(pack,x,pilz)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
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
`"#{my_path}"mouse zoomKara`
if pilz == true
    `"#{my_path}"mouse setKaraMushroom`
end
end    