# 0G Testnet V3 Deployment Script Examples

This repository provides example scripts for deploying a simple ERC20 token (`MyToken.sol`) to the 0G Testnet V3 (Chain ID: 80087) using popular development frameworks:

*   **[Truffle](./truffle/README.md)**
*   **[Hardhat](./hardhat/README.md)**
*   **[Foundry](./foundry/README.md)**

Each directory contains a self-contained example with specific setup and deployment instructions in its respective `README.md` file.

## Purpose

These examples are intended to help developers quickly get started with deploying smart contracts to the 0G Testnet V3 using their preferred framework.

## Contract

The `MyToken.sol` contract is a basic ERC20 token with an initial supply minted to the deployer, using OpenZeppelin Contracts v5.0.2.

## Network Details

*   **Network Name:** 0G Testnet V3
*   **RPC URL:** `https://rpc-testnet.0g.ai`
*   **Chain ID:** `80087`
*   **Explorer:** (Add link when available)

## General Requirements

*   Node.js/npm (for Truffle and Hardhat)
*   Foundry (for the Foundry example)
*   A private key for an account funded with 0G Testnet V3 tokens.

**Important:** Follow the instructions within each framework's directory (`truffle/`, `hardhat/`, `foundry/`) to set up environment variables (`.env` file) with your private key and the RPC URL. 