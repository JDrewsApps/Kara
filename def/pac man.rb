def pac_man(pack) 
kara = pack[0]
tools = pack[1]
world = pack[2]
my_path = pack[3]
menu = pack[4]
global_path = pack[5]
ip = pack[6]
name = pack[7]
app_path = pack[8]
key_control = pack[9]
k = 0
p = 0
l = 1
world.setSize(28,38)
world.clearAll
`"#{my_path}"mouse zoomKara`
`"#{my_path}"mouse setKaraMushroom`
if key_control == true
	x = `"#{my_path}"mouse getRasterPosition`
	y = x.split(";")
	s1 = ((y[3].to_i-y[1].to_i)/38*32.5+y[1].to_i).round
	s2 = ((y[2].to_i-y[0].to_i)/28*4.5+y[0].to_i).round
    s3 = ((y[3].to_i-y[1].to_i)/38*34.5+y[1].to_i).round
	s4 = ((y[2].to_i-y[0].to_i)/28*2.5+y[0].to_i).round
    s5 = ((y[3].to_i-y[1].to_i)/38*36.5+y[1].to_i).round
	s6 = ((y[2].to_i-y[0].to_i)/28*4.5+y[0].to_i).round
    s7 = ((y[3].to_i-y[1].to_i)/38*34.5+y[1].to_i).round
	s8 = ((y[2].to_i-y[0].to_i)/28*6.5+y[0].to_i).round
	ss = "W;"+s2.to_s+";"+s1.to_s+";A;"+s4.to_s+";"+s3.to_s+";S;"+s6.to_s+";"+s5.to_s+";D;"+s8.to_s+";"+s7.to_s
	IO.popen("#{my_path}Keypress #{ss}")
end
if menu == "app"
    Control(kara,tools,world,app_path,"c/n/u/n/l/n/r/n/d/n/s%",nil,nil)
