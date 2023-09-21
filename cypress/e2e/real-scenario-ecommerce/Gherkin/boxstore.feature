@e2e
Feature: Validate the amazon bookstore

  Background: Access e-commerce
    Given I access the ecommerce URL "https://www.amazon.com.br/Livros/b/?ie=UTF8&node=6740748011&ref_=nav_cs_books"

  @positiveFlow @validSearch
  Scenario Outline: Search for valid books
    When I type in the search box "<searchTerm>"
    And I click on the magnifier
    Then I should see search results related to my "<searchTerm>"

    Examples: 
      | Lord of the rings        |
      | Harry Potter             |
      | Holly Bible              |
      | Spider Man               |
      | Irmãos Karamazov         |

  @negativeFlow @invalidSearch
  Scenario: Try to search for invalid Books
    When I type in the search box "$*%)#_@__@(@"
    And I click on the magnifier
    Then I should see the bestselling books
