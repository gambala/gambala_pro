module.exports = {
  "extends": "airbnb",
  "plugins": [
    "react",
    "jsx-a11y",
    "import",
  ],
  "ecmaFeatures": {
    "forOf": true,
    "jsx": true,
    "templateStrings": true,
  },
  "env": {
    "browser": true,
    "jquery": true,
  },
  "rules": {
    "class-methods-use-this": 0,
    "import/extensions": 0,
    "import/no-extraneous-dependencies": 0,
    "import/no-unresolved": 0,
    "no-console": 0,
    "no-multi-spaces": [2, { "exceptions": { "ImportDeclaration": true } }],
    "no-new": 0,
    "no-param-reassign": 0,
    "no-unused-vars": [2, { "argsIgnorePattern": "^_" }],
  }
};