end
while k == 0
world.clearAll
world.setTree(0,30,true)
world.setTree(1,30,true)
world.setTree(2,30,true)
world.setTree(3,30,true)
world.setTree(4,30,true)
world.setTree(5,30,true)
world.setTree(6,30,true)
world.setTree(7,30,true)
world.setTree(8,30,true)
world.setTree(9,30,true)
world.setTree(10,30,true)
world.setTree(11,30,true)
world.setTree(12,30,true)
world.setTree(13,30,true)
world.setTree(14,30,true)
world.setTree(15,30,true)
world.setTree(16,30,true)
world.setTree(17,30,true)
world.setTree(18,30,true)
world.setTree(19,30,true)
world.setTree(20,30,true)
world.setTree(21,30,true)
world.setTree(22,30,true)
world.setTree(23,30,true)
world.setTree(24,30,true)
world.setTree(25,30,true)
world.setTree(26,30,true)
world.setTree(27,30,true)
world.setTree(27,29,true)
world.setTree(27,28,true)
world.setTree(27,27,true)
world.setTree(27,26,true)
world.setTree(27,25,true)
world.setTree(27,24,true)
world.setTree(27,23,true)
world.setTree(0,29,true)
world.setTree(0,28,true)
world.setTree(0,27,true)
world.setTree(0,26,true)
world.setTree(2,28,true)
world.setTree(3,28,true)
world.setTree(4,28,true)
world.setTree(5,28,true)
world.setTree(6,28,true)
world.setTree(7,28,true)
world.setTree(8,28,true)
world.setTree(9,28,true)
world.setTree(10,28,true)
world.setTree(11,28,true)
world.setTree(13,28,true)
world.setTree(14,28,true)
world.setTree(16,28,true)
world.setTree(17,28,true)
world.setTree(18,28,true)
world.setTree(19,28,true)
world.setTree(20,28,true)
world.setTree(21,28,true)
world.setTree(22,28,true)
world.setTree(23,28,true)
world.setTree(24,28,true)
world.setTree(25,28,true)
world.setTree(2,27,true)
world.setTree(3,27,true)
world.setTree(4,27,true)
world.setTree(5,27,true)
world.setTree(6,27,true)
world.setTree(7,27,true)
world.setTree(8,27,true)
world.setTree(9,27,true)
world.setTree(10,27,true)
world.setTree(11,27,true)
world.setTree(13,27,true)
world.setTree(14,27,true)
world.setTree(16,27,true)
world.setTree(17,27,true)
world.setTree(18,27,true)
world.setTree(19,27,true)
world.setTree(20,27,true)
world.setTree(21,27,true)
world.setTree(22,27,true)
world.setTree(23,27,true)
world.setTree(24,27,true)
world.setTree(25,27,true)
world.setTree(0,25,true)
world.setTree(1,25,true)
world.setTree(7,26,true)
world.setTree(8,26,true)
world.setTree(13,26,true)
world.setTree(14,26,true)
world.setTree(13,25,true)
world.setTree(14,25,true)
world.setTree(12,25,true)
world.setTree(11,25,true)
world.setTree(10,25,true)
world.setTree(7,25,true)
world.setTree(7,24,true)
world.setTree(8,24,true)
world.setTree(8,25,true)
world.setTree(15,25,true)
world.setTree(16,25,true)
world.setTree(17,25,true)
world.setTree(19,26,true)
world.setTree(19,25,true)
world.setTree(19,24,true)
world.setTree(20,24,true)
world.setTree(20,25,true)
world.setTree(20,26,true)
world.setTree(10,24,true)
world.setTree(11,24,true)
world.setTree(12,24,true)
world.setTree(13,24,true)
world.setTree(14,24,true)
world.setTree(15,24,true)
world.setTree(16,24,true)
world.setTree(17,24,true)
world.setTree(11,22,true)
world.setTree(10,22,true)
world.setTree(9,22,true)
world.setTree(8,22,true)
world.setTree(7,22,true)
world.setTree(7,21,true)
world.setTree(8,21,true)
world.setTree(9,21,true)
world.setTree(10,21,true)
world.setTree(11,21,true)
world.setTree(0,24,true)
world.setTree(0,23,true)
world.setTree(0,22,true)
world.setTree(0,21,true)
world.setTree(0,20,true)
world.setTree(0,19,true)
world.setTree(4,25,true)
world.setTree(5,25,true)
world.setTree(5,21,true)
world.setTree(5,22,true)
world.setTree(5,23,true)
world.setTree(5,24,true)
world.setTree(4,24,true)
world.setTree(4,23,true)
world.setTree(4,22,true)
world.setTree(4,21,true)
world.setTree(3,21,true)
world.setTree(2,21,true)
world.setTree(2,22,true)
world.setTree(3,22,true)
world.setTree(2,25,true)
world.setTree(2,24,true)
world.setTree(1,24,true)
world.setTree(1,19,true)
world.setTree(2,19,true)
world.setTree(3,19,true)
world.setTree(4,19,true)
world.setTree(5,19,true)
world.setTree(13,22,true)
world.setTree(14,22,true)
world.setTree(14,21,true)
world.setTree(13,21,true)
world.setTree(13,20,true)
world.setTree(14,20,true)
world.setTree(13,19,true)
world.setTree(12,19,true)
world.setTree(11,19,true)
world.setTree(10,19,true)
world.setTree(14,19,true)
world.setTree(15,19,true)
world.setTree(16,19,true)
world.setTree(17,19,true)
world.setTree(7,19,true)
world.setTree(8,19,true)
world.setTree(16,21,true)
world.setTree(16,22,true)
world.setTree(17,22,true)
world.setTree(18,22,true)
world.setTree(19,22,true)
world.setTree(20,22,true)
world.setTree(20,21,true)
world.setTree(19,21,true)
world.setTree(18,21,true)
world.setTree(17,21,true)
world.setTree(23,21,true)
world.setTree(22,21,true)
world.setTree(22,22,true)
world.setTree(22,23,true)
world.setTree(22,24,true)
world.setTree(22,25,true)
world.setTree(24,21,true)
world.setTree(25,21,true)
world.setTree(23,22,true)
world.setTree(24,22,true)
world.setTree(25,22,true)
world.setTree(23,23,true)
world.setTree(23,24,true)
world.setTree(23,25,true)
world.setTree(26,24,true)
world.setTree(25,24,true)
world.setTree(25,25,true)
world.setTree(26,25,true)
world.setTree(27,22,true)
world.setTree(27,21,true)
world.setTree(27,20,true)
world.setTree(27,19,true)
world.setTree(26,19,true)
world.setTree(25,19,true)
world.setTree(24,19,true)
world.setTree(23,19,true)
world.setTree(22,19,true)
world.setTree(20,19,true)
world.setTree(19,19,true)
world.setTree(7,18,true)
world.setTree(8,18,true)
world.setTree(8,17,true)
world.setTree(8,16,true)
world.setTree(8,15,true)
world.setTree(7,15,true)
world.setTree(7,16,true)
world.setTree(7,17,true)
world.setTree(7,13,true)
world.setTree(8,13,true)
world.setTree(7,12,true)
world.setTree(8,12,true)
world.setTree(7,11,true)
world.setTree(8,11,true)
world.setTree(7,10,true)
world.setTree(8,10,true)
world.setTree(7,9,true)
world.setTree(8,9,true)
world.setTree(7,8,true)
world.setTree(8,8,true)
world.setTree(7,7,true)
world.setTree(8,7,true)
world.setTree(7,6,true)
world.setTree(8,6,true)
world.setTree(9,9,true)
world.setTree(9,10,true)
world.setTree(10,9,true)
world.setTree(11,9,true)
world.setTree(11,10,true)
world.setTree(10,10,true)
world.setTree(5,18,true)
world.setTree(5,17,true)
world.setTree(5,16,true)
world.setTree(5,15,true)
world.setTree(4,15,true)
world.setTree(3,15,true)
world.setTree(2,15,true)
world.setTree(1,15,true)
world.setTree(0,15,true)
world.setTree(0,16,true)
world.setTree(1,16,true)
world.setTree(2,16,true)
world.setTree(3,16,true)
world.setTree(4,16,true)
world.setTree(4,17,true)
world.setTree(3,17,true)
world.setTree(2,17,true)
world.setTree(1,17,true)
world.setTree(0,17,true)
world.setTree(0,18,true)
world.setTree(1,18,true)
world.setTree(2,18,true)
world.setTree(3,18,true)
world.setTree(4,18,true)
world.setTree(5,13,true)
world.setTree(4,13,true)
world.setTree(3,13,true)
world.setTree(2,13,true)
world.setTree(1,13,true)
world.setTree(0,13,true)
world.setTree(0,12,true)
world.setTree(1,12,true)
world.setTree(2,12,true)
world.setTree(3,12,true)
world.setTree(4,12,true)
world.setTree(5,12,true)
world.setTree(5,11,true)
world.setTree(5,10,true)
world.setTree(5,9,true)
world.setTree(4,9,true)
world.setTree(3,9,true)
world.setTree(2,9,true)
world.setTree(1,9,true)
world.setTree(0,9,true)
world.setTree(0,10,true)
world.setTree(1,10,true)
world.setTree(2,10,true)
world.setTree(3,10,true)
world.setTree(4,10,true)
world.setTree(4,11,true)
world.setTree(3,11,true)
world.setTree(2,11,true)
world.setTree(1,11,true)
world.setTree(0,11,true)
world.setTree(0,8,true)
world.setTree(0,7,true)
world.setTree(0,6,true)
world.setTree(0,5,true)
world.setTree(0,4,true)
world.setTree(0,3,true)
world.setTree(0,2,true)
world.setTree(0,1,true)
world.setTree(0,0,true)
world.setTree(1,0,true)
world.setTree(2,0,true)
world.setTree(3,0,true)
world.setTree(4,0,true)
world.setTree(5,0,true)
world.setTree(6,0,true)
world.setTree(7,0,true)
world.setTree(8,0,true)
world.setTree(9,0,true)
world.setTree(10,0,true)
world.setTree(11,0,true)
world.setTree(12,0,true)
world.setTree(13,0,true)
world.setTree(14,0,true)
world.setTree(15,0,true)
world.setTree(16,0,true)
world.setTree(17,0,true)
world.setTree(18,0,true)
world.setTree(19,0,true)
world.setTree(20,0,true)
world.setTree(21,0,true)
world.setTree(22,0,true)
world.setTree(23,0,true)
world.setTree(24,0,true)
world.setTree(25,0,true)
world.setTree(26,0,true)
world.setTree(27,0,true)
world.setTree(5,6,true)
world.setTree(4,6,true)
world.setTree(3,6,true)
world.setTree(2,6,true)
world.setTree(2,7,true)
world.setTree(3,7,true)
world.setTree(4,7,true)
world.setTree(5,7,true)
world.setTree(2,2,true)
world.setTree(2,3,true)
world.setTree(2,4,true)
world.setTree(3,4,true)
world.setTree(4,4,true)
world.setTree(5,4,true)
world.setTree(5,3,true)
world.setTree(5,2,true)
world.setTree(3,2,true)
world.setTree(4,2,true)
world.setTree(3,3,true)
world.setTree(4,3,true)
world.setTree(7,2,true)
world.setTree(8,2,true)
world.setTree(9,2,true)
world.setTree(10,2,true)
world.setTree(11,2,true)
world.setTree(11,3,true)
world.setTree(11,4,true)
world.setTree(10,4,true)
world.setTree(9,4,true)
world.setTree(8,4,true)
world.setTree(7,4,true)
world.setTree(7,3,true)
world.setTree(8,3,true)
world.setTree(9,3,true)
world.setTree(10,3,true)
world.setTree(10,6,true)
world.setTree(10,7,true)
world.setTree(11,7,true)
world.setTree(11,6,true)
world.setTree(12,6,true)
world.setTree(13,6,true)
world.setTree(14,6,true)
world.setTree(15,6,true)
world.setTree(16,6,true)
world.setTree(16,7,true)
world.setTree(15,7,true)
world.setTree(14,7,true)
world.setTree(13,7,true)
world.setTree(12,7,true)
world.setTree(17,6,true)
world.setTree(17,7,true)
world.setTree(13,8,true)
world.setTree(13,9,true)
world.setTree(13,10,true)
world.setTree(14,10,true)
world.setTree(14,9,true)
world.setTree(14,8,true)
world.setTree(13,4,true)
world.setTree(13,3,true)
world.setTree(13,2,true)
world.setTree(13,1,true)
world.setTree(14,1,true)
world.setTree(14,2,true)
world.setTree(14,3,true)
world.setTree(14,4,true)
world.setTree(27,1,true)
world.setTree(27,2,true)
world.setTree(25,2,true)
world.setTree(24,2,true)
world.setTree(23,2,true)
world.setTree(22,2,true)
world.setTree(22,3,true)
world.setTree(22,4,true)
world.setTree(23,4,true)
world.setTree(24,4,true)
world.setTree(25,4,true)
world.setTree(25,3,true)
world.setTree(24,3,true)
world.setTree(23,3,true)
world.setTree(20,2,true)
world.setTree(20,3,true)
world.setTree(20,4,true)
world.setTree(19,4,true)
world.setTree(18,4,true)
world.setTree(17,4,true)
world.setTree(16,4,true)
world.setTree(16,3,true)
world.setTree(16,2,true)
world.setTree(17,2,true)
world.setTree(17,3,true)
world.setTree(18,3,true)
world.setTree(18,2,true)
world.setTree(19,2,true)
world.setTree(19,3,true)
world.setTree(27,3,true)
world.setTree(27,4,true)
world.setTree(27,5,true)
world.setTree(25,6,true)
world.setTree(24,6,true)
world.setTree(23,6,true)
world.setTree(22,6,true)
world.setTree(22,7,true)
world.setTree(23,7,true)
world.setTree(24,7,true)
world.setTree(25,7,true)
world.setTree(19,6,true)
world.setTree(19,7,true)
world.setTree(19,8,true)
world.setTree(20,6,true)
world.setTree(20,7,true)
world.setTree(20,8,true)
world.setTree(20,9,true)
world.setTree(19,9,true)
world.setTree(18,9,true)
world.setTree(17,9,true)
world.setTree(16,9,true)
world.setTree(16,10,true)
world.setTree(17,10,true)
world.setTree(18,10,true)
world.setTree(19,10,true)
world.setTree(20,10,true)
world.setTree(27,6,true)
world.setTree(27,7,true)
world.setTree(27,8,true)
world.setTree(27,9,true)
world.setTree(26,9,true)
world.setTree(25,9,true)
world.setTree(24,9,true)
world.setTree(23,9,true)
world.setTree(22,9,true)
world.setTree(22,10,true)
world.setTree(22,11,true)
world.setTree(22,13,true)
world.setTree(22,12,true)
world.setTree(23,13,true)
world.setTree(24,13,true)
world.setTree(25,13,true)
world.setTree(26,13,true)
world.setTree(27,13,true)
world.setTree(27,12,true)
world.setTree(27,11,true)
world.setTree(27,10,true)
world.setTree(26,10,true)
world.setTree(25,10,true)
world.setTree(24,10,true)
world.setTree(23,10,true)
world.setTree(23,11,true)
world.setTree(23,12,true)
world.setTree(24,12,true)
world.setTree(25,12,true)
world.setTree(26,12,true)
world.setTree(26,11,true)
world.setTree(25,11,true)
world.setTree(24,11,true)
world.setTree(19,15,true)
world.setTree(19,16,true)
world.setTree(19,17,true)
world.setTree(19,18,true)
world.setTree(20,15,true)
world.setTree(20,16,true)
world.setTree(20,17,true)
world.setTree(20,18,true)
world.setTree(22,18,true)
world.setTree(22,17,true)
world.setTree(22,16,true)
world.setTree(22,15,true)
world.setTree(23,15,true)
world.setTree(24,15,true)
world.setTree(25,15,true)
world.setTree(26,15,true)
world.setTree(27,15,true)
world.setTree(27,16,true)
world.setTree(27,17,true)
world.setTree(27,18,true)
world.setTree(26,18,true)
world.setTree(25,18,true)
world.setTree(24,18,true)
world.setTree(23,18,true)
world.setTree(23,17,true)
world.setTree(24,17,true)
world.setTree(25,17,true)
world.setTree(26,17,true)
world.setTree(26,16,true)
world.setTree(25,16,true)
world.setTree(24,16,true)
world.setTree(23,16,true)
world.setTree(10,17,true)
world.setTree(11,17,true)
world.setTree(12,17,true)
world.setTree(13,17,true)
world.setTree(14,17,true)
world.setTree(15,17,true)
world.setTree(16,17,true)
world.setTree(17,17,true)
world.setTree(10,16,true)
world.setTree(10,15,true)
world.setTree(10,14,true)
world.setTree(10,13,true)
world.setTree(10,12,true)
world.setTree(11,12,true)
world.setTree(11,13,true)
world.setTree(11,14,true)
world.setTree(11,15,true)
world.setTree(11,16,true)
world.setTree(12,16,true)
world.setTree(13,16,true)
world.setTree(14,16,true)
world.setTree(15,16,true)
world.setTree(16,16,true)
world.setTree(16,15,true)
world.setTree(16,14,true)
world.setTree(16,13,true)
world.setTree(16,12,true)
world.setTree(17,12,true)
world.setTree(17,13,true)
world.setTree(17,14,true)
world.setTree(17,15,true)
world.setTree(17,16,true)
world.setTree(12,12,true)
world.setTree(12,13,true)
world.setTree(15,12,true)
world.setTree(15,13,true)
world.setTree(19,11,true)
world.setTree(19,12,true)
world.setTree(19,13,true)
world.setTree(20,13,true)
world.setTree(20,12,true)
world.setTree(20,11,true)
world.setMushroom(12,14,true)
world.setMushroom(13,15,true)
world.setMushroom(15,14,true)
world.setMushroom(14,15,true)
world.setLeaf(1,29,true)
world.setLeaf(2,29,true)
world.setLeaf(3,29,true)
world.setLeaf(4,29,true)
world.setLeaf(5,29,true)
world.setLeaf(6,29,true)
world.setLeaf(7,29,true)
world.setLeaf(8,29,true)
world.setLeaf(9,29,true)
world.setLeaf(10,29,true)
world.setLeaf(11,29,true)
world.setLeaf(12,29,true)
world.setLeaf(13,29,true)
world.setLeaf(14,29,true)
world.setLeaf(15,29,true)
world.setLeaf(16,29,true)
world.setLeaf(17,29,true)
world.setLeaf(18,29,true)
world.setLeaf(19,29,true)
world.setLeaf(20,29,true)
world.setLeaf(21,29,true)
world.setLeaf(22,29,true)
world.setLeaf(23,29,true)
world.setLeaf(24,29,true)
world.setLeaf(25,29,true)
world.setLeaf(26,29,true)
world.setLeaf(1,28,true)
world.setLeaf(1,27,true)
world.setLeaf(1,26,true)
world.setLeaf(2,26,true)
world.setLeaf(3,26,true)
world.setLeaf(4,26,true)
world.setLeaf(5,26,true)
world.setLeaf(6,26,true)
world.setLeaf(9,26,true)
world.setLeaf(10,26,true)
world.setLeaf(11,26,true)
world.setLeaf(12,26,true)
world.setLeaf(12,27,true)
world.setLeaf(12,28,true)
world.setLeaf(6,25,true)
world.setLeaf(6,24,true)
world.setLeaf(6,23,true)
world.setLeaf(7,23,true)
world.setLeaf(8,23,true)
world.setLeaf(9,23,true)
world.setLeaf(9,24,true)
world.setLeaf(9,25,true)
world.setLeaf(15,28,true)
world.setLeaf(15,27,true)
world.setLeaf(15,26,true)
world.setLeaf(16,26,true)
world.setLeaf(17,26,true)
world.setLeaf(18,26,true)
world.setLeaf(18,25,true)
world.setLeaf(18,24,true)
world.setLeaf(18,23,true)
world.setLeaf(19,23,true)
world.setLeaf(20,23,true)
world.setLeaf(21,23,true)
world.setLeaf(21,24,true)
world.setLeaf(21,25,true)
world.setLeaf(21,26,true)
world.setLeaf(22,26,true)
world.setLeaf(23,26,true)
world.setLeaf(24,26,true)
world.setLeaf(25,26,true)
world.setLeaf(26,26,true)
world.setLeaf(26,27,true)
world.setLeaf(26,28,true)
world.setLeaf(10,23,true)
world.setLeaf(11,23,true)
world.setLeaf(12,23,true)
world.setLeaf(17,23,true)
world.setLeaf(16,23,true)
world.setLeaf(15,23,true)
world.setLeaf(12,22,true)
world.setLeaf(12,21,true)
world.setLeaf(12,20,true)
world.setLeaf(6,22,true)
world.setLeaf(6,21,true)
world.setLeaf(6,20,true)
world.setLeaf(7,20,true)
world.setLeaf(8,20,true)
world.setLeaf(9,20,true)
world.setLeaf(10,20,true)
world.setLeaf(11,20,true)
world.setLeaf(5,20,true)
world.setLeaf(4,20,true)
world.setLeaf(3,20,true)
world.setLeaf(2,20,true)
world.setLeaf(1,20,true)
world.setLeaf(1,21,true)
world.setLeaf(1,22,true)
world.setLeaf(1,23,true)
world.setLeaf(2,23,true)
world.setLeaf(3,23,true)
world.setLeaf(3,24,true)
world.setLeaf(3,25,true)
world.setLeaf(21,22,true)
world.setLeaf(21,21,true)
world.setLeaf(15,22,true)
world.setLeaf(15,21,true)
world.setLeaf(15,20,true)
world.setLeaf(16,20,true)
world.setLeaf(17,20,true)
world.setLeaf(18,20,true)
world.setLeaf(19,20,true)
world.setLeaf(20,20,true)
world.setLeaf(21,20,true)
world.setLeaf(24,25,true)
world.setLeaf(24,24,true)
world.setLeaf(24,23,true)
world.setLeaf(25,23,true)
world.setLeaf(26,23,true)
world.setLeaf(26,22,true)
world.setLeaf(26,21,true)
world.setLeaf(26,20,true)
world.setLeaf(25,20,true)
world.setLeaf(24,20,true)
world.setLeaf(23,20,true)
world.setLeaf(22,20,true)
world.setLeaf(6,19,true)
world.setLeaf(6,18,true)
world.setLeaf(6,17,true)
world.setLeaf(6,16,true)
world.setLeaf(6,15,true)
world.setLeaf(6,14,true)
world.setLeaf(6,13,true)
world.setLeaf(6,12,true)
world.setLeaf(6,11,true)
world.setLeaf(6,10,true)
world.setLeaf(6,9,true)
world.setLeaf(6,8,true)
world.setLeaf(6,7,true)
world.setLeaf(6,6,true)
world.setLeaf(7,5,true)
world.setLeaf(6,5,true)
world.setLeaf(8,5,true)
world.setLeaf(9,5,true)
world.setLeaf(9,6,true)
world.setLeaf(9,7,true)
world.setLeaf(9,8,true)
world.setLeaf(10,8,true)
world.setLeaf(11,8,true)
world.setLeaf(12,8,true)
world.setLeaf(5,8,true)
world.setLeaf(4,8,true)
world.setLeaf(3,8,true)
world.setLeaf(2,8,true)
world.setLeaf(1,8,true)
world.setLeaf(1,7,true)
world.setLeaf(1,6,true)
world.setLeaf(1,5,true)
world.setLeaf(1,4,true)
world.setLeaf(1,3,true)
world.setLeaf(1,2,true)
world.setLeaf(1,1,true)
world.setLeaf(2,1,true)
world.setLeaf(3,1,true)
world.setLeaf(2,5,true)
world.setLeaf(3,5,true)
world.setLeaf(4,5,true)
world.setLeaf(5,5,true)
world.setLeaf(4,1,true)
world.setLeaf(5,1,true)
world.setLeaf(6,1,true)
world.setLeaf(6,2,true)
world.setLeaf(6,3,true)
world.setLeaf(6,4,true)
world.setLeaf(7,1,true)
world.setLeaf(8,1,true)
world.setLeaf(9,1,true)
world.setLeaf(10,1,true)
world.setLeaf(11,1,true)
world.setLeaf(12,1,true)
world.setLeaf(12,2,true)
world.setLeaf(12,3,true)
world.setLeaf(10,5,true)
world.setLeaf(11,5,true)
world.setLeaf(12,5,true)
world.setLeaf(12,4,true)
world.setLeaf(15,8,true)
world.setLeaf(16,8,true)
world.setLeaf(17,8,true)
world.setLeaf(18,8,true)
world.setLeaf(18,7,true)
world.setLeaf(18,6,true)
world.setLeaf(18,5,true)
world.setLeaf(17,5,true)
world.setLeaf(16,5,true)
world.setLeaf(15,5,true)
world.setLeaf(14,5,true)
world.setLeaf(13,5,true)
world.setLeaf(15,4,true)
world.setLeaf(15,3,true)
world.setLeaf(15,2,true)
world.setLeaf(15,1,true)
world.setLeaf(16,1,true)
world.setLeaf(17,1,true)
world.setLeaf(18,1,true)
world.setLeaf(19,1,true)
world.setLeaf(20,1,true)
world.setLeaf(21,1,true)
world.setLeaf(22,1,true)
world.setLeaf(23,1,true)
world.setLeaf(24,1,true)
world.setLeaf(25,1,true)
world.setLeaf(26,1,true)
world.setLeaf(26,2,true)
world.setLeaf(21,2,true)
world.setLeaf(21,3,true)
world.setLeaf(21,4,true)
world.setLeaf(21,5,true)
world.setLeaf(20,5,true)
world.setLeaf(19,5,true)
world.setLeaf(22,5,true)
world.setLeaf(23,5,true)
world.setLeaf(24,5,true)
world.setLeaf(25,5,true)
world.setLeaf(26,5,true)
world.setLeaf(26,4,true)
world.setLeaf(26,3,true)
world.setLeaf(21,6,true)
world.setLeaf(21,7,true)
world.setLeaf(21,8,true)
world.setLeaf(21,9,true)
world.setLeaf(22,8,true)
world.setLeaf(23,8,true)
world.setLeaf(24,8,true)
world.setLeaf(25,8,true)
world.setLeaf(26,8,true)
world.setLeaf(26,7,true)
world.setLeaf(26,6,true)
world.setLeaf(21,10,true)
world.setLeaf(21,11,true)
world.setLeaf(21,12,true)
world.setLeaf(21,13,true)
world.setLeaf(21,14,true)
world.setLeaf(21,15,true)
world.setLeaf(21,16,true)
world.setLeaf(21,17,true)
world.setLeaf(21,18,true)
world.setLeaf(21,19,true)

