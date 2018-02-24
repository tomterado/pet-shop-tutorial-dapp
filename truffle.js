var HDWalletProvider = require("truffle-hdwallet-provider");

var infura_apikey = "B7YRkiUh8Jzq61Zg3dxq ";
var mnemonic = "candy maple cake sugar pudding cream honey rich smooth crumble sweet treat";

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    ropsten: {
      provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/B7YRkiUh8Jzq61Zg3dxq"),
      network_id: 3
    }
  }
};