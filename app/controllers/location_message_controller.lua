LocationMessageController = {}

function LocationMessageController:new(location_message, location_manager)
  obj = {location_message = location_message, location_manager = location_manager}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function LocationMessageController:on_incoming_button_pressed()
  if (self.location_manager:player_in_valid_zone()) then
    self.location_message:create_incoming_message(self.location_manager:current_location())
  end
end

function LocationMessageController:on_all_clear_button_pressed()
  if (self.location_manager:player_in_valid_zone()) then
    self.location_message:create_all_clear_message(self.location_manager:current_location())
  end
end

function LocationMessageController:on_zone_changed()
  if(self.location_manager:player_in_valid_zone()) then
    print("valid")
    LocationMessageView:Show()
  else
    print("invalid")
    LocationMessageView:Hide()
  end
end
