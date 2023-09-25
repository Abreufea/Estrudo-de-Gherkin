import { Before, Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";
import { faker } from '@faker-js/faker';
let stub;


Given("I access the SwagLabs Login page", () => {
    cy.visit('https://www.saucedemo.com/');
    And("I type Login {word}", (userName) =>{
        cy.get("#user-name").type(userName);
    })
    And("I type passeword {word}", (userName) =>{
        cy.get("#password").type(userName);
    })
    And('I click on the login button', () => {
        cy.get("#login-button").click();
    })
})

When('I click on the Sauce Labs Backpacklink image in the store page',  () => {
    cy.contains('Sauce Labs Backpack').click();
})
And ('I add to the shopping cart',  () => {
    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();  
})
And ('I acess the cart page',  () => {
    cy.get('.shopping_cart_link').click();
})

And ('I click on the Checkout button',  () => {
 cy.get('[data-test="checkout"]').click ();
})

And ('I fill the user-data whit random data', () =>{
    cy.get('#first-name').type(faker.person.firstName());
    cy.get('#last-name').type(faker.person.lastName());
    cy.get('#postal-code').type(faker.location.zipCode())
    cy.get('[data-test="continue"]').click();

})


And ('I click in finish my order', () =>{  
    cy.get('[data-test="finish"]').click();
})

Then ('I should see the message THANK YOU FOR YOUR ORDER!', () =>{  
    cy.contains('h2', 'Thank you for your order!').should('be.visible')


})

        // When I click on the  "<itensstore>" in the store page
        // And I add to the shopping cart
        // And I click on the back button
        // And I Click Romeve "<itensstore>" from your cart
        // Then I have a empy Cart

        // Examples:
        //     |itensstore                         |
        //     | Sauce Labs Backpack               |
        //     | Sauce Labs Bolt T-Shirt           |
        //     | Sauce Labs Onesie                 |
        //     | Sauce Labs Bike Light             |
        //     | Sauce Labs Fleece Jacket          |
        //     | Test.allTheThings() T-Shirt (Red) |