LocationMessage = {}

function LocationMessage:new(output)
  obj = {output = output}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function LocationMessage:create_incoming_message(current_location)
  self.output:write( "<AddOn:Incoming> Incoming enemies at " .. current_location )
end

function LocationMessage:create_all_clear_message(current_location)
  self.output:write( "<AddOn:Incoming> " .. current_location .. " is all clear")
end
