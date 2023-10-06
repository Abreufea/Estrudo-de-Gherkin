import { When, Then } from '@badeball/cypress-cucumber-preprocessor';

When('I click on the menu button', () => {
    cy.get('#react-burger-menu-btn').click();
})

Then('I see all munu buttons', () =>
{
    cy.get('#menu_button_container').should('not.be.visible');
})

When('I click on the All Items button', () => {
    cy.findByText('All Items').click();
})
Then('I should see all itens to the store', () => {
    cy.url().should('be.equal', 'https://www.saucedemo.com/inventory.html')
}) 

When('I click on the About button', () => {
    cy.get('#about_sidebar_link').click()
})

Then('I should see aucelabs page', () => {
    cy.url().should('be.equal', 'https://saucelabs.com/');
}); 

When('I click on the Login button', () => {
    cy.findByText('Logout').click();
})

When('I click on the Reset App State button', () => {
    cy.findByText('Reset App State').click();
})

Then('I have the cart empy', () => {
    cy.body('.cart_footer').contains(not.exist)
}) 
