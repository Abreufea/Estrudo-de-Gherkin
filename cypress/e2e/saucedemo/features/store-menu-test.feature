@e2e
Feature: Validate the functioning of the world in various scenarios
    Background: Access SwagLabs Store
        Given I sign in with user "standard_user" and password "secret_sauce"

        @menu @menubuttons
        Scenario: Validate menu buttons
        When I click on the menu button
        Then I see all munu buttons

        @menu @allitensbutton
        Scenario: Validate All Items button
        When I click on the Sauce Labs Backpacklink image in the store page
        When I click on the menu button
        When I click on the All Items button
        Then I should see all itens to the store

        @menu @validateAboutButton
        Scenario: Validade About button
        When I click on the menu button
        When I click on the About button 
        Then I should see aucelabs page

        # @menu @validateLogoutButton
        # Scenario: Validade Logout 
        # When I click on the menu button
         # When I click on the Login button
        # Then I should see de login page

        # @menu @validateResetButton
        # Scenario: Validade Resest App State button
        # When I add all store items to my shopping cart
        # When I click on the menu button
        # When I click on the Reset App State button
        # Then I have the cart empy
