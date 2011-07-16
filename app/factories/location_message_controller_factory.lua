LocationMessageControllerFactory = {}

function LocationMessageControllerFactory:new()
  obj = {}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function LocationMessageControllerFactory:createObject()
  local valid_locations = 
  {
    "Stables", "Blacksmith", "Lumber Mill", "Gold Mine", "Trollbane Hall", "Defiler's Den", "Farm", -- Arathi
    "Mage Tower", "Draenei Ruins", "Blood Elf Tower", "Fel Reaver Ruins", -- EOTS
    "The Broken Temple", "Cauldron of Flames", "Central Bridge", "The Chilled Quagemire",
    "Eastern Bridge", "Flamewatch Tower", "The Forest of Shadows", "Glacial Falls", "The Steppe of Life",
    "The Sunken Ring", "Western Bridge", "Winter's Edge Tower", "Wintergrasp Fortress"
  };

  location_manager = LocationManager:new(valid_locations)
  output = Output:new()
  location_message = LocationMessage:new(output)
  location_message_controller = LocationMessageController:new(location_message, location_manager)
  
  return location_message_controller
end
