@e2e
Feature: Validate that user is able to search for items

  Background: Access e-commerce
    Given I access the ecommerce URL "http://www.amazon.com"

  @positiveFlow @validSearch
  Scenario Outline: Search for valid items
    When I type in the search box "<searchTerm>"
    And I click on the magnifier
    Then I should see search results related to my "<searchTerm>"

    Examples: 
      | searchTerm          |
      | iphone              |
      | playstation 5       |
      | game of thrones     |
      | panic! at the disco |

  @negativeFlow @invalidSearch
  Scenario Outline: Try to search for invalid items
    When I type in the search box "$*%)#_@__@(@"
    And I click on the magnifier
    Then I should see an error saying that no item was found
