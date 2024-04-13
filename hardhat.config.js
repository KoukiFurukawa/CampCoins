require("@nomicfoundation/hardhat-toolbox");
require("@chainlink/hardhat-chainlink");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  chainlink: {
    confirmations : 1
  }
};
