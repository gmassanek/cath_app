Feature: Admin
  In order to manage the site
  As a admin
  I want to manage users, galleries, pieces, images

  Scenario: A user must log in to see the dashboard
    Given a user exists with email: "test@test.com", password: "password"
    And I am logged out
    When I go to the admin_dashboard page
    Then I should see "Please login to continue"

