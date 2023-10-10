/* eslint @typescript-eslint/no-var-requires: "off" */
const createBundler = require('@bahmutov/cypress-esbuild-preprocessor');
const preprocessor = require('@badeball/cypress-cucumber-preprocessor');
const createEsbuildPlugin = require('@badeball/cypress-cucumber-preprocessor/esbuild');

import { defineConfig } from 'cypress';

async function setupNodeEvents(
  on: Cypress.PluginEvents,
  config: Cypress.PluginConfigOptions,
): Promise<Cypress.PluginConfigOptions> {

  // This is required for the preprocessor to be able to generate JSON reports after each run, and more,
  await preprocessor.addCucumberPreprocessorPlugin(on, config);

  on(
    'file:preprocessor',
    createBundler({
      plugins: [createEsbuildPlugin.default(config)],
    }),
  );

  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

module.exports = defineConfig({
  env: {
  },

  e2e: {
    video: false,

    specPattern: "cypress/e2e/**/**/*.{js,jsx,ts,tsx,feature}",
    defaultCommandTimeout: 40000,
    chromeWebSecurity: false,
    baseUrl: "https://www.saucedemo.com/",
    setupNodeEvents,
  },
});
