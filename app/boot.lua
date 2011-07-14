Boot = {}
function printme()
  print("e")
end

function Boot:new()
  obj = {}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Boot:createApp()
  print("app started")
end
