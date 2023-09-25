@e2e @loginsucess
Feature: Validate Store
    Background: Access SwagLabs Store
        Given I access the SwagLabs Login page
        And I type Login standard_user 
        And I type passeword secret_sauce
        And I click on the login button

    @positiveLogin @acessStore @additens
    Scenario: Validate the purchase of one item
    When I click on the Sauce Labs Backpacklink image in the store page
    And I add to the shopping cart
    And I acess the cart page
    And I click on the Checkout button
    And I fill the user-data whit random data
    And I click in finish my order
    Then I should see the message THANK YOU FOR YOUR ORDER!


    @positiveLogin @acessStore @additens @cancelitens
    Scenario Outline: Validate add and remove items in the Cart
        # When I click on the  <itensstore> in the store page
        # And I add to the shopping cart
        # And I click on the back button
        # And I Click Romeve <itensstore> from your cart
        # Then I have a empy Cart

        # Examples:
        #     |itensstore                         |
        #     | Sauce Labs Backpack               |
            # | Sauce Labs Bolt T-Shirt           |
            # | Sauce Labs Onesie                 |
            # | Sauce Labs Bike Light             |
            # | Sauce Labs Fleece Jacket          |
            # | Test.allTheThings() T-Shirt (Red) |

    # @positiveLogin @acessStore @additens @validatepurchase @successfulpurchase
    # Scenario Outline: Validate purchase two or more itens
    #     When I click on the  "<itensstore>" in the store page
    #     And I add to the shopping cart
    #     And Acess the shopping cart
    #     And I click on the Checkout button
    #     And And I fill  the user-data wife randon data
    #     And I click in Finish my order
    #     Then I should see the message "THANK YOU FOR YOUR ORDER"

    #     Examples:
    #         | Sauce Labs Backpack               |
    #         | Sauce Labs Bolt T-Shirt           |
    #         | Sauce Labs Onesie                 |
    #         | Sauce Labs Bike Light             |
    #         | Sauce Labs Fleece Jacket          |
    #         | Test.allTheThings() T-Shirt (Red) |

    # @positiveLogin @acessStore @additens @validatepurchase @successfulpurchase
    # Scenario: Validate one iten purchase
    #     When click in click in "Sauce Labs Backpack"in the store page
    #     And I add to the shopping cart
    #     And Acess the shopping cart
    #     And I click on the Checkout button
    #     And Type First Name "Mario", type Last Name "Super", type ZipCode "0F8TAS"
    #     And I click in Finish my order
    #     Then I should see the message "THANK YOU FOR YOUR ORDER"