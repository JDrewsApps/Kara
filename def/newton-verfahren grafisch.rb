def neton_verfahren_grafisch(pack)
	kara = pack[0]
	tools = pack[1]
	world = pack[2]
	my_path = pack[3]
	menu = pack[4]
	global_path = pack[5]
	ip = pack[6]
	name = pack[7]
	app_path = pack[8]
	k = 3
	a = Input(kara,tools,world,app_path,menu,"gib die Zahl zwischen 0 und 1000 ein aus der du die #{k}.Wurzel ziehen willst","i","","","")
	if a <= 1000 and a >= 0
		x = 10
		tg1 = (( k - 1 ) * ( x ** k ) + a ).to_f / ( k * ( x ** ( k - 1 ).to_f ))
		tg2 = (( k - 1 ) * ( tg1 ** k ) + a ).to_f / ( k * ( tg1 ** ( k - 1 ).to_f ))
		tg3 = (( k - 1 ) * ( tg2 ** k ) + a ).to_f / ( k * ( tg2 ** ( k - 1 ).to_f ))
		tg4 = (( k - 1 ) * ( tg3 ** k ) + a ).to_f / ( k * ( tg3 ** ( k - 1 ).to_f ))
		tg5 = (( k - 1 ) * ( tg4 ** k ) + a ).to_f / ( k * ( tg4 ** ( k - 1 ).to_f ))
		tg6 = (( k - 1 ) * ( tg5 ** k ) + a ).to_f / ( k * ( tg5 ** ( k - 1 ).to_f ))
		tg7 = (( k - 1 ) * ( tg6 ** k ) + a ).to_f / ( k * ( tg6 ** ( k - 1 ).to_f ))
		tg8 = (( k - 1 ) * ( tg7 ** k ) + a ).to_f / ( k * ( tg7 ** ( k - 1 ).to_f ))
		tg9 = (( k - 1 ) * ( tg8 ** k ) + a ).to_f / ( k * ( tg8 ** ( k - 1 ).to_f ))
		tg10 = (( k - 1 ) * ( tg9 ** k ) + a ).to_f / ( k * ( tg9 ** ( k - 1 ).to_f ))
		diagamm_1_10_10(world,kara,tools,x,tg1,tg2,tg3,tg4,tg5,tg6,tg7,tg8,tg9,my_path)
	else
	    Output(kara,tools,world,app_path,menu,"Zahl ist nicht zwischen 0 und 1000","","")
	end
	Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end