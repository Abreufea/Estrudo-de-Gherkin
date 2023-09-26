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
    Scenario: Validate add and remove items in the Cart
        When I add all items to my shopping cart
        And I acess the cart page
        And I Romeve all itens from cart shopping
        Then I have a empy Cart and comeback to shopping
       

    @positiveLogin @acessStore @additens @validatepurchase @successfulpurchase
    Scenario: Validate purchase all items
        When I add all items to my shopping cart
        And I acess the cart page
        And I click on the Checkout button
        And I fill the user-data whit random data
        And I click in finish my order
        Then I should see the message THANK YOU FOR YOUR ORDER!

     