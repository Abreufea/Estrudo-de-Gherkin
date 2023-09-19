@e2e
Feature: Validate Store
    Background: Access SwagLabs Store 
    Given I access  URL "https://www.saucedemo.com/v1/"
    And Type Login "standard_user" type and passeword "secret_sauce" 
    And I click on the magnifier  

     @positiveLogin @acessStore @buyitens
        Scenario: Validate Store Itens 
        When click in <itensstore>
        And I click on the AddToCard 
        And I click on the back 
        Then Acess the store 
    
    

