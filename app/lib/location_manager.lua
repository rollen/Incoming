LocationManager = {}

function LocationManager:new()
  obj = {}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function LocationManager:get_location()
  return GetMinimapZoneText();
end
