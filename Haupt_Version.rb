# __  ___      ___      .______           ___         ____    ____   ______   .__   __.           __       _______  .______       _______ ____    __    ____      _______.
#|  |/  /     /   \     |   _  \         /   \        \   \  /   /  /  __  \  |  \ |  |          |  |     |       \ |   _  \     |   ____|\   \  /  \  /   /     /       |
#|  '  /     /  ^  \    |  |_)  |       /  ^  \        \   \/   /  |  |  |  | |   \|  |          |  |     |  .--.  ||  |_)  |    |  |__    \   \/    \/   /     |   (----`
#|    <     /  /_\  \   |      /       /  /_\  \        \      /   |  |  |  | |  . `  |    .--.  |  |     |  |  |  ||      /     |   __|    \            /       \   \    
#|  .  \   /  _____  \  |  |\  \----. /  _____  \        \    /    |  `--'  | |  |\   |    |  `--'  |  __ |  '--'  ||  |\  \----.|  |____    \    /\    /    .----)   |   
#|__|\__\ /__/     \__\ | _| `._____|/__/     \__\        \__/      \______/  |__| \__|     \______/  (__)|_______/ | _| `._____||_______|    \__/  \__/     |_______/
#    
#-----------------------------------------------------------------------------
# Schuljahre:   2015-2020
# Änderungen:   erstellt (mit schreiben)        09.09.2015      1      
#               Rechnung hinzu                  11.09.2015      2
#               Periodensystem hinzu            12.09.2015      3
#               Spiel Mathe hinzu               12.09.2015      4
#               Spiel Gedï¿½chnis l hinzu       12.09.2015      5
#               Spiel Gedï¿½chnis s hinzu       12.09.2015      6
#               Spiel Blattsuche hinzu          13.09.2015      7       v2 hinzu        15.06.2020
#               Karas welt 1 hinzu              14.09.2015      8       v2 hinzu        13.06.2020
#               Spiel karas welt hinzu          15.09.2015      9       removed         13.06.2020
#               Malen hinzu                     21.09.2015      10
#               Kalender hinzu                  29.09.2015      11
#               Glï¿½cksspiel Rennen hinzu      06.10.2015      12
#               Algebra hinzu                   06.10.2015      13
#               Coins hinzu                     09.10.2015      14
#               Coins Cheat hinzu               09.10.2015      15
#               Glï¿½cksspiel Sloots hinzu      10.10.2015      16
#               Shop hinzu                      10.10.2015      17		v2 hinzu		21.04.2016
#               Glï¿½cksspiel rad hinzu         18.10.2015      18
#               TTK hinzu                       20.10.2015      19		v2 hinzu		26.03.2016    v3 hinzu		15.06.2020
#               Kï¿½DN hinzu                    03.11.2015      20      v2 hinzu        13.05.2017
#               Blatt fressen                   04.11.2015      21
#               Chat                            09.11.2015      22
#               Karas weg                       13.11.2015      23  
#               Karas welt 2 hinzu              14.11.2015      24      removed         13.06.2020
#               Ip online hinzu                 20.11.2015      25
#               Path online hinzu               27.11.2015      26
#               Mail hinzu                      01.12.2015      27
#               Vokabeln hinzu                  29.01.2016      28
#               Heron-Verfahren hinzu           29.01.2016      29
#               Priemzahlen hinzu               30.01.2016      30
#               Teiler hinzu                    31.01.2016      31
#               Newton-Verfahren hinzu          03.02.2016      32
#               Heron-Verfahren grafisch hinzu  04.02.2016      33
#               Newton-Verfahren grafisch hinzu 05.02.2016      34
#               Rechnen m.r.                    09.02.2016      35
#               Trigonometrie                   26.03.2016      36
#               Klavier                         12.04.2016      37
#               Pong hinzu                      23.04.2016      38
#               Spiel Gedï¿½chnis e hinzu       04.05.2016      39
#               Spiel Space invaders hinzu      05.05.2016      40
#               Spiel Snake hinzu               06.05.2016      41
#               Glï¿½cksspiel kara rollen hinzu 07.05.2016      42
#               Spiel Pac Man hinzu             08.05.2016      43
#               Spiel Arkanoid hinzu            09.05.2016      44
#               Spiel Defenders hinzu           05.09.2016      45
#               Spiel Kara Jump hinzu           05.09.2016      46
#               Spiel Finde Kara hinzu          26.02.2017      47
#               Spiel Shoot hinzu               02.03.2017      48
#               Spiel Bounce hinzu              02.03.2017      49
#               Film hinzu                      26.04.2017      50
#               Spiel Paddle hinzu              01.05.2017      51
#               Spiel Tower hinzu               10.05.2017      52
#               Spiel Bling hinzu               13.05.2017      53
#               Spiel Turn hinzu                15.05.2017      54
#               Spiel Kara run hinzu            21.05.2017      55
#               Pi hinzu                        06.06.2017      56
#               Spiel Tetris hinzu              09.09.2017      57
#-----------------------------------------------------------------------------
#bitte alles entsprechend anpassen
my_path = ""              									#path zum kara ordner
menu = "normal"		                                        #art der auswahl[normal/app]
global_path = ""          									#path zum netzwerk ordner (nur für mehrspieler Programme erforderlich)
ip = ""	                                                    #ip adresse
name = ""                                                   #Name für kara-mails
key_control = true                                          #true für eine Steuerung über die Tastatur
bluetooth_console = false                                   #true um die Bluetooth-Console beim Start zu öffnen
#-----------------------------------------------------------------------------
app_path = my_path
pack = [kara, tools, world, my_path, menu, global_path, ip, name, app_path, key_control]
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
data = my_path+"def/"
load data+"def_zeigeBuchstaben.rb"
load data+"def_Input.rb"
load data+"def_Output.rb"
load data+"def_Control.rb"
load data+"def_Control2.rb"
load data+"def_diagamm_1_10_10.rb"
load data+"def_Startbild.rb"
load data+"def_menu.rb"
load data+"def_menu_app.rb"
load data+"schreiben.rb"
load data+"rechnen.rb"
load data+"periodensystem.rb"
load data+"mathe.rb"
load data+"gedächnis l.rb"
load data+"gedächnis s.rb"
load data+"blatt suche.rb"
load data+"karas welt.rb"
load data+"malen.rb"
load data+"kalender.rb"
load data+"algebra.rb"
load data+"rennen.rb"
load data+"coins.rb"
load data+"coins cheat.rb"
load data+"slot.rb"
load data+"rad.rb"
load data+"ip online.rb"
load data+"path online.rb"
load data+"vokabeln.rb"
load data+"blatt fressen.rb"
load data+"chat.rb"
load data+"karas weg.rb"
load data+"mail.rb"
load data+"kädn.rb"
load data+"heron-verfahren.rb"
load data+"primzahlen.rb"
load data+"teiler.rb"
load data+"newton-verfahren.rb"
load data+"heron-verfahren grafisch.rb"
load data+"newton-verfahren grafisch.rb"
load data+"rechnen m.r..rb"
load data+"trigonometrie.rb"
load data+"ttk.rb"
load data+"klavier.rb"
load data+"shop.rb"
load data+"pong.rb"
load data+"gedächnis e.rb"
load data+"space invaders.rb"
load data+"snake.rb"
load data+"kara rollen.rb"
load data+"pac man.rb"
load data+"arkanoid.rb"
load data+"defenders.rb"
load data+"kara jump.rb"
load data+"finde kara.rb"
load data+"shoot.rb"
load data+"bounce.rb"
load data+"film.rb"
load data+"paddle.rb"
load data+"tower.rb"
load data+"bling.rb"
load data+"turn.rb"
load data+"kara run.rb"
load data+"pi.rb"
load data+"tetris.rb"
#-----------------------------------------------------------------------------
# Start Main     
#-----------------------------------------------------------------------------
system("Taskkill /IM keypress.exe /F")
system("Taskkill /IM KaraBluetooth.exe /F")
system("Taskkill /IM KaraBluetoothConsole.exe /F")
Startbild(pack)
tools.checkState
zeigeBuchstaben(pack,"version: 57.3",false)
tools.checkState()
tools.sleep(1500)
if menu == "app"
    File.new(app_path+"bluetooth_in.txt")
    File.new(app_path+"bluetooth_out.txt")
    if bluetooth_console
        IO.popen("#{my_path}KaraBluetoothConsole.exe")
    else
        IO.popen("#{my_path}KaraBluetooth.exe")
    end
end
if menu == "normal"
    fa = menu(pack)
elsif menu == "app"
    fa = menu_app(pack)
end
system("Taskkill /IM keypress.exe /F")
system("Taskkill /IM KaraBluetooth.exe /F")
system("Taskkill /IM KaraBluetoothConsole.exe /F")