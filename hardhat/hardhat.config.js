require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.8.25",
  networks: {
    og_testnet_v3: {
      url: process.env.RPC_URL,
      chainId: 16601,               // <— Ubah dari 80087 ke 16601
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};

