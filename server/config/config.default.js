const path = require('path');

module.exports = appInfo => {
  const config = exports = {};
  config.static = {
    prefix: '/public/',
    dir: path.join(appInfo.baseDir, 'app/public'),
    maxAge: 31536000,
  };

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '202001191427';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  const userConfig = {};

  return {
    ...config,
    ...userConfig,
  };
};