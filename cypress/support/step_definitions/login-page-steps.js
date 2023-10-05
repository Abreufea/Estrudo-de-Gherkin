import { Given, When, Then, Step } from '@badeball/cypress-cucumber-preprocessor';

Given("I access the SwagLabs Login page", () => {
    cy.visit('https://www.saucedemo.com/');
})

When("I type Login {string}", (userName) => {
    cy.get("#user-name").type(userName);
})

When("I type password {string}", (password) => {
    cy.get("#password").type(password);
})

When("I click on the login button", () => {
    cy.findByRole('button', { name: /Login/i }).click()
})

Given('I sign in with user {string} and password {string}', (userName, password) => {
    Step(this, 'I access the SwagLabs Login page');
    Step(this, `I type Login "${userName}"`);
    Step(this, `I type password "${password}"`);
    Step(this, `I click on the login button`);
    Step(this, `I access the store correctly`);
});

Then('I should see the menssage Sorry, this user has been locked out.', () => {
    cy.get('body').contains('Sorry, this user has been locked out.')
})