# Foundry Deployment Example for 0G Testnet V3

This directory contains an example of deploying an ERC20 token (`MyToken.sol`) to the 0G Testnet V3 (Chain ID: 80087) using Foundry.

## Prerequisites

*   Foundry (follow installation instructions: https://book.getfoundry.sh/getting-started/installation)

## Setup

1.  **Manual Dependency Installation:**
    Since `forge install` requires a git repository and we initialized this with `--no-git`, dependencies need to be added manually.

    *   **OpenZeppelin Contracts:**
        ```bash
        # Ensure you are in the foundry/ directory
        mkdir -p lib/openzeppelin-contracts
        cd lib/openzeppelin-contracts
        # Download and extract version 5.0.2 (or your desired version)
        curl -L https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v5.0.2.tar.gz | tar -xz --strip-components=1
        cd ../.. # Back to foundry/ directory
        ```
    *   **(Optional) foundry-dotenv:**
        If you wish to use the `dotenv/DotEnv.sol` helper (currently commented out in the script), download it:
        ```bash
        # Ensure you are in the foundry/ directory
        mkdir -p lib/foundry-dotenv
        cd lib/foundry-dotenv
        curl -L https://github.com/drgorillamd/foundry-dotenv/archive/refs/heads/master.tar.gz | tar -xz --strip-components=1
        cd ../.. # Back to foundry/ directory
        # You would also need to uncomment the import in DeployMyToken.s.sol 
        # and update foundry.toml remappings/libs if you use this.
        ```

2.  **Environment Variables:**
    Foundry scripts read environment variables directly. Create a `.env` file in this directory (`foundry/.env`) with your deployment credentials:
    ```dotenv
    # Private key of the deployment account (WITH 0x prefix)
    PRIVATE_KEY="0xYOUR_PRIVATE_KEY_HERE"
    ```
    **Important:** Ensure the private key corresponds to an account with funds on the 0G Testnet V3.

## Compilation

Compile the contracts and script:

```bash
forge build
```

## Deployment

Deploy the `MyToken` contract to the 0G Testnet V3 using the script. Make sure your `.env` file is present in this directory.

```bash
# Ensure PRIVATE_KEY are set in .env & pass RPC_URL in the command line replacing <your_rpc_url> with the actual RPC URL

forge script script/DeployMyToken.s.sol:DeployMyToken --rpc-url <your_rpc_url> --broadcast --legacy
```

Foundry will output the transaction details, including the deployed contract address.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/DeployMyToken.s.sol:DeployMyToken --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
