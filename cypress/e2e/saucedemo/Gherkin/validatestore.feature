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

    @positiveLogin @acessStore @additens @cancelitens
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

    @positiveLogin @acessStore @additens @validatepurchase @successfulpurchase 
    Scenario: Validate Purchase two or more itens
        When click in "Sauce Labs Backpack"
        And I click on the AddToCard
        And Acess Your Cart
        And I click in Checkout
        And Type First Name "Mario", type Last Name "Super", type ZipCode "0F8TAS"
        And I click in Finish
        Then should have the message THANK YOU FOR YOUR ORDER

        @positiveLogin @acessStore @additens @validatepurchase @successfulpurchase
    Scenario: Validate Purchase one item
        When click in click in "<itensstore>"
        And I click on the AddToCard
        And Acess Your Cart
        And I click in Checkout
        And Type First Name "Mario", type Last Name "Super", type ZipCode "0F8TAS"
        And I click in Finish
        Then should have the message THANK YOU FOR YOUR ORDER

         Examples:
            | Sauce Labs Backpack               |
            | Sauce Labs Bolt T-Shirt           |
            | Sauce Labs Onesie                 |
            | Sauce Labs Bike Light             |
            | Sauce Labs Fleece Jacket          |
            | Test.allTheThings() T-Shirt (Red) |