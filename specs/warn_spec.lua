print(package.path)
require 'spec_helper'

describe("Message Controller", function()
  before(function()
    location_manager = LocationManager:new({"Stables"})
    output = Output:new()
    location_message = LocationMessage:new(output)
    location_message_controller = LocationMessageController:new(location_message, location_manager)
  end)

  it("should receive the enemy incoming event", function()
    location_message_controller:on_incoming_button_pressed()
    assert_equal( output.message ,"<AddOn:Incoming> Incoming enemies at Stables")
  end)

  it("should receive the all clear event", function()
    location_message_controller:on_all_clear_button_pressed()
    assert_equal( output.message , "<AddOn:Incoming> Stables is all clear")
  end)

  it("should open the pvp frame when your in a valid zone", function()
    location_message_controller:on_zone_changed()
  end)
end)
