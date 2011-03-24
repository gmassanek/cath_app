Feature: Galleries
  In order to manage galleries
  As a user
  I add, edit, delete, view galleries

  Scenario: View gallery titles on menu
    Given a gallery exists with title: "gallery1", description: "This is gallery 1"
    And another gallery exists with title: "gallery2", description: "This is gallery 2"
    When I go to the home page
    Then I should see "gallery1"
    And I should see "gallery2"

