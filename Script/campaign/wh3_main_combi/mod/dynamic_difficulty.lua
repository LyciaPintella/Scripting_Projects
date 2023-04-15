JadLogFile_Made = false
JadLogging_Enabled = true
Jadlog_Filename = "jadawin_dynamic_difficulty_log.txt"
Has_Logged = false

local function JADSESSIONLOG()
    if not JadLogging_Enabled then
        return
    end

    local logTimeStamp = os.date("%d, %m %Y %X")
    local popLog = io.open(Jadlog_Filename, "a+")

	---[[
   	 out("#### Dynamic Difficulty line 12: JadLogFile_Made is " .. tostring(JadLogFile_Made) .. " ####")
	--]]
    if not JadLogFile_Made then
        out("#### Dynamic Difficulty line 15: popLog is " .. tostring(popLog) .. " JadLogFile_Made is " ..
                tostring(JadLogFile_Made) .. " ####")
    else
        out("#### Dynamic Difficulty line 17: popLog is " .. tostring(popLog) .. " JadLogFile_Made is " ..
                tostring(JadLogFile_Made) .. " ####")
    end

    JadLogFile_Made = true

    if popLog then
        --popLog:write("NEW SESSION [" .. logTimeStamp .. "] \n")
        popLog:flush()
        popLog:close()
    else
        script_error(
            "WARNING: JADSESSIONLOG() could not open " .. Jadlog_Filename .. ". popLog is " .. tostring(popLog) ..
                ". Line 26. No mod log will be created past this point")
        JadLogging_Enabled = false
    end
end
JADSESSIONLOG()

local function JADLOG(text)
    out("#### Dynamic Difficulty line 42: JadLogFile_Made is " .. tostring(JadLogFile_Made) ..
            " . JadLogging_Enabled is " .. tostring(JadLogging_Enabled) .. " ####")
    if not JadLogging_Enabled then
        return
    end

    local logTimeStamp = os.date("%d, %m %Y %X")
    local logText = tostring(text)
    local popLog = io.open(Jadlog_Filename, "a+")

    out("#### Dynamic Difficulty line 51: Jadlog_Filename is " .. 
	---[[
		tostring(Jadlog_Filename) .. " . popLog is " .. tostring(popLog) .. " ####")
	--]]

    if popLog then
        popLog:write("Dynamic Difficulty: " .. logText .. " [" .. logTimeStamp .. "] \n")
        popLog:flush()
        popLog:close()
    else
        script_error("Dynamic Difficulty: WARNING: JADLOG() could not open " .. Jadlog_Filename ..
                         ", no mod log will be created past this point")
        JadLogging_Enabled = false
    end
end

local function jlog(text)
    JADLOG(tostring(text))
end