world.setLeaf(4,31,true)
world.setLeaf(5,32,true)
world.setLeaf(3,32,true)
world.setLeaf(3,33,true)
world.setLeaf(4,33,true)
world.setLeaf(5,33,true)
world.setLeaf(3,34,true)
world.setLeaf(4,34,true)
world.setLeaf(5,34,true)
world.setLeaf(4,35,true)
world.setLeaf(5,35,true)
world.setLeaf(3,35,true)
world.setLeaf(6,33,true)
world.setLeaf(2,33,true)
world.setLeaf(6,35,true)
world.setLeaf(2,35,true)
world.setLeaf(7,34,true)
world.setLeaf(1,34,true)
world.setLeaf(3,36,true)
world.setLeaf(5,36,true)
world.setLeaf(4,37,true)
kara.setPosition(14,23)
kara.setDirection(1)
if l == 1
e = 100
elsif l == 2
e = 80
elsif l == 3
e = 60
elsif l == 4
e = 40
elsif l == 5
e = 20
end
x1 = 12
y1 = 14
d1 = "o"
x2 = 13
y2 = 15
d2 = "n"
x3 = 14
y3 = 15
d3 = "n"
x4 = 15
y4 = 14
d4 = "w"

le = 0
while k == 0 and le == 0
  
  de = 0
  if d1 == "o" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x1,y1,false)
      case s
        when 0

          if not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 1
          end
          if not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 2
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1)
            s = 3
          end
          if not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 4
          end
          if not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1) and not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1)
            s = 5
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 6
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1) and not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 7
          end
          if s == 0 
            if not world.isTree(x1-1,y1) or not world.isMushroom(x1-1,y1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          y1 = y1-1
          d1 = "n"
          t = 1
        when 2
          y1 = y1+1
          t = 1
          d1 = "s"
        when 3
          x1 = x1+1
          t = 1
          d1 = "o"
        when 4
          g = tools.random(1)
          if g == 0
            y1 = y1+1
            d1 = "s"
          elsif g == 1
            y1 = y1-1
            d1 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y1 = y1+1
            d1 = "s"
          elsif g == 1
            x1 = x1+1
            d1 = "o"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y1 = y1-1
            d1 = "n"
          elsif g == 1
            x1 = x1+1
            d1 = "o"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y1 = y1-1
            d1 = "n"
          elsif g == 1
            y1 = y1+1
            d1 = "s"
          elsif g == 2
            x1 = x1+1
            d1 = "o"
          end
          t = 1
        when 8
          x1 = x1-1
          d1 = "w"
          t = 1
      end
    end
    if x1 > 25 and y1 == 14
      if not world.isTree(0,y1) and not world.isMushroom(0,y1)
        x1 = 0
      else
        x1 = x1-1
        d1 = "w"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x1 or not y == y1 
      world.setMushroom(x1,y1,true)
      else
      k = 1
    end
    de =1
    tools.sleep(e)
  end
  if d1 == "n" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x1,y1,false)
      case s
        when 0
          if not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1)
            s = 1
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1)
            s = 2
          end
          if not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 3
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1)
            s = 4
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 5
          end
          if not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 6
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 7
          end
          if s == 0
            if not world.isTree(x1,y1+1) or not world.isMushroom(x1,y1+1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x1 = x1-1
          d1 = "w"
          t = 1
        when 2
          x1 = x1+1
          t = 1
          d1 = "o"
        when 3
          y1 = y1-1
          t = 1
          d1 = "n"
        when 4
          g = tools.random(1)
          if g == 0
            x1 = x1+1
            d1 = "o"
          elsif g == 1
            x1 = x1-1
            d1 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x1 = x1+1
            d1 = "o"
          elsif g == 1
            y1 = y1-1
            d1 = "n"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x1 = x1-1
            d1 = "w"
          elsif g == 1
            y1 = y1-1
            d1 = "n"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x1 = x1+1
            d1 = "o"
          elsif g == 1
            x1 = x1-1
            d1 = "w"
          elsif g == 2
            y1 = y1-1
            d1 = "n"
          end
          t = 1
        when 8
          y1 = y1+1
          d1 = "s"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x1 or not y == y1 
      world.setMushroom(x1,y1,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d1 == "s" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x1,y1,false)
      case s
        when 0
          if not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1)
            s = 1
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1)
            s = 2
          end
          if not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 3
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1)
            s = 4
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 5
          end
          if not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1) and not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 6
          end
          if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1) and not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1) and not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x1,y1-1) or not world.isMushroom(x1,y1-1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x1 = x1-1
          d1 = "w"
          t = 1
        when 2
          x1 = x1+1
          t = 1
          d1 = "o"
        when 3
          y1 = y1+1
          t = 1
          d1 = "s"
        when 4
          g = tools.random(1)
          if g == 0
            x1 = x1+1
            d1 = "o"
          elsif g == 1
            x1 = x1-1
            d1 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x1 = x1+1
            d1 = "o"
          elsif g == 1
            y1 = y1+1
            d1 = "s"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x1 = x1-1
            d1 = "w"
          elsif g == 1
            y1 = y1+1
            d1 = "s"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x1 = x1+1
            d1 = "o"
          elsif g == 1
            x1 = x1-1
            d1 = "w"
          elsif g == 2
            y1 = y1+1
            d1 = "s"
          end
          t = 1
        when 8
          y1 = y1-1
          d1 = "n"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x1 or not y == y1 
      world.setMushroom(x1,y1,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d1 == "w" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x1,y1,false)
      case s
        when 0
          if not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 1
          end
          if not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 2
          end
          if not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1)
            s = 3
          end
          if not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 4
          end
          if not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1) and not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1)
            s = 5
          end
          if not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1)
            s = 6
          end
          if not world.isTree(x1-1,y1) and not world.isMushroom(x1-1,y1) and not world.isTree(x1,y1-1) and not world.isMushroom(x1,y1-1) and not world.isTree(x1,y1+1) and not world.isMushroom(x1,y1+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x1+1,y1) and not world.isMushroom(x1+1,y1)
              s = 8
            else
              t = 1
            end
          end
        when 1
          y1 = y1-1
          d1 = "n"
          t = 1
        when 2
          y1 = y1+1
          t = 1
          d1 = "s"
        when 3
          x1 = x1-1
          t = 1
          d1 = "w"
        when 4
          g = tools.random(1)
          if g == 0
            y1 = y1+1
            d1 = "s"
          elsif g == 1
            y1 = y1-1
            d1 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y1 = y1+1
            d1 = "s"
          elsif g == 1
            x1 = x1-1
            d1 = "w"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y1 = y1-1
            d1 = "n"
          elsif g == 1
            x1 = x1-1
            d1 = "w"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y1 = y1-1
            d1 = "n"
          elsif g == 1
            y1 = y1+1
            d1 = "s"
          elsif g == 2
            x1 = x1-1
            d1 = "w"
          end
          t = 1
        when 8
          x1 = x1+1
          d1 = "o"
          t = 1
      end
    end
    if x1 < 2 and y1 == 14
      if not world.isTree(27,y1) and not world.isMushroom(27,y1)
        x1 = 27
      else
        x1 = x1+1
        d1 = "o"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x1 or not y == y1 
      world.setMushroom(x1,y1,true)
    else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  de = 0
  if d2 == "o" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x2,y2,false)
      case s
        when 0
          if not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 1
          end
          if not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 2
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2)
            s = 3
          end
          if not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 4
          end
          if not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1) and not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2)
            s = 5
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 6
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1) and not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 7
          end
          if s == 0 
            if not world.isTree(x2-1,y2) or not world.isMushroom(x2-1,y2)
              s = 8
            else
            t = 1
            end
          end
        when 1
          y2 = y2-1
          d2 = "n"
          t = 1
        when 2
          y2 = y2+1
          t = 1
          d2 = "s"
        when 3
          x2 = x2+1
          t = 1
          d2 = "o"
        when 4
          g = tools.random(1)
          if g == 0
            y2 = y2+1
            d2 = "s"
          elsif g == 1
            y2 = y2-1
            d2 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y2 = y2+1
            d2 = "s"
          elsif g == 1
            x2 = x2+1
            d2 = "o"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y2 = y2-1
            d2 = "n"
          elsif g == 1
            x2 = x2+1
            d2 = "o"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y2 = y2-1
            d2 = "n"
          elsif g == 1
            y2 = y2+1
            d2 = "s"
          elsif g == 2
            x2 = x2+1
            d2 = "o"
          end
          t = 1
        when 8
          x2 = x2-1
          d2 = "w"
          t = 1
      end
    end
    if x2 > 25 and y2 == 14
      if not world.isTree(0,y2) and not world.isMushroom(0,y2)
        x2 = 0
      else
        x2 = x2-1
        d2 = "w"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x2 or not y == y2
      world.setMushroom(x2,y2,true)
      else
      k = 1
    end
    de =1
    tools.sleep(e)
  end
  if d2 == "n" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x2,y2,false)
      case s
        when 0
          if not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2)
            s = 1
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2)
            s = 2
          end
          if not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 3
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2)
            s = 4
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 5
          end
          if not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 6
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 7
          end
          if s == 0
            if not world.isTree(x2,y2+1) or not world.isMushroom(x2,y2+1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x2 = x2-1
          d2 = "w"
          t = 1
        when 2
          x2 = x2+1
          t = 1
          d2 = "o"
        when 3
          y2 = y2-1
          t = 1
          d2 = "n"
        when 4
          g = tools.random(1)
          if g == 0
            x2 = x2+1
            d2 = "o"
          elsif g == 1
            x2 = x2-1
            d2 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x2 = x2+1
            d2 = "o"
          elsif g == 1
            y2 = y2-1
            d2 = "n"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x2 = x2-1
            d2 = "w"
          elsif g == 1
            y2 = y2-1
            d2 = "n"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x2 = x2+1
            d2 = "o"
          elsif g == 1
            x2 = x2-1
            d2 = "w"
          elsif g == 2
            y2 = y2-1
            d2 = "n"
          end
          t = 1
        when 8
          y2 = y2+1
          d2 = "s"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x2 or not y == y2
      world.setMushroom(x2,y2,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d2 == "s" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x2,y2,false)
      case s
        when 0
          if not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2)
            s = 1
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2)
            s = 2
          end
          if not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 3
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2)
            s = 4
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 5
          end
          if not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2) and not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 6
          end
          if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2) and not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2) and not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x2,y2-1) or not world.isMushroom(x2,y2-1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x2 = x2-1
          d2 = "w"
          t = 1
        when 2
          x2 = x2+1
          t = 1
          d2 = "o"
        when 3
          y2 = y2+1
          t = 1
          d2 = "s"
        when 4
          g = tools.random(1)
          if g == 0
            x2 = x2+1
            d2 = "o"
          elsif g == 1
            x2 = x2-1
            d2 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x2 = x2+1
            d2 = "o"
          elsif g == 1
            y2 = y2+1
            d2 = "s"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x2 = x2-1
            d2 = "w"
          elsif g == 1
            y2 = y2+1
            d2 = "s"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x2 = x2+1
            d2 = "o"
          elsif g == 1
            x2 = x2-1
            d2 = "w"
          elsif g == 2
            y2 = y2+1
            d2 = "s"
          end
          t = 1
        when 8
          y2 = y2-1
          d2 = "n"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x2 or not y == y2
      world.setMushroom(x2,y2,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d2 == "w" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x2,y2,false)
      case s
        when 0
          if not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 1
          end
          if not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 2
          end
          if not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2)
            s = 3
          end
          if not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 4
          end
          if not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1) and not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2)
            s = 5
          end
          if not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1)
            s = 6
          end
          if not world.isTree(x2-1,y2) and not world.isMushroom(x2-1,y2) and not world.isTree(x2,y2-1) and not world.isMushroom(x2,y2-1) and not world.isTree(x2,y2+1) and not world.isMushroom(x2,y2+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x2+1,y2) and not world.isMushroom(x2+1,y2)
              s = 8
            else
              t = 1
            end
          end
        when 1
          y2 = y2-1
          d2 = "n"
          t = 1
        when 2
          y2 = y2+1
          t = 1
          d2 = "s"
        when 3
          x2 = x2-1
          t = 1
          d2 = "w"
        when 4
          g = tools.random(1)
          if g == 0
            y2 = y2+1
            d2 = "s"
          elsif g == 1
            y2 = y2-1
            d2 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y2 = y2+1
            d2 = "s"
          elsif g == 1
            x2 = x2-1#
            d2 = "w"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y2 = y2-1
            d2 = "n"
          elsif g == 1
            x2 = x2-1
            d2 = "w"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y2 = y2-1
            d2 = "n"
          elsif g == 1
            y2 = y2+1
            d2 = "s"
          elsif g == 2
            x2 = x2-1
            d2 = "w"
          end
          t = 1
        when 8
          x2 = x2+1
          d2 = "o"
          t = 1
      end
    end
    if x2 < 2 and y2 == 14
      if not world.isTree(27,y2) and not world.isMushroom(27,y2)
        x2 = 27
      else
        x2 = x2+1
        d2 = "o"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x2 or not y == y2
      world.setMushroom(x2,y2,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  de = 0
  if d3 == "o" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x3,y3,false)
      case s
        when 0
          if not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 1
          end
          if not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 2
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3)
            s = 3
          end
          if not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 4
          end
          if not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1) and not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3)
            s = 5
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 6
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1) and not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 7
          end
          if s == 0 
            if not world.isTree(x3-1,y3) or not world.isMushroom(x3-1,y3)
              s = 8
            else
            t = 1
            end
          end
        when 1
          y3 = y3-1
          d3 = "n"
          t = 1
        when 2
          y3 = y3+1
          t = 1
          d3 = "s"
        when 3
          x3 = x3+1
          t = 1
          d3 = "o"
        when 4
          g = tools.random(1)
          if g == 0
            y3 = y3+1
            d3 = "s"
          elsif g == 1
            y3 = y3-1
            d3 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y3 = y3+1
            d3 = "s"
          elsif g == 1
            x3 = x3+1
            d3 = "o"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y3 = y3-1
            d3 = "n"
          elsif g == 1
            x3 = x3+1
            d3 = "o"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y3 = y3-1
            d3 = "n"
          elsif g == 1
            y3 = y3+1
            d3 = "s"
          elsif g == 2
            x3 = x3+1
            d3 = "o"
          end
          t = 1
        when 8
          x3 = x3-1
          d3 = "w"
          t = 1
      end
    end
    if x3 > 25 and y3 == 14
      if not world.isTree(0,y3) and not world.isMushroom(0,y3)
        x3 = 0
      else
        x3 = x3-1
        d3 = "w"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x3 or not y == y3
      world.setMushroom(x3,y3,true)
      else
      k = 1
    end
    de =1
    tools.sleep(e)
  end
  if d3 == "n" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x3,y3,false)
      case s
        when 0
          if not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3)
            s = 1
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3)
            s = 2
          end
          if not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 3
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3)
            s = 4
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 5
          end
          if not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 6
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 7
          end
          if s == 0
            if not world.isTree(x3,y3+1) or not world.isMushroom(x3,y3+1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x3 = x3-1
          d3 = "w"
          t = 1
        when 2
          x3 = x3+1
          t = 1
          d3 = "o"
        when 3
          y3 = y3-1
          t = 1
          d3 = "n"
        when 4
          g = tools.random(1)
          if g == 0
            x3 = x3+1
            d3 = "o"
          elsif g == 1
            x3 = x3-1
            d3 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x3 = x3+1
            d3 = "o"
          elsif g == 1
            y3 = y3-1
            d3 = "n"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x3 = x3-1
            d3 = "w"
          elsif g == 1
            y3 = y3-1
            d3 = "n"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x3 = x3+1
            d3 = "o"
          elsif g == 1
            x3 = x3-1
            d3 = "w"
          elsif g == 2
            y3 = y3-1
            d3 = "n"
          end
          t = 1
        when 8
          y3 = y3+1
          d3 = "s"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x3 or not y == y3
      world.setMushroom(x3,y3,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d3 == "s" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x3,y3,false)
      case s
        when 0
          if not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3)
            s = 1
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3)
            s = 2
          end
          if not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 3
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3)
            s = 4
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 5
          end
          if not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3) and not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 6
          end
          if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3) and not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3) and not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x3,y3-1) or not world.isMushroom(x3,y3-1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x3 = x3-1
          d3 = "w"
          t = 1
        when 2
          x3 = x3+1
          t = 1
          d3 = "o"
        when 3
          y3 = y3+1
          t = 1
          d3 = "s"
        when 4
          g = tools.random(1)
          if g == 0
            x3 = x3+1
            d3 = "o"
          elsif g == 1
            x3 = x3-1
            d3 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x3 = x3+1
            d3 = "o"
          elsif g == 1
            y3 = y3+1
            d3 = "s"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x3 = x3-1
            d3 = "w"
          elsif g == 1
            y3 = y3+1
            d3 = "s"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x3 = x3+1
            d3 = "o"
          elsif g == 1
            x3 = x3-1
            d3 = "w"
          elsif g == 2
            y3 = y3+1
            d3 = "s"
          end
          t = 1
        when 8
          y3 = y3-1
          d3 = "n"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x3 or not y == y3
      world.setMushroom(x3,y3,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d3 == "w" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x3,y3,false)
      case s
        when 0
          if not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 1
          end
          if not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 2
          end
          if not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3)
            s = 3
          end
          if not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 4
          end
          if not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1) and not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3)
            s = 5
          end
          if not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1)
            s = 6
          end
          if not world.isTree(x3-1,y3) and not world.isMushroom(x3-1,y3) and not world.isTree(x3,y3-1) and not world.isMushroom(x3,y3-1) and not world.isTree(x3,y3+1) and not world.isMushroom(x3,y3+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x3+1,y3) and not world.isMushroom(x3+1,y3)
              s = 8
            else
              t = 1
            end
          end
        when 1
          y3 = y3-1
          d3 = "n"
          t = 1
        when 2
          y3 = y3+1
          t = 1
          d3 = "s"
        when 3
          x3 = x3-1
          t = 1
          d3 = "w"
        when 4
          g = tools.random(1)
          if g == 0
            y3 = y3+1
            d3 = "s"
          elsif g == 1
            y3 = y3-1
            d3 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y3 = y3+1
            d3 = "s"
          elsif g == 1
            x3 = x3-1
            d3 = "w"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y3 = y3-1
            d3 = "n"
          elsif g == 1
            x3 = x3-1
            d3 = "w"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y3 = y3-1
            d3 = "n"
          elsif g == 1
            y3 = y3+1
            d3 = "s"
          elsif g == 2
            x3 = x3-1
            d3 = "w"
          end
          t = 1
        when 8
          x3 = x3+1
          d3 = "o"
          t = 1
      end
    end
    if x3 < 2 and y3 == 14
      if not world.isTree(27,y3) and not world.isMushroom(27,y3)
        x3 = 27
      else
        x3 = x3+1
        d3 = "o"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x3 or not y == y3
      world.setMushroom(x3,y3,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  de = 0
  if d4 == "o" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x4,y4,false)
      case s
        when 0
          if not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 1
          end
          if not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 2
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4)
            s = 3
          end
          if not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 4
          end
          if not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1) and not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4)
            s = 5
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 6
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1) and not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 7
          end
          if s == 0 
            if not world.isTree(x4-1,y4) or not world.isMushroom(x4-1,y4)
              s = 8
            else
            t = 1
            end
          end
        when 1
          y4 = y4-1
          d4 = "n"
          t = 1
        when 2
          y4 = y4+1
          t = 1
          d4 = "s"
        when 3
          x4 = x4+1
          t = 1
          d4 = "o"
        when 4
          g = tools.random(1)
          if g == 0
            y4 = y4+1
            d4 = "s"
          elsif g == 1
            y4 = y4-1
            d4 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y4 = y4+1
            d4 = "s"
          elsif g == 1
            x4 = x4+1
            d4 = "o"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y4 = y4-1
            d4 = "n"
          elsif g == 1
            x4 = x4+1
            d4 = "o"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y4 = y4-1
            d4 = "n"
          elsif g == 1
            y4 = y4+1
            d4 = "s"
          elsif g == 2
            x4 = x4+1
            d4 = "o"
          end
          t = 1
        when 8
          x4 = x4-1
          d4 = "w"
          t = 1
      end
    end
    if x4 > 25 and y4 == 14
      if not world.isTree(0,y4) and not world.isMushroom(0,y4)
        x4 = 0
      else
        x4 = x4-1
        d4 = "w"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x4 or not y == y4
      world.setMushroom(x4,y4,true)
      else
      k = 1
    end
    de =1
    tools.sleep(e)
  end
  if d4 == "n" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x4,y4,false)
      case s
        when 0
          if not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4)
            s = 1
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4)
            s = 2
          end
          if not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 3
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4)
            s = 4
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 5
          end
          if not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 6
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 7
          end
          if s == 0
            if not world.isTree(x4,y4+1) or not world.isMushroom(x4,y4+1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x4 = x4-1
          d4 = "w"
          t = 1
        when 2
          x4 = x4+1
          t = 1
          d4 = "o"
        when 3
          y4 = y4-1
          t = 1
          d4 = "n"
        when 4
          g = tools.random(1)
          if g == 0
            x4 = x4+1
            d4 = "o"
          elsif g == 1
            x4 = x4-1
            d4 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x4 = x4+1
            d4 = "o"
          elsif g == 1
            y4 = y4-1
            d4 = "n"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x4 = x4-1
            d4 = "w"
          elsif g == 1
            y4 = y4-1
            d4 = "n"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x4 = x4+1
            d4 = "o"
          elsif g == 1
            x4 = x4-1
            d4 = "w"
          elsif g == 2
            y4 = y4-1
            d4 = "n"
          end
          t = 1
        when 8
          y4 = y4+1
          d4 = "s"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x4 or not y == y4
      world.setMushroom(x4,y4,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d4 == "s" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x4,y4,false)
      case s
        when 0
          if not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4)
            s = 1
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4)
            s = 2
          end
          if not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 3
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4)
            s = 4
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 5
          end
          if not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4) and not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 6
          end
          if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4) and not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4) and not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x4,y4-1) or not world.isMushroom(x4,y4-1)
              s = 8
            else
            t = 1
            end
          end
        when 1
          x4 = x4-1
          d4 = "w"
          t = 1
        when 2
          x4 = x4+1
          t = 1
          d4 = "o"
        when 3
          y4 = y4+1
          t = 1
          d4 = "s"
        when 4
          g = tools.random(1)
          if g == 0
            x4 = x4+1
            d4 = "o"
          elsif g == 1
            x4 = x4-1
            d4 = "w"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            x4 = x4+1
            d4 = "o"
          elsif g == 1
            y4 = y4+1
            d4 = "s"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            x4 = x4-1
            d4 = "w"
          elsif g == 1
            y4 = y4+1
            d4 = "s"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            x4 = x4+1
            d4 = "o"
          elsif g == 1
            x4 = x4-1
            d4 = "w"
          elsif g == 2
            y4 = y4+1
            d4 = "s"
          end
          t = 1
        when 8
          y4 = y4-1
          d4 = "n"
          t = 1
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x4 or not y == y4
      world.setMushroom(x4,y4,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  if d4 == "w" and de == 0
    s = 0
    t = 0
    while t == 0
      world.setMushroom(x4,y4,false)
      case s
        when 0
          if not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 1
          end
          if not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 2
          end
          if not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4)
            s = 3
          end
          if not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 4
          end
          if not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1) and not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4)
            s = 5
          end
          if not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1)
            s = 6
          end
          if not world.isTree(x4-1,y4) and not world.isMushroom(x4-1,y4) and not world.isTree(x4,y4-1) and not world.isMushroom(x4,y4-1) and not world.isTree(x4,y4+1) and not world.isMushroom(x4,y4+1)
            s = 7
          end
          if s == 0
            if not world.isTree(x4+1,y4) and not world.isMushroom(x4+1,y4)
              s = 8
            else
              t = 1
            end
          end
        when 1
          y4 = y4-1
          d4 = "n"
          t = 1
        when 2
          y4 = y4+1
          t = 1
          d4 = "s"
        when 3
          x4 = x4-1
          t = 1
          d4 = "w"
        when 4
          g = tools.random(1)
          if g == 0
            y4 = y4+1
            d4 = "s"
          elsif g == 1
            y4 = y4-1
            d4 = "n"
          end
          t = 1
        when 5
          g = tools.random(1)
          if g == 0
            y4 = y4+1
            d4 = "s"
          elsif g == 1
            x4 = x4-1#
            d4 = "w"
          end
          t = 1
        when 6
          g = tools.random(1)
          if g == 0
            y4 = y4-1
            d4 = "n"
          elsif g == 1
            x4 = x4-1
            d4 = "w"
          end
          t = 1
        when 7
          g = tools.random(2)
          if g == 0
            y4 = y4-1
            d4 = "n"
          elsif g == 1
            y4 = y4+1
            d4 = "s"
          elsif g == 2
            x4 = x4-1
            d4 = "w"
          end
          t = 1
        when 8
          x4 = x4+1
          d4 = "o"
          t = 1
      end
    end
    
    if x4 < 2 and y4 == 14
      if not world.isTree(27,y4) and not world.isMushroom(27,y4)
        x4 = 27
      else
        x4 = x4+1
        d4 = "o"
      end
    end
    x = kara.getPosition.getX.to_i
    y = kara.getPosition.getY.to_i
    if not x == x4 or not y == y4
      world.setMushroom(x4,y4,true)
      else
      k = 1
    end
    de = 1
    tools.sleep(e)
  end
  de = 0
  pi = 0
  for i in 12..15
    for j in 12..15
      if world.isMushroom(i,j)
        pi = 1
      end
    end
  end
  if pi == 0
    world.setTree(13,12,true)
    world.setTree(14,12,true)
  end
  x = kara.getPosition.getX.to_i
  y = kara.getPosition.getY.to_i
  if (not x == 0 or not x == 27) and not y == 14
    if world.isMushroom(x-1,y) or world.isMushroom(x+1,y) or world.isMushroom(x,y-1) or world.isMushroom(x,y+1) or world.isMushroom(x+1,y-1) or world.isMushroom(x+1,y+1) or world.isMushroom(x-1,y+1) or world.isMushroom(x-1,y-1)
      k = 1
    end
  else
    if x == 0 and y == 14
      if world.isMushroom(27,14)
        k = 1
      end
    end
    if x == 27 and y == 14
      if world.isMushroom(0,14)
        k = 1
      end
    end
  end
  if not k == 1
    con = Control(kara,tools,world,app_path,"",nil,nil)
    if con == "u"
      world.setMushroom(4,32,true)
    elsif con == "d"
      world.setMushroom(4,36,true)
    elsif con == "l"
      world.setMushroom(2,34,true)
    elsif con == "r"
      world.setMushroom(6,34,true)
    end
    if world.isMushroom(4,32)
      world.setMushroom(4,32,false)
      kara.setDirection(0)
      d = 0
    end
    if world.isMushroom(6,34)
      world.setMushroom(6,34,false)
      kara.setDirection(3)
      d = 3
    end
    if world.isMushroom(2,34)
      world.setMushroom(2,34,false)
      kara.setDirection(1)
      d = 1
    end
    if world.isMushroom(4,36)
      world.setMushroom(4,36,false)
      kara.setDirection(2)
      d = 2
    end
  if not k == 1 and not kara.treeFront
    kara.move
  end
  if kara.onLeaf
    kara.removeLeaf
    p = p+1
  end
  end
  n = 0
  for i in 1..26
    for j in 1..29
      if world.isLeaf(i,j)
        n = 1
      end
    end
  end
  if n == 0
    le = 1
    l = l+1
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
    kara.turnRight
    tools.sleep(500)
  end
  tools.checkState
end
end
Output(kara,tools,world,app_path,menu,"du hast verlohren! Kara konnte #{p} Bläter fressen","","")
doler = File.open(my_path+"coin.txt").read.to_f
up = File.open(my_path+"updates.txt").read
bon = up[11].chr.to_i
au = (p.to_i*0.5).round
if not menu == "app"
  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins\n\rcoin bonus:*#{bon.to_s}\n\rgesammt gewinn:#{(au*bon).to_s} coins","","")
else
  Output(kara,tools,world,app_path,menu,"Du bekommst:#{au.to_s} coins~coin bonus:*#{bon.to_s}~gesammt gewinn:#{(au*bon).to_s} coins","","")
end
z = File.new(my_path+"coin.txt", "w+")
z.puts(doler+(au*bon))
z.close
system("Taskkill /IM keypress.exe /F")
Output(kara,tools,world,app_path,menu,"Drücke ok damit das Programm beendet wird","","")
end