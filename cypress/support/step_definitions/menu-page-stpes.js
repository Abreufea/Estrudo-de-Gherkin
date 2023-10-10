import { When, Then } from '@badeball/cypress-cucumber-preprocessor';

When('I click on the menu button', () => {
    cy.get('#react-burger-menu-btn').click();
})

Then('I see all munu buttons', () => {
    cy.get('#menu_button_container').should('not.be.visible');
})

When('I click on the All Items button', () => {
    cy.findByText('All Items').click();
})
Then('I should see all itens to the store', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/inventory.html')
})
// Está apresnetando problemas
When('I click on the About button', () => {
    // cy.get('#about_sidebar_link').invoke('removeAttr', 'target').click({force:true})
    cy.get('#about_sidebar_link').click();

})

Then('I should see sucelabs page', () => {
    cy.url().should('be.equal', 'https://saucelabs.com/');
    // cy.url().should('eq', 'https://saucelabs.com/');

})

When('I click on the Login button', () => {
    cy.findByText('Logout').click();
})

When('I click on the Reset App State button', () => {
    cy.get('#reset_sidebar_link').click();
})

Then('I have the empy cart', () => {
    cy.get('.inventory_item_name').should('not.have.length')
})

Then('I should see de login page', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/')
}) 