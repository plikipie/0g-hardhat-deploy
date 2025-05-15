cat > README.md << 'EOF'
# 🚀 0G Hardhat Deployment Example

This project contains a simple example of deploying an ERC20 token (`MyToken.sol`) to the **0G Testnet V3 (Galileo)** using [Hardhat](https://hardhat.org).

---

## 🧱 Contract

The contract used is a basic ERC20 token built using [OpenZeppelin Contracts v5.0.2](https://github.com/OpenZeppelin/openzeppelin-contracts).

```solidity
// contracts/MyToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        _mint(msg.sender, initialSupply);
    }
}

