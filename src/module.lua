local data = {
  employee="",
  date="",
  left=""
}

local name = {
  
  -- Boy names : 10 
  ["boy"] = {
    "Dave",
    "Bill",
    "Bob",
    "Sam",
    "Hunter",
    "Paul",
    "Sanjay",
    "Robert",
    "Andrew",
    "Matt"
  },

  -- Girl names : 10 
  ["girl"] = {
    "Sarah",
    "Sandra",
    "Cara",
    "Jillian",
    "Macy",
    "Kelsey",
    "Ashley",
    "Courtney",
    "Jessica",
    "Janet"
  }
}

_G.timetable = ""
_G.safelock = false 

function JSON(array,a,b,c)
	--local a = "Sanjay"
	--local b = "5.17.2017"
	--local c = "7:32pm EST"
	--print("yes")
	data["employee"] = a 
	data["date"] = b
	data["left"] = c
	return data["employee"],data["date"],data["left"]
end

function GenerateName()
  local x = math.random(1,2) -- boy or girl
	local y = math.random(1,10) -- possible 1 of 10 name
	if x == 1 then
	  return name["boy"][y]
	elseif x == 2 then
	  return name["girl"][x]
	elseif x >= 3 then
	  print("Module : X greater than 2. Not possible.")
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

function GenerateAttendance()
  local a = math.random(0,5)
  return a
end

function Format(e,t,m,d)
	local a = ""
	if d then
		a = tostring(t..":"..m..d)
	end
	if e == nil then
		return print("Event = Nil")
	elseif e == "time" then
		return a
	elseif e == "date" then
	  local b = tostring(t.."."..m..".2017")
		return b
	elseif e == "list" then
	  --JSON(data,GenerateName(),GenerateDate(),GenerateTime())
	  local e = GenerateName()
	  local f = GenerateDate()
	  local g = GenerateTime()
	  local h = GenerateAttendance()
	  print("| "..e.." | "..f.." | "..g.." | "..h.." of 5 | ")
	  print("-----------------------------------------------")
	end
end

function GenerateTicket()
  print("                [Work Schedule]                ")
  print("-----------------------------------------------")
  print("| Issued | "..os.date().." | ")
  print("-----------------------------------------------")
  num = 0
  while num < 8 do
    num = num + 1
    Format("list")
  end
  --break 
end

--[[
  num = 0
  while num < 8 do
    num = num + 1
    print(num)
  end
]]--


GenerateTicket()
--Format("list")
--JSON(data,GenerateName(),GenerateDate(),GenerateTime())

