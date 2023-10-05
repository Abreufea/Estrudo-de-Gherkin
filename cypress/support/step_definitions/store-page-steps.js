import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

When('I access the store correctly', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/inventory.html')
})

When('I click on the Sauce Labs Backpacklink image in the store page', () => {
    // cy.contains('Sauce Labs Backpack').click();
    cy.findByText('Sauce Labs Backpack').click()
})

//Melhoras esse teste com a lógica do login
When('I add to the shopping cart', () => {
    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
})


Then('I access the store and just see dog images', () => {
    cy.get('#item_4_img_link').should('be.visible');
})

Then('I access the store and see all items', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/inventory.html')
})

Then('I access the store and see another item that is not the Sauce Labs Backpacklink', () => {
    cy.get('.inventory_details_name').contains('Sauce Labs Backpacklink').should('not.be', 'visible');
})
//Sauce Labs Fleece Jacket