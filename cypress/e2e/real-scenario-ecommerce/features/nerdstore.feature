@e2e
Feature: Validate the Nerd Store

  Background: Access e-commerce
    Given I access the ecommerce URL "https://nerdstore.com.br/"
  

  @positiveFlow @positivesearch
  Scenario Outline: Test the search funtion
    When I type in the search box "<searchTerm>"
    And I click on the magnifier
    Then I should see search results related to my "<searchTerm>"

    Examples: 
      | Lord of the rings        |
      | Harry Potter             |
      | Camisetas em Promoção    |
      | Spider Man               |
      | Dragon Moon              |
     

  @negativeFlow @invalidSearch
  Scenario Outline: Try to search for invalid itens
    When I type in the search box "<searchTerm2>"
    And I click on the magnifier
    Then I should see the menssage "Nenhum produto foi encontrado para a sua seleção."

   Examples: 
      | Benedito de Paula        |
      | Padre Marcelo            |
      | Pássaros do Brasil       |
      | asdasdasdqq              |
      | 123455                   |