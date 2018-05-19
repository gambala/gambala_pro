const environment = require('./environment');

environment.config.merge({ devtool: 'eval' });

module.exports = environment.toWebpackConfig();
