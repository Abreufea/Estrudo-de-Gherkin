@e2e
Feature: Validate Login to SwagLabs 

    Background: Access SwagLabs 
    Given I access  URL "https://www.saucedemo.com/v1/"

    
     @positiveLogin @acessSuccess
        Scenario: Login Success / Logado com sucesso
        When Type Login "standard_user" type and passeword "secret_sauce" 
        And I click on the magnifier 
        Then Acess the store 

    @problenstologin @lokedlogin @invalidelogin
        Scenario: Invalide Login/ Fracasso ao logar. 
        When Type Login "locked_out_user" and type passeword "secret_sauce" 
        And I click on the magnifier 
        Then I should see the menssage Epic sadface: Sorry, this user has been locked out. 

     @problemstore @failstore
        Scenario: Problem store 
        When Type Login "problem_user" and type passeword "secret_sauce" 
        And I click on the magnifier 
        Then Acess the store,but there are no images.

    @performanceproblems @laginstore
        Scenario: Problem to performance
        When Type Login "performance_glitch_user" and type passeword "secret_sauce" 
        And I click on the magnifier 
        Then Encounters performance issues.