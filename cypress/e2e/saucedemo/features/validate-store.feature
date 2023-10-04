@e2e @loginsucess
Feature: Validate Store
    Background: Access SwagLabs Store
        Given I sign in with user "standard_user" and password "secret_sauce"

    @positiveLogin @acessStore @additens
    Scenario: Validate the purchase of one item
        When I click on the Sauce Labs Backpacklink image in the store page
        When I add to the shopping cart
        When I acess the cart page
        When I click on the Checkout button
        When I filling in information with random data generated by the faker
        When I click in finish my order option
        Then I should see the message:"THANK YOU FOR YOUR ORDER!" when the operation was successful


    @positiveLogin @acessStore @additens @cancelitens
    Scenario: Validate add and remove items in the Cart
        When I add all store items to my shopping cart
        When I acess the cart page
        When I remeve all itens from cart shopping
        Then I have a empy Cart and comeback to shopping


    @positiveLogin @acessStore @additens @validatepurchase @successfulpurchase
    Scenario: Validate purchase all items
        When I add all store items to my shopping cart
        When I acess the cart page
        When I click on the Checkout button
        When I filling in information with random data generated by the faker
        When I click in finish my order option
        Then I should see the message:"THANK YOU FOR YOUR ORDER!" when the operation was successful

