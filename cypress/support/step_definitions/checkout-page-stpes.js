import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';
import { faker } from '@faker-js/faker';

When('I click on the Checkout button', () => {
    //cy.get('[data-test="checkout"]').click();
    cy.findByText('Checkout').click();
})

When('I filling in information with random data generated by the faker', () => {
    cy.get('#first-name').type(faker.person.firstName());
    cy.get('#last-name').type(faker.person.lastName());
    cy.get('#postal-code').type(faker.location.zipCode())
    cy.get('[data-test="continue"]').click();

})

Then('I should see the message:"THANK YOU FOR YOUR ORDER!" when the operation was successful', () => {
    //cy.contains('h2', 'Thank you for your order!').should('be.visible')
    cy.findByText('Thank you for your order!').should('be.exist')
})

When('I click in finish my order option', () => {
    //cy.get('[data-test="finish"]').click();
    cy.findByRole('button', { name: /Finish/i }).click()
})