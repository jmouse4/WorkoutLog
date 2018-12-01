Feature: Add a new workout log
  
  As a fitness trainee
  So that can easily keep track of my workouts
  I want to be able to add a new workout log
  
  Scenario: As a fitness trainee I want to be able to navigate from the homepage to the new workout form
    Given I am on the home page
    When I click on the "New Workout Log" link
    Then I should be on the "New Workout Log" page
    And I should see the "Title" field
    And I should see the "Text" field

