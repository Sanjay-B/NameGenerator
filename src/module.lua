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


function GenerateTime()
	local t = math.random(1,12) -- hour
	local m = math.random(10,59) -- minutes
	local s = math.random(1,2) -- am/pm
	if s == 1 then
		_G.timetable = "AM"
		return tostring(t..":"..m.._G.timetable)
	elseif s == 2 then
		_G.timetable = "PM"
		return tostring(t..":"..m.._G.timetable)
	end
	
end

JSON(data,"Sanjay Bhadra","5.17.2018",GenerateTime())
