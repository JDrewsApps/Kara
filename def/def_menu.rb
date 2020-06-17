def menu(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
fa = ""
s = "0"
while fa == ""
  case s
    when "0"
      xx = "^ fach~^ spiel~^ glücksspiel~^ mehrspieler~^ mathe~^ ende"
      zeigeBuchstaben(pack,xx,true)
      while s == "0"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "C"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "D"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
        for hx in 2..4
          for hy in 38..40
            if world.isMushroom(hx,hy)
              s = "ende"
            end
          end
        end
      end
    when "A"
      xx = "^ schreiben~^ periodensystem~^ malen~^ kalender~^ algebra~^ coins~^ coins cheat~^ ip online~^ path online~^ vokabeln~^ klavier~^ shop~^ film~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "A1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A2"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "A4"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "A5"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "A6"
            end
          end
        end
        for hx in 2..4
          for hy in 38..40
            if world.isMushroom(hx,hy)
              s = "A7"
            end
          end
        end
        for hx in 2..4
          for hy in 45..47
            if world.isMushroom(hx,hy)
              s = "A8"
            end
          end
        end
        for hx in 2..4
          for hy in 52..54
            if world.isMushroom(hx,hy)
              s = "A10"
            end
          end
        end
        for hx in 2..4
          for hy in 59..61
            if world.isMushroom(hx,hy)
              s = "A11"
            end
          end
        end
        for hx in 2..4
          for hy in 66..68
            if world.isMushroom(hx,hy)
              s = "A12"
            end
          end
        end
        for hx in 2..4
          for hy in 73..75
            if world.isMushroom(hx,hy)
              s = "A13"
            end
          end
        end
        for hx in 2..4
          for hy in 80..82
            if world.isMushroom(hx,hy)
              s = "A14"
            end
          end
        end
        for hx in 2..4
          for hy in 87..89
            if world.isMushroom(hx,hy)
              s = "A15"
            end
          end
        end
        for hx in 2..4
          for hy in 94..96
            if world.isMushroom(hx,hy)
              s = "0"
            end
          end
        end
      end
    when "B"
      xx = "^ mathe~^ blatt suche~^ karas welt~^ TTK~^ blatt fressen~^ finde kara~^ kara run~^ gedächnis games~^ acade games~^ color switch games~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "B1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B4"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "B5"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "B6"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "B8"
            end
          end
        end
        for hx in 2..4
          for hy in 38..40
            if world.isMushroom(hx,hy)
              s = "B17"
            end
          end
        end
        for hx in 2..4
          for hy in 45..47
            if world.isMushroom(hx,hy)
              s = "B24"
            end
          end
        end
        for hx in 2..4
          for hy in 52..54
            if world.isMushroom(hx,hy)
              s = "2T"
            end
          end
        end
        for hx in 2..4
          for hy in 59..61
            if world.isMushroom(hx,hy)
              s = "5T"
            end
          end
        end
        for hx in 2..4
          for hy in 66..68
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
        for hx in 2..4
          for hy in 73..75
            if world.isMushroom(hx,hy)
              s = "0"
            end
          end
        end
      end
    when "C"
      xx = "^ rennen~^ slot~^ rad~^ kara rollen~^ KäDN~^ zurück" 
	  zeigeBuchstaben(pack,xx,true)
      while s == "C"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "C1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "C2"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "C3"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "C4"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "C5"
            end
          end
        end
        for hx in 2..4
          for hy in 38..40
            if world.isMushroom(hx,hy)
              s = "0"
            end
          end
        end
      end
    when "D"
     xx = "^ chat~^ karas weg~^ mail~^ zurück"
     zeigeBuchstaben(pack,xx,true)
     while s == "D"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "D1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "D2"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "D3"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "0"
            end
          end
        end
      end
    when "E"
      xx = "^ rechnen~^ wurzelziehen~^ primzahlen~^ teiler~^ rechnen m.r.~^ trigonometrie~^ pi~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "E1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "4T"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "E3"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "E4"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "E8"
            end
          end
        end
        for hx in 2..4
          for hy in 38..40
            if world.isMushroom(hx,hy)
              s = "E9"
            end
          end
        end
        for hx in 2..4
          for hy in 45..47
            if world.isMushroom(hx,hy)
              s = "E10"
            end
          end
        end
        for hx in 2..4
          for hy in 52..54
            if world.isMushroom(hx,hy)
              s = "0"
            end
          end
        end
      end
    when "A1"
      xx = "^ schreiben~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A1"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A2"
      xx = "^ periodensystem~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A2"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA2"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    
    when "A4"
      xx = "^ malen~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A4"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA4"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A5"
      xx = "^ kalender~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A5"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA5"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A6"
      xx = "^ algebra~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A6"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA6"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A7"
      xx = "^ coins~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A7"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA7"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A8"
      xx = "^ coins cheat~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A8"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA8"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A10"
      xx = "^ ip online~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A10"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA10"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A11"
      xx = "^ path online~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A11"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA11"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A12"
      xx = "^ vokabeln~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A12"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA12"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A13"
      xx = "^ klavier~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A13"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA13"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A14"
      xx = "^ shop~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A14"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA14"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "A15"
      xx = "^ film~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "A15"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "AA15"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "A"
            end
          end
        end
      end
    when "B1"
      xx = "^ mathe~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B1"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B2"
      xx = "^ gedächnis l~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B2"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB2"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B3"
      xx = "^ gedächnis s~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B3"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB3"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B4"
      xx = "^ blatt suche~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B4"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB4"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B5"
      xx = "^ karas welt~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B5"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB5"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B6"
      xx = "^ TTK~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B6"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB6"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B7"
      xx = "^ KäDN~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B7"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB7"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B8"
      xx = "^ blatt fressen ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B8"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB8"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B9"
      xx = "^ pong ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B9"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB9"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "5T"
            end
          end
        end
      end
    when "B10"
      xx = "^ gedächnis e ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B10"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB10"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B11"
      xx = "^ spac invaders~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B11"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB11"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "5T"
            end
          end
        end
      end
    when "B12"
      xx = "^ snake~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B12"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB12"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "5T"
            end
          end
        end
      end
    when "B13"
      xx = "^ pac man~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B13"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB13"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "5T"
            end
          end
        end
      end
    when "B14"
      xx = "^ arkanoid~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B14"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB14"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "5T"
            end
          end
        end
      end
    when "B15"
      xx = "^ defenders~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B15"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB15"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "5T"
            end
          end
        end
      end
    when "B16"
      xx = "^ kara jump~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B16"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB16"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
      end
    when "B17"
      xx = "^ finde kara~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B17"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB17"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B18"
      xx = "^ shoot~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B18"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB18"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
      end
    when "B19"
      xx = "^ bounce~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B19"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB19"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
      end
    when "B20"
      xx = "^ paddle~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B20"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB20"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
      end
    when "B21"
      xx = "^ tower~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B21"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB21"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
      end
    when "B22"
      xx = "^ bling~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B22"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB22"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
      end
    when "B23"
      xx = "^ turn~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B23"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB23"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "6T"
            end
          end
        end
      end
    when "B24"
      xx = "^ kara run~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B24"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB24"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "B25"
      xx = "^ tetris~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "B25"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB25"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "C1"
      xx = "^ rennen ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "C1"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "CC1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "C"
            end
          end
        end
      end
    when "C2"
      xx = "^ slot ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "C2"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "CC2"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "C"
            end
          end
        end
      end
    when "C3"
      xx = "^ rad ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "C3"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "CC3"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "C"
            end
          end
        end
      end
    when "C4"
      xx = "^ kara rollen ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "C4"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "CC4"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "C"
            end
          end
        end
      end
    when "C5"
      xx = "^ KäDN ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "C5"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "CC5"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "C"
            end
          end
        end
      end
    when "D1"
      xx = "^ chat ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "D1"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "DD1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "D"
            end
          end
        end
      end
    when "D2"
      xx = "^ karas weg ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "D2"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "DD2"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "D"
            end
          end
        end
      end
    when "D3"
      xx = "^ mail ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "D3"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "DD3"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "D"
            end
          end
        end
      end
    when "E1"
      xx = "^ rechnen ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E1"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE1"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E2"
      xx = "^ heron-verfahren ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E2"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE2"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E3"
      xx = "^ primzahlen ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E3"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE3"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E4"
      xx = "^ teiler ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E4"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE4"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E5"
      xx = "^ newton-verfahren ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E5"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE5"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E6"
      xx = "^ heron-verfaren grafisch ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E6"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE6"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E7"
      xx = "^ newton-verfahren grafisch ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E7"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE7"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E8"
      xx = "^ rechnen m.r. ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E8"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE8"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E9"
      xx = "^ trigonometrie ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E9"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE9"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "E10"
      xx = "^ pi ~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "E10"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE10"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
    when "2T"
      xx = "^ leicht~^ schwer~^ extrem~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "2T"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "BB2"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "BB3"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "BB10"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
      when "4T"
      xx = "^ heron v.~^ newton v.~^ heron v.g.~^ newton v.g.~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "4T"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "EE2"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "EE5"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "EE6"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "EE7"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "E"
            end
          end
        end
      end
      when "5T"
      xx = "^ pong~^ space invaders~^ snake~^ pac man~^ arkanoid~^ defenders~^ tetris~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "5T"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "B9"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B11"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            if world.isMushroom(hx,hy)
              s = "B12"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "B13"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "B14"
            end
          end
        end
        for hx in 2..4
          for hy in 38..40
            if world.isMushroom(hx,hy)
              s = "B15"
            end
          end
        end
        for hx in 2..4
          for hy in 45..47
            if world.isMushroom(hx,hy)
              s = "B25"
            end
          end
        end
        for hx in 2..4
          for hy in 52..54
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
      when "6T"
      xx = "^ kara jump~^ shoot~^ bounce~^ paddle~^ tower~^ bling~^ turn~^ zurück"
	  zeigeBuchstaben(pack,xx,true)
      while s == "6T"
        for hx in 2..4
          for hy in 3..5
            if world.isMushroom(hx,hy)
              s = "B16"
            end
          end
        end
        for hx in 2..4
          for hy in 10..12
            if world.isMushroom(hx,hy)
              s = "B18"
            end
          end
        end
        for hx in 2..4
          for hy in 17..19
            #world.setTree(hx,hy,true)
            if world.isMushroom(hx,hy)
              s = "B19"
            end
          end
        end
        for hx in 2..4
          for hy in 24..26
            if world.isMushroom(hx,hy)
              s = "B20"
            end
          end
        end
        for hx in 2..4
          for hy in 31..33
            if world.isMushroom(hx,hy)
              s = "B21"
            end
          end
        end
        for hx in 2..4
          for hy in 38..40
            if world.isMushroom(hx,hy)
              s = "B22"
            end
          end
        end
        for hx in 2..4
          for hy in 45..47
            if world.isMushroom(hx,hy)
              s = "B23"
            end
          end
        end
        for hx in 2..4
          for hy in 52..54
            if world.isMushroom(hx,hy)
              s = "B"
            end
          end
        end
      end
    when "ende"
     fa = "ende"
     return fa
    when "AA1"
     schreiben(pack)
     s = "A1"
    when "AA2"
     periodensystem(pack)
     s = "A2" 
    when "AA3"
     karas_welt_1(pack)
     s = "1T"
    when "AA4"
     malen(pack) 
     s = "A4"
    when "AA5"
     kalender(pack)
     s = "A5"
    when "AA6"
     algebra(pack)
     s = "A6"
    when "AA7"
     coins(pack)
     s = "A7"
    when "AA8"
     coins_cheat(pack)
     s = "A8"
    when "AA9"
     karas_welt_2(pack)
     s = "1T"
    when "AA10"
     ip_online(pack)
     s = "A10"
    when "AA11"
     path_online(pack)
     s = "A11"
    when "AA12"
     vokabeln(pack)
     s = "A12"
    when "AA13"
     klavier(pack)
     s = "A13"
    when "AA14"
     shop(pack)
     s = "A14"
    when "AA15"
     film(pack)
     s = "A15"
    when "BB1"
     mathe(pack)
     s = "B1"
    when "BB2"
     ged�chnis_l(pack) 
     s = "2T"
    when "BB3"
     ged�chnis_s(pack)
     s = "2T"
    when "BB4"
     blatt_suche(pack)
     s = "B4"
    when "BB5"
     karas_welt(pack)
     s = "B5"
    when "BB6"
     ttk(pack)
     s = "B6"
    when "BB8"
     blatt_fressen(pack)
     s = "B8"
    when "BB9"
     pong(pack)
     s = "B9"
    when "BB10"
     ged�chnis_e(pack)
     s = "2T"
    when "BB11"
     space_invaders(pack) 
     s = "B11"
    when "BB12"
     snake(pack)  
     s = "B12"
    when "BB13"
     pac_man(pack)
     s = "B13"
    when "BB14"
     arkanoid(pack)
     s = "B14"
    when "BB15"
     defenders(pack)
     s = "B15"
    when "BB16"
     kara_jump(pack)
     s = "B16"
    when "BB17"
     finde_kara(pack)
     s = "B17"
    when "BB18"
     shoot(pack)
     s = "B18"
    when "BB19"
     bounce(pack)
     s = "B19"
    when "BB20"
     paddle(pack)
     s = "B20"
    when "BB21"
     tower(pack)
     s = "B21"
    when "BB22"
     bling(pack)
     s = "B22"
    when "BB23"
     turn(pack)
     s = "B23"
    when "BB24"
     kara_run(pack)
     s = "B24"
    when "BB25"
     tetris(pack)
     s = "B25"
    when "CC1"
     rennen(pack)
     s = "C1"
    when "CC2"
     slot(pack)
     s = "C2"
    when "CC3"
     rad(pack)
     s = "C3"
    when "CC4"
     kara_rollen(pack)
     s = "C4"
    when "CC5"
     k�dn(pack)
     s = "C5"
    when "DD1"
     chat(pack)
     s = "D1"
    when "DD2"
     karas_weg(pack)
     s = "D2"
    when "DD3"
     mail(pack)
     s = "D3"
    when "EE1"
     rechnen(pack)
     s = "E1"
    when "EE2"
     heron_verfahren(pack)
     s = "4T"
    when "EE3"
     primzahlen(pack)
     s = "E3"
    when "EE4"
     teiler(pack)
     s = "E4"
    when "EE5"
     newton_verfahren(pack)
     s = "4T"
    when "EE6"
     heron_verfahren_grafisch(pack)
     s = "4T"
    when "EE7"
     neton_verfahren_grafisch(pack)
     s = "4T"
    when "EE8"
     rechnen_m_r(pack)
     s = "E8"
    when "EE9"
     trigonometrie(pack)
     s = "E9"
    when "EE10"
     pi(pack)
     s = "E10"
  end
end
end