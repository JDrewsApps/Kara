def rechnen(pack)
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
    op1=""
    op2=""
    operation=0
    str_len=0
    x = Input(kara,tools,world,app_path,menu,"Geben sie eine Rechnung ein z.B. 99+11","s","","","")
    x.each_byte do |y|
      str_len=str_len+1
    end#DO
    if str_len>11
      Output(kara,tools,world,app_path,menu,"Zahlen zu groß","","")
      k = 1
    end#IF
    if k == 0
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
        when "^"
	      operation=5
	      operation_aktiv=1
        when "#"
	      operation=6
	      operation_aktiv=1
      end#CASE 
	
      if operation==0 and operation_aktiv==0
	    op1=op1+y.chr
      else
	    if operation_aktiv==0
       	  op2=op2+y.chr
	    end#IF
      end#IF
   end#DO

  case (operation)
    when 1
      erg=op1.to_i+op2.to_i
    when 2
      erg=op1.to_i-op2.to_i
    when 3
      erg=op1.to_i*op2.to_i
    when 4
      erg=op1.to_i/op2.to_i
    when 5
      erg=op1.to_i**op2.to_i
    when 6
      erg=Math.sqrt(op2.to_i)
  end#case
  zeigeBuchstaben(pack,erg.to_s,false)
  end
  Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end