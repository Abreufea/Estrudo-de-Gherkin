e2e @loginsucess
Feature: Check problems in the store
    Background: Access SwagLabs Store
        Given I access  URL "https://www.saucedemo.com/v1/"
        And Type Login "problem_user" type and passeword "secret_sauce"
        And I click on the buttonLogin

    @problemiten  @additens
    Scenario: validate problems when purchasing in this scenario
        When click in "<itensstore>"
        And Check the iten
        And The iten should be a "<itensstore>"
        Then If the iten not be a "<itensstore>", is a problem.

        Examples:
            | Sauce L abs Backpack              |
            | Sauce Labs Bolt T-Shirt           |
            | Sauce Labs Onesie                 |
            | Sauce Labs Bike Light             |
            | Sauce Labs Fleece Jacket          |
            | Test.allTheThings() T-Shirt (Red) |

