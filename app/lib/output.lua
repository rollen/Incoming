Output = {}

function Output:new()
  obj = {}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Output:write(msg)
  self.message = msg
  SendChatMessage(msg, "BATTLEGROUND");
end
