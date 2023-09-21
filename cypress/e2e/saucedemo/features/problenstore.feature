@e2e @loginsucess
Feature: Check problems in the store
    Background: Access SwagLabs Store
        Given I access  URL "https://www.saucedemo.com/v1/"
        And Type Login "problem_user" type and passeword "secret_sauce"
        And I click on the login button

    @problemiten  @additens
    Scenario Outline: Validate problems when purchasing items in this case.
        When I click on the  "<itensstore>" in the store page
        And I check the iten name and picture. 
        Then I should see a different iten.

        Examples:
            | Sauce L abs Backpack              |
            | Sauce Labs Bolt T-Shirt           |
            | Sauce Labs Onesie                 |
            | Sauce Labs Bike Light             |
            | Sauce Labs Fleece Jacket          |
            | Test.allTheThings() T-Shirt (Red) |