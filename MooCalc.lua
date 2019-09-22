-- Kurzes Commandline Addon um schnell einen Preis fürs AH zu berechnen.

local function ParseArgs(msg)
	local firstNumber, lastNumber = string.match(msg, "^(%d+)*([0-9,\,]+)")
	if string.find(lastNumber, ",")~=nil then
		lastNumber = string.gsub(lastNumber, ",", ".")
	end
	return firstNumber, lastNumber
end

SLASH_MOOCALC1 = "/moocalc";
SLASH_MOOCALC2 = "/mooc";

function SlashCmdList.MOOCALC(msg, editbox)
	if msg == "" then
		print("\124cffff9933MooCalc Version: " .. GetAddOnMetadata("MooCalc", "Version") .. "\124r")
		print("\124cffff9933MooCalc Usage: /mooc StackSize*AmountMoney\124r")
	else
		local firstNumber, lastNumber = ParseArgs(msg)
		print(firstNumber*lastNumber)
	end
end
