import { Step, Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';
import { faker } from '@faker-js/faker';

When("I access the SwagLabs Login page another", () => {
    cy.visit('https://www.saucedemo.com/');
})

When('I type Login {string}', (userName) => {
    cy.get("#user-name").type(userName);
})

When("I type password {string}", (password) => {
    cy.get("#password").type(password);
})

When("I click on the login button", () => {
    cy.findByRole('button', { name: /Login/i }).click()
})

Then('Access the store and see all items', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/inventory.html')
});

Given('I sign in with user {string} and password {string}', (userName, password) => {
    Step(this, 'I access the SwagLabs Login page');
    Step(this, `I type Login "${userName}"`);
    Step(this, `I type password "${password}"`);
    Step(this, `I click on the login button`);
    Step(this, `Access the store and see all items`);
});

When('I click on the Sauce Labs Backpacklink image in the store page', () => {
    cy.contains('Sauce Labs Backpack').click();
})
When('I add to the shopping cart', () => {
    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
})
When('I acess the cart page', () => {
    cy.get('.shopping_cart_link').click();
})

When('I click on the Checkout button', () => {
    cy.get('[data-test="checkout"]').click();
})

When('I fill the user-data whit random data', () => {
    cy.get('#first-name').type(faker.person.firstName());
    cy.get('#last-name').type(faker.person.lastName());
    cy.get('#postal-code').type(faker.location.zipCode())
    cy.get('[data-test="continue"]').click();

})

When('I click in finish my order', () => {
    cy.get('[data-test="finish"]').click();
})

Then('I should see the message THANK YOU FOR YOUR ORDER!', () => {
    cy.contains('h2', 'Thank you for your order!').should('be.visible')

})

When('I add all items to my shopping cart', () => {
    cy.get('.btn_primary.btn_inventory').each(($element) => {
        cy.wrap($element).click();
    });
    // cy.get(".btn_primary.btn_inventory").eq(0).click();
    // cy.get(".btn_primary.btn_inventory").eq(1).click();
    // cy.get(".btn_primary.btn_inventory").eq(2).click();
    // cy.get(".btn_primary.btn_inventory").eq(3).click();
    // cy.get(".btn_primary.btn_inventory").eq(4).click();
    // cy.get(".btn_primary.btn_inventory").eq(5).click();
})

When('I Romeve all itens from cart shopping', () => {

    cy.get('[data-test="remove-sauce-labs-backpack"]').click();
    cy.get('[data-test="remove-sauce-labs-bolt-t-shirt"]').click();
    cy.get('[data-test="remove-sauce-labs-fleece-jacket"]').click();
    cy.get('[data-test="remove-sauce-labs-onesie"]').click();
    cy.get('[data-test="remove-test.allthethings()-t-shirt-(red)"]').click();
})

Then('I have a empy Cart and comeback to shopping', () => {
    cy.get('#continue-shopping').click();
})
