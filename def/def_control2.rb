def Control2(kara,tools,world,app_path,input,else1,else2)
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
    return x
end