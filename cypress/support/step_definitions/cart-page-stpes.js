import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

When('I acess the cart page', () => {
    cy.get('.shopping_cart_link').click();
})

Then('I have a empy Cart and comeback to shopping', () => {
    cy.get('#continue-shopping').click();
})

When('I add all store items to my shopping cart', () => {
    cy.get('.btn_primary.btn_inventory').each(($element) => {
        cy.wrap($element).click();
    });
})

When('I remeve all itens from cart shopping', () => {
    cy.get('.btn_small.cart_button').each(($element) => {
        cy.wrap($element).click();
    });
})