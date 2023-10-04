@e2e
Feature: Validate Login to SwagLabs in all documented scenarios.
 
    Background: Access SwagLabs 
    Given I access the SwagLabs Login page
    
    @standardUser @loginSucess
    Scenario: Login Success
        When I type Login "standard_user"
        When I type password "secret_sauce" 
        When I click on the login button
        Then I access the store and see all items

    @problenstologin @lokedlogin @invalidelogin
    Scenario: Invalide Login 
        When I type Login "locked_out_user" 
        When I type password "secret_sauce"
        When I click on the login button
        Then I should see the menssage Sorry, this user has been locked out. 

    @problemstore @failstore
    Scenario: Problem store 
        When I type Login "problem_user" 
        When I type password "secret_sauce"
        When I click on the login button
        Then I access the store and just see dog images