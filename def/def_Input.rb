class String
    def is_f?
      Int(self) != nil rescue false
    end
    def is_i?
      !!(self =~ /\A[-+]?[0-9]+\z/)
    end
  end
def Input(kara,tools,world,app_path,menu,text,art,allowed,else1,else2)
  k = 0
  while k == 0
	  if menu == "normal" or menu =="barcode"
	    if allowed == ""
	      x = tools.stringInput(text)
	    else
	      x = tools.stringInput(text+"["+allowed+"]")
	    end
	    a = `J:/RubyKara_der_Ruby_Marienkaefer/mouse getWindowRect SunAwtDialog`
	    f = 0
	    g = ""
	    a.to_s.each_byte do |e|
		    if e.chr == ";"
		        f = f+1
		    end
	        if f == 1
	            g = g + " 0"
	            f = f+1
	        else
	            if e.chr == ";"
	                g = g+" "
	            else
	                if not f == 2
	                    g = g +e.chr
	                end
	            end
	        end
	    end
	    `J:/RubyKara_der_Ruby_Marienkaefer/mouse setWindowRect SunAwtDialog "#{g}"`
	  elsif menu == "app"
		y = 0
		while y == 0
			begin
				b = File.new(app_path+"bluetooth_in.txt", "w+")
				b.puts("a/#{art}/#{text}/#{allowed}%")
				b.close
				y = 1
			rescue 
			end 
		end
	    x = ""
	    while x == ""
	      z = File.open(app_path+"bluetooth_out.txt", "r").read
	      d = z.strip
	      if not d == "" and d.split("").pop == "$"
	        x = d.chop!
			y = 0
			while y == 0
				begin
					c = File.new(app_path+"bluetooth_out.txt","w+")
					c.puts("")
					c.close
					y = 1
				rescue 
				end 
			end
	      end
	    end
	  end
      if art == "f"
        if x.is_f?
          k = 1
        else
          Output(kara,tools,world,app_path,menu,"Input ist keine Float-Zahl","","")
        end
      end
      if art == "i"
        if x.is_i?
          k = 1
        else
          Output(kara,tools,world,app_path,menu,"Input ist keine Zahl","","")
        end
      end
      if art == "s"
        k = 1
      end
      
  end
  
  
  if art == "i"
    x = x.to_i
  elsif art == "d"
    x = x.to_f
  else art == "s"
	x = x.sub("Ã¤","ä")
	x = x.sub("Ã¶","ö")
	x = x.sub("Ã¼","ü")
	x = x.sub("Ã","ß")
	x = x.sub("Ã","Ä")
	x = x.sub("Ã","Ö")
	x = x.sub("Ã","Ü")
	
  end
  return x
end