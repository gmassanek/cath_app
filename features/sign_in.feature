Feature: Sign In/Out
  In order to get access to protected sections of the site
  As a  user
  I want to sign in

  Scenario: User is not signed up
    Given 0 users exist
    When I log in as "test@test.com":"password"
    Then I should see "Incorrect email or password"
    #And I should be logged out

  Scenario: User enters wrong password
    Given a user exists with email: "test@test.com", password: "password", password_confirmation: "password"
    When I log in as "test@test.com":"password1"
    Then I should see "Incorrect email or password"
    #And I should be logged out

  Scenario: Successful login
    Given a user exists with email: "test@test.com", password: "password", password_confirmation: "password"
    When I log in as "test@test.com":"password"
    #Then I should see the 'home' page
    #Then I should see what is up
    And I should see "Login successful"

  Scenario: Logout
    Given a user exists with email: "test@test.com", password: "password", password_confirmation: "password"
    And I am logged in as "test@test.com":"password"
    When I log out
    #Then I should see "Logged out"

