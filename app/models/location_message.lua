LocationMessage = {}

function LocationMessage:new(location_manager)
  obj = {location_manager = location_manager}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function LocationMessage:create_incoming_message()
  return ( "<AddOn:Incoming> Incoming enemies at " .. self:current_location() )
end

function LocationMessage:create_all_clear_message()
  return ( "<AddOn:Incoming> " .. self:current_location() .. " is all clear")
end

function LocationMessage:current_location()
  return self.location_manager:get_location()
end
