import { Before, Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";

Given("I access the SwagLabs Login page", () => {
    cy.visit('https://www.saucedemo.com/');
})

When("I type Login {string}", (userName) => {
    cy.get("#user-name").type(userName);
})

And("I type password {string}", (password) => {
    cy.get("#password").type(password);
})

And("I click on the login button", () => {
    cy.findByRole('button', { name: /Login/i }).click()
})

Then('Access the store and see all items', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/inventory.html')
})


Then('I should see the menssage Sorry, this user has been locked out.', () => {
    cy.get('body').contains('Sorry, this user has been locked out.')
})

And('I access the store', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/inventory.html')
})

Then('I see dog images in the items', () => {
    cy.get('#item_4_img_link').should('be.visible');
})

Then('I acesse the store and encounter speed problems that impact the experience', () => {
    // Manual test about speed problems 
})