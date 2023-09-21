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

    # @problenstologin @lokedlogin @invalidelogin
    #     Scenario: Invalide Login 
    #     When Type Login "locked_out_user" and type passeword "secret_sauce" 
    #     And I click on the login button 
    #     Then I should see the menssage "Epic sadface: Sorry, this user has been locked out." 

    #  @problemstore @failstore
    #     Scenario: Problem store 
    #     When Type Login "problem_user" and type passeword "secret_sauce" 
    #     And I click on the login button  
    #     Then access the store, but don't see the image of the items.

    # @performanceproblems @laginstore
    #     Scenario: Problem to performance
    #     When Type Login "performance_glitch_user" and type passeword "secret_sauce" 
    #     And I click on the login button
    #     Then I access the store, but I encounter speed problems that impact the experience.