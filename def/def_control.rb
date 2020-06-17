def Control(kara,tools,world,app_path,input,else1,else2)
    if input == ""
        z = File.open(app_path+"bluetooth_out.txt", "r").read
        x = z.strip
        if not x == "" and x.split("").pop == "$"
          x = x.chop!
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
	    return x
    else
		y = 0
		while y == 0
			begin
				b = File.new(app_path+"bluetooth_in.txt", "w+")
				b.puts(input)
				b.close
				y = 1
			rescue 
			end 
		end
    end
end