def menu_app(pack)
  fa = ""
  kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
  while fa == ""
    world.clearAll
    world.setSize(1,1)
    `"#{my_path}"mouse zoomKara`
    x = Input(kara,tools,world,app_path,menu,"","s","Fach/Spiel/Glücksspiel/Mehrspieler/Mathe/Ende","","")
    case x
      when "Fach"
        z = 0
        while z == 0
          y = Input(kara,tools,world,app_path,menu,"","s","Schreiben/Periodensystem/Malen/Kalender/Algebra/Coins/Coins Cheat/Ip online/Path online/Vokabeln/Klavier/Shop/Film/Zurück","","")
          case y
            when "Zurück"
              z = 1
            when "Schreiben"
              schreiben(pack)
              world.clearAll
              world.setSize(1,1)
            when "Periodensystem"
              periodensystem(pack)
              world.clearAll
              world.setSize(1,1)
            when "Malen"
              malen(pack) 
              world.clearAll
              world.setSize(1,1)
            when "Kalender"
              kalender(pack)
              world.clearAll
              world.setSize(1,1)
            when "Algebra"
              algebra(pack)
              world.clearAll
              world.setSize(1,1)
            when "Coins"
              coins(pack)
              world.clearAll
              world.setSize(1,1)
            when "Coins Cheat"
              coins_cheat(pack)
              world.clearAll
              world.setSize(1,1)
            when "Ip online"
              ip_online(pack)
              world.clearAll
              world.setSize(1,1)
            when "Path online"
              path_online(pack)
              world.clearAll
              world.setSize(1,1)
            when "Vokabeln"
              vokabeln(pack)
              world.clearAll
              world.setSize(1,1)
            when "Klavier"
              klavier(pack)
              world.clearAll
              world.setSize(1,1)
            when "Shop"
              shop(pack)
              world.clearAll
              world.setSize(1,1)
            when "Film"
              film(pack)
              world.clearAll
              world.setSize(1,1)
            else
          end
        end
      when "Spiel"
        z = 0
        while z == 0
          y = Input(kara,tools,world,app_path,menu,"","s","Mathe/Blatt suche/Karas Welt/TTK/[Blatt fressen]/Finde Kara/Kara Run/Gedächnis Games/Acade Games/Color Switch Games/Zurück","","")
          case y
            when "Zurück"
              z = 1
            when "Mathe"
              mathe(pack)
              world.clearAll
              world.setSize(1,1)
            when "Blatt suche"  
              blatt_suche(pack)
              world.clearAll
              world.setSize(1,1)
            when "Karas Welt"
              karas_welt(pack)
              world.clearAll
              world.setSize(1,1)
            when "TTK"
              ttk(pack)
              world.clearAll
              world.setSize(1,1)
            when "[Blatt fressen]"
              blatt_fressen(pack)
              world.clearAll
              world.setSize(1,1)
            when "Finde Kara"
              finde_kara(pack)
              world.clearAll
              world.setSize(1,1)
            when "Kara Run"
              kara_run(pack)
              world.clearAll
              world.setSize(1,1) 
            when "Gedächnis Games"
              zz = 0
              while zz == 0
                yy = Input(kara,tools,world,app_path,menu,"","s","Leicht/Schwer/Extrem/Zurück","","")
                case yy
                  when "Zurück"
                    zz = 1
                  when "Leicht"
                    ged�chnis_l(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Schwer"
                    ged�chnis_s(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Extrem"
                    ged�chnis_e(pack)
                    world.clearAll
                    world.setSize(1,1)
                end
              end
            when "Color Switch Games"
              zz = 0
              while zz == 0
                yy = Input(kara,tools,world,app_path,menu,"","s","Kara Jump/Shoot/Bounce/Paddle/Tower/Bling/Turn/Zurück","","")
                case yy
                  when "Zurück"
                    zz = 1
                  when "Kara Jump"
                    kara_jump(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Shoot"
                    shoot(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Bounce"
	                bounce(pack)
	                world.clearAll
	                world.setSize(1,1)
	              when "Paddle"
	                paddle(pack)
	                world.clearAll
	                world.setSize(1,1)
                  when "Tower"
	                tower(pack)
	                world.clearAll
	                world.setSize(1,1)
                  when "Bling"
	                bling(pack)
	                world.clearAll
	                world.setSize(1,1)
                  when "Turn"
	                turn(pack)
	                world.clearAll
	                world.setSize(1,1)
                end
              end
            when "Acade Games"
              zz = 0
              while zz == 0
                yy = Input(kara,tools,world,app_path,menu,"","s","Pong/Space invaders/Snake/Pac man/Arkanoid/Defenders/Tetris/Zurück","","")
                case yy
                  when "Zurück"
                    zz = 1
                  when "Pong"
                    pong(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Space invaders"
                    space_invaders(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Snake"
	                snake(pack)
	                world.clearAll
	                world.setSize(1,1)
	              when "Pac man"
	                pac_man(pack)
	                world.clearAll
	                world.setSize(1,1)
                  when "Arkanoid"
	                arkanoid(pack)
	                world.clearAll
	                world.setSize(1,1)
                  when "Defenders"
	                defenders(pack)
	                world.clearAll
	                world.setSize(1,1)
                  when "Tetris"
	                tetris(pack)
	                world.clearAll
	                world.setSize(1,1)
                end
              end
          end
        end
      when "Glücksspiel"
        z = 0
        while z == 0
          y = Input(kara,tools,world,app_path,menu,"","s","Rennen/Slot/Rad/Kara rollen/KÄDN/Zurück","","")
          case y
            when "Zurück"
              z = 1
            when "Rennen"
              rennen(pack)
              world.clearAll
              world.setSize(1,1)
            when "Slot"
              slot(pack)
              world.clearAll
              world.setSize(1,1)
            when "Rad"
              rad(pack)
              world.clearAll
              world.setSize(1,1)
            when "Kara rollen"
              kara_rollen(pack)
              world.clearAll
              world.setSize(1,1)
            when "KÄDN"
              k�dn(pack)
              world.clearAll
              world.setSize(1,1)
          end
        end
      when "Mehrspieler"
        z = 0
        while z == 0
          y = Input(kara,tools,world,app_path,menu,"","s","Chat/Karas Weg/Mail/Zurück","","")
          case y
            when "Zurück"
              z = 1
            when "Chat"
              chat(pack)
              world.clearAll
              world.setSize(1,1)
            when "Karas Weg"
              karas_weg(pack)
              world.clearAll
              world.setSize(1,1)
            when "Mail"
              mail(pack)
              world.clearAll
              world.setSize(1,1)
          end
        end
      when "Mathe"
        z = 0
        while z == 0
          y = Input(kara,tools,world,app_path,menu,"","s","Rechnen/Wurzelziehen/Primzahlen/Teiler/Rechnen m.r./Trigonometrie/Pi/Zurück","","")
          case y
            when "Zurück"
              z = 1
            when "Rechnen"
              rechnen(pack)
              world.clearAll
              world.setSize(1,1)
            when "Wurzelziehen"
              zz = 0
              while zz == 0
                yy = Input(kara,tools,world,app_path,menu,"","s","Heron v./Newton v./Heron v.g./Newton v.g./Zurück","","")
                case yy
                  when "Zurück"
                    zz = 1
                  when "Heron v."
                    heron_verfahren(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Newton v."
                    newton_verfahren(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Heron v.g."
                    heron_verfahren_grafisch(pack)
                    world.clearAll
                    world.setSize(1,1)
                  when "Newton v.g."
                    neton_verfahren_grafisch(pack)
                    world.clearAll
                    world.setSize(1,1)
                end
              end
            when "Primzahlen"
              primzahlen(pack)
              world.clearAll
              world.setSize(1,1)
            when "Teiler"
              teiler(pack)
              world.clearAll
              world.setSize(1,1)
            when "Rechnen m.r."
              rechnen_m_r(pack)
              world.clearAll
              world.setSize(1,1)
            when "Trigonometrie"
              trigonometrie(pack)
              world.clearAll
              world.setSize(1,1)
            when "Pi"
              pi(pack)
              world.clearAll
              world.setSize(1,1)
          end
        end
      when "Ende"
        fa = "e"
    end
  end
end