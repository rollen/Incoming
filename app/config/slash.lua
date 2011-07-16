SLASH_INC1 = '/inc'
function SlashCmdList.INC(msg, editbox)
  local location_message_controller = LocationMessageControllerFactory:new():createObject()
  location_message_controller:on_zone_changed()
end
