require("TSLib")
require("config")
require("Clound")
require("Hy")
require("Jqr")
require("Pyq")

Main_ID_W,Main_ID_H=getScreenSize()

if Main_ID_W == 1080 and Main_ID_H == 1920 then   
	Main_ID="Nexu5"
	require("Nexu5")
	closeApp("com.tencent.mm")
elseif Main_ID_W == 640 and Main_ID_H == 960 then 
	Main_ID="Ihone4"
	require("Ihone4")
	closeApp("com.tencent.xin")
else
end


mSleep(2000)
function starwx()
	if Main_ID=="Nexu5" then;runApp("com.tencent.mm");else;runApp("com.tencent.xin");end

	mSleep(1000)
	if Config_col(if_star_wx[1]) and Config_col(if_star_wx[2])  and Config_col(if_star_wx[3])  then
		starwx()
	elseif Config_col(if_Table_wx[1]) and Config_col(if_Table_wx[6]) then
		mSleep(3000)
	else
		starwx()
	end

end
 starwx()

require("Num")




 if Josn_Pyq_gn=="0" then
 	Hy_start_file()
 elseif  Josn_Pyq_gn=="1" then
 		Pyq_start()
 elseif  Josn_Pyq_gn=="2" then
 		Jqr_start_lt()
 elseif  Josn_Pyq_gn=="3" then
 		Jqr_start_new()
 else
 		dialog("UFO")
 end


dialog("你好")