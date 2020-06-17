def slot(pack)
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
    coins = File.open(my_path+"coin.txt").read.to_i
    if coins < 0 or coins == 0
        Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
        k = 1
    end
    if k == 0
        geset = Input(kara,tools,world,app_path,menu,"wie viele coins willst du setzen","i","","","")
    
    if (coins - geset)>= 0
        coins = coins-geset
        newc = File.new(my_path+"coin.txt", "w+")
        newc.puts(coins)
        newc.close
    else
        Output(kara,tools,world,app_path,menu,"Du hast zu wenig coins!!!!","","")
        k = 1
    end
    end
  if k == 0
  world.clearAll
  world.setSize(4,1)
  `"#{my_path}"mouse zoomKara`
  s1 = tools.random(5)+1
  s2 = tools.random(5)+1
  s3 = tools.random(5)+1
  s4 = tools.random(5)+1
  
  for i in 1..s1
    world.setLeaf(0,0,false)
    world.setMushroom(0,0,false)
    world.setTree(0,0,false)
    if i == 1 or i == 4
        world.setTree(0,0,true)
    end
    if i == 2 or i == 5
        world.setMushroom(0,0,true)
    end
    if i == 3 or i == 6
        world.setLeaf(0,0,true)
    end
    tools.sleep (250)
  end
  for i in 1..s2
    world.setLeaf(1,0,false)
    world.setMushroom(1,0,false)
    world.setTree(1,0,false)
    if i == 1 or i == 4
        world.setTree(1,0,true)
    end
    if i == 2 or i == 5
        world.setMushroom(1,0,true)
    end
    if i == 3 or i == 6
        world.setLeaf(1,0,true)
    end
    tools.sleep (250)
  end
  for i in 1..s3
    world.setLeaf(2,0,false)
    world.setMushroom(2,0,false)
    world.setTree(2,0,false)
    if i == 1 or i == 4
        world.setTree(2,0,true)
    end
    if i == 2 or i == 5
        world.setMushroom(2,0,true)
    end
    if i == 3 or i == 6
        world.setLeaf(2,0,true)
    end
    tools.sleep (250)
  end
  for i in 1..s4
    world.setLeaf(3,0,false)
    world.setMushroom(3,0,false)
    world.setTree(3,0,false)
    if i == 1 or i == 4
        world.setTree(3,0,true)
    end
    if i == 2 or i == 5
        world.setMushroom(3,0,true)
    end
    if i == 3 or i == 6
        world.setLeaf(3,0,true)
    end
    tools.sleep (250)
  end
  if s1 == 1 or s1 == 4
    s1 = 0
  elsif s1 == 2 or s1 == 5
    s1 = 1
  elsif s1 == 3 or s1 == 6
    s1 = 2
  end
  if s2 == 1 or s2 == 4
    s2 = 0
  elsif s2 == 2 or s2 == 5
    s2 = 1
  elsif s2 == 3 or s2 == 6
    s2 = 2
  end
  if s3 == 1 or s3 == 4
    s3 = 0
  elsif s3 == 2 or s3 == 5
    s3 = 1
  elsif s3 == 3 or s3 == 6
    s3 = 2
  end
  if s4 == 1 or s4 == 4
    s4 = 0
  elsif s4 == 2 or s4 == 5
    s4 = 1
  elsif s4 == 3 or s4 == 6
    s4 = 2
  end
  x = 0
  if s1==2 and s2==2 and s3==2 and s4==2 and x = 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*25} coins","","")
    coins = coins + geset + geset*25
    x = x + 1
  end
  if s1==1 and s2==1 and s3==1 and s4==1 and x = 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*20} coins","","")
    coins = coins + geset + geset*20
    x = x + 1
  end
  if s1==0 and s2==0 and s3==0 and s4==0 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*20} coins","","")
    coins = coins + + geset + geset*20
    x = x + 1
  end
  if s1==1 and s2==2 and s3==2 and s4==1 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*10} coins","","")
    coins = coins + geset + geset*10
    x = x + 1
  end
  if s1==0 and s2==2 and s3==2 and s4==0 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*10} coins","","")
    coins = coins + geset + geset*10
    x = x + 1
  end
  if s1==2 and s2==1 and s3==1 and s4==2 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*10} coins","","")
    coins = coins + geset + geset*10
    x = x + 1
  end
  if s1==0 and s2==1 and s3==1 and s4==0 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*5} coins","","")
    coins = coins + geset + geset*5
    x = x + 1
  end
  if s1==2 and s2==0 and s3==0 and s4==2 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*10} coins","","")
    coins = coins + geset + geset*10
    x = x + 1
  end
  if s1==1 and s2==0 and s3==0 and s4==1 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst #{geset*5} coins","","")
    coins = coins + geset + geset*5
    x = x + 1
  end
  if s1==2 and s4==2 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst deine coins zurück","","")
    coins = coins + geset
    x = x + 1
  end
  if s2==2 and s3==2 and x == 0
    Output(kara,tools,world,app_path,menu,"du bekommst deine coins zurück","","")
    coins = coins + geset
    x = x + 1
  end
  if x == 0
    Output(kara,tools,world,app_path,menu,"du verlierst #{geset} coins","","")
  end
  coin2 = File.new(my_path + "coin.txt", "w+")
  coin2.puts(coins)
  coin2.close
end
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end