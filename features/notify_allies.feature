Feature:Arathi Basin Player notifies allies about enemy whereabouts

  In order to faster notify enemies about enemies in battlegounds
  As a PvPer
  I would like to be able to send messages at a click of a mouse button

  Scenario: PvPer is not in battle ground
    Given that I am not in a battle ground
    Then I should not see the addon

  Scenario: PvPer sends message from a valid location
    Given that I'm in the "Arathi Basin" battleground
    And I am at at a valid node in the "Arathi Basin" battleground
    When I attempt to send a help message
    Then all my allies should see me yelling it out
