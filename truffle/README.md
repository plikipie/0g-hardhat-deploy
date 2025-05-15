# Truffle Deployment Example for 0G Testnet V3

This directory contains an example of deploying an ERC20 token (`MyToken.sol`) to the 0G Testnet V3 (Chain ID: 16601) using Truffle.

## Prerequisites

*   Node.js and npm
*   Truffle (`npm install -g truffle`)

## Setup

1.  Install dependencies:
    ```bash
    npm install
    ```
2.  Create a `.env` file in this directory (`truffle/.env`) by copying the example:
    ```bash
    cp .env.example .env
    ```
3.  Edit the `.env` file and add your private key and the 0G Testnet V3 RPC URL:
    ```dotenv
    PRIVATE_KEY="YOUR_PRIVATE_KEY_HERE"
    RPC_URL="https://rpc-testnet.0g.ai"
    ```
    **Important:** Ensure the private key corresponds to an account with funds on the 0G Testnet V3.

## Compilation

Compile the contracts:

```bash
truffle compile
```

## Deployment

Deploy the `MyToken` contract to the 0G Testnet V3:

```bash
truffle migrate --network og_testnet_v3
```

Truffle will output the transaction hash and the address of the deployed contract. 