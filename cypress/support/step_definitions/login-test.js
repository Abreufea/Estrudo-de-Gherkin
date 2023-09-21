import { Before, Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";

Given('I access the SwagLabs Login page', () => {
    cy.visit("https://www.saucedemo.com/v1/");
})

When("I type Login {word}", (userName) =>{
    cy.get("#user-name").type(userName);
})

And("I type passeword {word}", (userName) =>{
    cy.get("#password").type(userName);
})

And('I click on the login button', () => {
    cy.get("#login-button").click();
})
Then('Access the store and see all items', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/v1/inventory.html')
  })
