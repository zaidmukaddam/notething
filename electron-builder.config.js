const packageJSON = require('./package.json');

/**
 * @type {import('electron-builder').Configuration}
 * @see https://www.electron.build/configuration/configuration
 */
const config = {
  appId: 'com.zaid.notething',
  copyright: 'Copyright © 2021 Zaid Mukaddam',
  directories: {
    output: 'dist',
    buildResources: 'buildResources',
  },
  files: [
    'packages/**/dist/**',
  ],
  extraMetadata: {
    version: packageJSON.version,
  },
  nsis: {
    include: 'installer.nsh',
    oneClick: false,
    allowToChangeInstallationDirectory: true,
  },
  win: {
    target: 'nsis',
    artifactName: '${productName}Setup-${arch}.${ext}',
  },
  linux: {
    target: 'deb',
    category: 'Development',
  },
};

module.exports = config;
