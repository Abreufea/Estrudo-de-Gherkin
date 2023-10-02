const { defineConfig } = require("cypress");
const cucumber = require('cypress-cucumber-preprocessor').default

module.exports = defineConfig({
  e2e: {
    chromeWebSecurity: false,
    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber())
    },
    specPattern: "cypress/e2e/**/**/*.{js,jsx,ts,tsx,feature}",
  },
    extends: "../node_modules/kcd-scripts/shared-tsconfig.json",
    include: ["."]
});


