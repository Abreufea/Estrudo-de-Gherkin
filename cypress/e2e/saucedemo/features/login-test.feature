@e2e
Feature: Validate Login to SwagLabs in all documented scenarios.
 
    Background: Access SwagLabs 
    Given I access the SwagLabs Login page

     @positiveLogin @acessSuccess
    Scenario: Login Success
        When I type Login standard_user 
        And I type passeword secret_sauce 
        And I click on the login button 
        Then Access the store and see all items 

    @problenstologin @lokedlogin @invalidelogin
    Scenario: Invalide Login 
        When I type Login locked_out_user 
        And I type passeword secret_sauce
        And I click on the login button 
        Then I should see the menssage Sorry, this user has been locked out. 

    @problemstore @failstore
    Scenario: Problem store 
        When I type Login problem_user 
        And  I type passeword secret_sauce 
        And  I click on the login button  
        And  I access the store
        Then I see dog images in the items

    @performanceproblems @laginstore
    Scenario: Problem to performance
        When I type Login performance_glitch_user 
        And I type passeword secret_sauce
        Then I acesse the store and encounter speed problems that impact the experience