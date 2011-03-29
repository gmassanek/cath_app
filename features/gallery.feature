Feature: Galleries
  In order to manage galleries
  As a user
  I want to add, edit, delete, view galleries

  Scenario: View gallery titles on menu
    Given a gallery exists with title: "gallery1", description: "This is gallery 1"
    And another gallery exists with title: "gallery2", description: "This is gallery 2"
    When I go to the home page
    Then I should see "gallery1"
    And I should see "gallery2"

  Scenario: Display description on gallery page
    Given a gallery exists with title: "gallery1", description: "This is gallery 1"
    When I go to the home page
    And I follow "gallery1"
    Then I should see "This is gallery 1"

