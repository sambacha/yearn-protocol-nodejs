'use strict';


module.exports = {
  extends: [
    require.resolve('./contracts/abi/core'),
    require.resolve('./contracts/abi/interfaces'),
    require.resolve('./contracts/strategies'),
    require.resolve('./contracts/vaults'),
  ],
};
