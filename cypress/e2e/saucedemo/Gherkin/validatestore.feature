@e2e @loginsucess
Feature: Validate Store
    Background: Access SwagLabs Store
        Given I access  URL "https://www.saucedemo.com/v1/"
        And Type Login "standard_user" type and passeword "secret_sauce"
        And I click on the magnifier

    @positiveLogin @acessStore @additens 
    Scenario: Validate add intens in the Your Cart
        When click in "<itensstore>"
        And I click on the AddToCard
        And I click on the back
        Then Your Cart

        Examples:
            | Sauce Labs Backpack               |
            | Sauce Labs Bolt T-Shirt           |
            | Sauce Labs Onesie                 |
            | Sauce Labs Bike Light             |
            | Sauce Labs Fleece Jacket          |
            | Test.allTheThings() T-Shirt (Red) |

Scenario: Validate add and remove intens in the Your Cart
        When click in "<itensstore>"
        And I click on the AddToCard
        And I click on the back
        And I Click Romeve "<itensstore>"
        Then I have a empy Cart

        Examples:
            | Sauce Labs Backpack               |
            | Sauce Labs Bolt T-Shirt           |
            | Sauce Labs Onesie                 |
            | Sauce Labs Bike Light             |
            | Sauce Labs Fleece Jacket          |
            | Test.allTheThings() T-Shirt (Red) |

    