LocationMessageController = {}

function LocationMessageController:new(location_message, output)
  obj = {location_message = location_message, output = output}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function LocationMessageController:on_incoming_button_pressed()
  self.output:write(self.location_message:create_incoming_message())
end

function LocationMessageController:on_all_clear_button_pressed()
  self.output:write(self.location_message:create_all_clear_message())
end

function LocationMessageController:on_enter_battleground()
  LocationMessageView:Show()
end

function LocationMessageController:on_leave_battleground()
end
