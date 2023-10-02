import { Before, Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";

Given("I access the SwagLabs Login page", () => {
    cy.visit('https://www.saucedemo.com/');
    And("I type Login {word}", (userName) =>{
        cy.get("#user-name").type(userName);
    })
    And("I type passeword {word} and click on the login button", (userName) =>{
        cy.get("#password").type(userName);
        cy.findByRole('button', {name: /Login/i}).click()
        })
})

When('I click on the Sauce Labs Backpacklink image in the store page ',  () => {
    cy.contains('Sauce Labs Backpack').click();
})

Then ('I should see a different iten', () =>{  
    cy.get('.inventory_details_name').contains('Sauce Labs Backpacklink').should('not.be', 'visible');;
})