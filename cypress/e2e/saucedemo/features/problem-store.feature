@e2e @loginsucess
Feature: Check problems in the store
    Background: Access SwagLabs Store
        Given I access the SwagLabs Login page
        And I type Login problem_user 
        And I type passeword secret_sauce
        And I click on the login button

    @problemiten  @additens
    Scenario: Validate problems when purchasing items in this case.
        When I click on the Sauce Labs Backpacklink image in the store page 
        Then I should see a different iten

      