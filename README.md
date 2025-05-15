HEAD

# 0G Testnet V3 Deployment Script Examples

This repository provides example scripts for deploying a simple ERC20 token (`MyToken.sol`) to the 0G Testnet V3 (Chain ID: 16601) using popular development frameworks:

- **[Truffle](./truffle/README.md)**
- **[Hardhat](./hardhat/README.md)**
- **[Foundry](./foundry/README.md)**

Each directory contains a self-contained example with specific setup and deployment instructions in its respective `README.md` file.

## Contract

The `MyToken.sol` contract is a basic ERC20 token with an initial supply minted to the deployer, using OpenZeppelin Contracts v5.0.2.

## Network Details

- **Network Name:** 0G-Galileo-Testnet
- **RPC URL:** https://evmrpc-testnet.0g.ai
- **Chain ID:** 16601
- **Token Symbol:** OG
- **Explorer:** [Chainscan](https://chainscan-galileo.0g.ai/)

## General Requirements

- Node.js/npm (for Truffle and Hardhat)
- Foundry (for the Foundry example)
- A private key for an account funded with 0G Testnet V3 tokens.

**Important:** Follow the instructions within each framework's directory (`truffle/`, `hardhat/`, `foundry/`) to set up environment variables (`.env` file) with your private key and the RPC URL.

# 🚀 0G Hardhat Deployment Example

This project contains a simple example of deploying an ERC20 token (`MyToken.sol`) to the **0G Testnet V3 (Galileo)** using [Hardhat](https://hardhat.org).

🧰 Tech Stack

Hardhat ( https://hardhat.org/)

0G Testnet V3 (Galileo)

🌐 0G Testnet Network Details

| Parameter    | Value                                                |
| ------------ | ---------------------------------------------------- |
| Network Name | 0G-Galileo-Testnet                                   |
| RPC URL      | `https://evmrpc-testnet.0g.ai`                       |
| Chain ID     | `16601`                                              |
| Token Symbol | `OG`                                                 |
| Explorer     | [Chainscan Galileo](https://chainscan-galileo.0g.ai) |

### **_⚙️ Installation & Deployment_**

**1. Clone the repo**

```
git clone https://github.com/plikipie/0g-deploy-token.git
cd 0g-hardhat-deploy
```

**2. Install dependencies**

```
npm install
```

**3. Create .env file**

```
PRIVATE_KEY=0xYOUR_PRIVATE_KEY
RPC_URL=https://evmrpc-testnet.0g.ai
```

**4. Compile the contract**

```
npx hardhat compile
```

**5. Deploy to 0G Testnet V3**

```
npx hardhat run scripts/deploy.js --network og_testnet_v3
```
