def algebra(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
gr = Input(kara,tools,world,app_path,menu,"gib eine größe ein","s","sehr klein/klein/mittel/groß/sehr groß","","")
    case gr
      when "sehr klein"
        g = 32
      when "klein"
        g = 64
      when "mittel"
        g = 128
      when "groß"
        g = 256
      when "sehr groß"
        g = 512
    end
    a=Input(kara,tools,world,app_path,menu,"gieb eine Zahl ein","i","","","")
    b=Input(kara,tools,world,app_path,menu,"gieb noch eine Zahl ein","i","","","")
    c=Input(kara,tools,world,app_path,menu,"gieb noch eine dritte  Zahl ein","i","","","")
    world.clearAll
    world.setSize (g+1,g+1)
    `"#{my_path}"mouse zoomKara`
    for y in 0..g                                    
      for x in 0..g                                 
        xf = 0.001*(x-(g+1))
        yf = 0.001*(y-(g+1)) 
        #A*(x²-1)*(y²-1)*(x²+y²-4)+B*(x²-1)²+C*(y²-1)²
        z = a*((x**2)-1)*((y**2)-1)*((x**2)+(y**2)-4)+(b*((x**2)-1)**2)+(c*((y**2)-1)**2)
        if z % 256 > 128
        world.setLeaf(x,y,true)
        end                                              
      end    
    end
    Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end