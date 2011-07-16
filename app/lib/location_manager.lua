LocationManager = {}

function LocationManager:new(valid_zones)
  obj = {valid_zones = valid_zones}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function LocationManager:current_location()
  return GetSubZoneText();
end

function LocationManager:player_in_valid_zone()
  local is_found = false
  local player_location = self:current_location()
  for index,valid_location in pairs(self.valid_zones) do
    if(valid_location == player_location) then
      is_found = true
    else
    end
  end
  return is_found
end
