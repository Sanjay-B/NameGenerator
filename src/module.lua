local data = {employee="",date="",left=""}

_G.timetable = ""


function JSON(array,a,b,c)
	--local a = "Sanjay"
	--local b = "5.17.2017"
	--local c = "7:32pm EST"
	data["employee"] = a
	data["date"] = b
	data["left"] = c
	print(data["employee"],data["date"],data["left"])
end

function Format(e,t,m,d)
	local a = ""
	if d then
		a = tostring(t..":"..m..d)
	end
	local b = tostring(t.."."..m..".2017")
	if e == nil then
		return print("Event = Nil")
	elseif e == "time" then
		return a
	elseif e == "date" then
		return b
	elseif 
	end
end

function GenerateDate()
	local m = math.random(1,12) -- month
	local d = math.random(1,31) -- day
	if d==1 or d==2 or d==3 or d==4 or d==5 or d==6 or d==7 or d==8 or d==9 then
		local f = tostring("0"..d)
	end
	return Format("date",m,d)
end

function GenerateTime()
	local t = math.random(1,12) -- hour
	local m = math.random(10,59) -- minutes
	local s = math.random(1,2) -- am/pm
	if s == 1 then
		_G.timetable = "am"
		return Format("time",t,m,_G.timetable)
	elseif s == 2 then
		_G.timetable = "pm"
		return Format("time",t,m,_G.timetable)
	end
	
end

JSON(data,"Sanjay Bhadra",GenerateDate(),GenerateTime())
