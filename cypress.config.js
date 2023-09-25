const { defineConfig } = require("cypress");
const cucumber = require('cypress-cucumber-preprocessor').default

module.exports = defineConfig({
  e2e: {
    chromeWebSecurity: false,
    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber())
      // implement node event listeners here
    },
    specPattern: "cypress/e2e/**/**/*.{js,jsx,ts,tsx,feature}",
  },
});
