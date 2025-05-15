

# 🚀 0G Hardhat Deployment Example

This project contains a simple example of deploying an ERC20 token (`MyToken.sol`) to the **0G Testnet V3 (Galileo)** using [Hardhat](https://hardhat.org).
## General Requirements

- Node.js/npm (for Truffle and Hardhat)
- Foundry (for the Foundry example)
- A private key for an account funded with 0G Testnet V3 tokens.

**Important:** Follow the instructions within each framework's directory (`truffle/`, `hardhat/`, `foundry/`) to set up environment variables (`.env` file) with your private key and the RPC URL.

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
git clone https://github.com/plikipie/0g-hardhat-deploy.git
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
