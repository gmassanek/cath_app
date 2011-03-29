Feature: Piecese
  In order to manage pieces
  As a user
  I want to add, edit, delete, view pieces

  Scenario: View pieces titles on gallery page
    Given a gallery exists with title: "oils"
    And a piece exists with title: "Piece 1", description: "This is piece 1", gallery: that gallery
    When I go to the home page
    And I follow "oils"
    Then I should see "Piece 1"

