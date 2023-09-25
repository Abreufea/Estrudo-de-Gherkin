import { Before, Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";
let stub;

Before(() => {
    cy.log("Acess Store");
    stub = cy.stub();
    cy.visit('https://www.saucedemo.com/');
})

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

When('I click on the  "<itensstore>" in the store page',  () => {
    cy.get(itensstore).click()   
})
And ('I add to the shopping cart',  () => {
    cy.get(".btn_primary btn_inventory'['ADD TO CART']").click ()   
})

And ('I add to the shopping cart',  () => {
    cy.get(".inventory_details_back_button'['<- Back]").click ()   
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