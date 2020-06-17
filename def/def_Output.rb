def Output(kara,tools,world,app_path,menu,text,else1,else2)
  if menu == "normal" or menu =="barcode"
    x = tools.showMessage(text.to_s)
  elsif menu == "app"
	y = 0
	while y == 0
		begin
			b = File.new(app_path+"bluetooth_in.txt", "w+")
			b.puts("a//#{text}/ok%")
			b.close
			y = 1
		rescue
		end
	end
	#tools.showMessage("test")
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
  return x
end