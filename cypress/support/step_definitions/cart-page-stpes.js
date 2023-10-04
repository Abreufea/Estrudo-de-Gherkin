import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

When('I acess the cart page', () => {
    cy.get('.shopping_cart_link').click();
})
When('I remeve all itens from cart shopping', () => {

    cy.get('[data-test="remove-sauce-labs-backpack"]').click();
    cy.get('[data-test="remove-sauce-labs-bolt-t-shirt"]').click();
    cy.get('[data-test="remove-sauce-labs-fleece-jacket"]').click();
    cy.get('[data-test="remove-sauce-labs-onesie"]').click();
    cy.get('[data-test="remove-test.allthethings()-t-shirt-(red)"]').click();
})
Then('I have a empy Cart and comeback to shopping', () => {
    cy.get('#continue-shopping').click();
})

When('I add all store items to my shopping cart', () => {
    cy.get('.btn_primary.btn_inventory').each(($element) => {
        cy.wrap($element).click();
    });
})