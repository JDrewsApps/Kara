def newton_verfahren(pack)
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
au = ""
k = 3
a = Input(kara,tools,world,app_path,menu,"gib die Zahl ein aus der du die #{k}.Wurzel ziehen willst","i","","","")
x = (a**0.33333333333).round
au = "#{k}.Wurzel aus:#{a}~formel:((k-1)*(x**k)+a)/(k*(x**(k-1)))~"
x1 = (( k - 1 ) * ( x ** k ) + a ).to_f / ( k * ( x ** ( k - 1 ).to_f ))
au = au+"#{x1}= ((#{k}-1)*(#{x}**#{k})+#{a})/(#{k}*(#{x}**(#{k}-1)))~"
x2 = (( k - 1 ) * ( x1 ** k ) + a ).to_f / ( k * ( x1 ** ( k - 1 ).to_f ))
au = au+"#{x2}= ((#{k}-1)*(#{x1}**#{k})+#{a})/(#{k}*(#{x1}**(#{k}-1)))~"
x3 = (( k - 1 ) * ( x2 ** k ) + a ).to_f / ( k * ( x2 ** ( k - 1 ).to_f ))
au = au+"#{x3}= ((#{k}-1)*(#{x2}**#{k})+#{a})/(#{k}*(#{x2}**(#{k}-1)))~"
x4 = (( k - 1 ) * ( x3 ** k ) + a ).to_f / ( k * ( x3 ** ( k - 1 ).to_f ))
au = au+"#{x4}= ((#{k}-1)*(#{x3}**#{k})+#{a})/(#{k}*(#{x3}**(#{k}-1)))~"
r = ((x4*100000).round)/100000.0
au = au+"#{k}.Wurzel aus:#{a}=#{r}"
zeigeBuchstaben(pack,au,false)
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end