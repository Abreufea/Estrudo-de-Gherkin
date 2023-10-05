@e2e @loginsucess
Feature: Check problems in the store
    Background: Access SwagLabs Store
        Given I sign in with user "problem_user" and password "secret_sauce"
       
    @problemiten  @additens
    Scenario: Validate problems when purchasing items in this case.
        When I click on the Sauce Labs Backpacklink image in the store page 
        Then I access the store and see another item that is not the Sauce Labs Backpacklink

      