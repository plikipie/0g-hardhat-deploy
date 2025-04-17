// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Script } from "forge-std/Script.sol";
import { console } from "forge-std/console.sol";
import { Vm } from "forge-std/Vm.sol";
import { MyToken } from "../src/MyToken.sol";

contract DeployMyToken is Script {
    function run() external {
        // Load environment variables using vm cheatcodes
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // Check if environment variables are set (Forge will error if not found)
        if (deployerPrivateKey == 0) {
            revert("PRIVATE_KEY environment variable not set or invalid");
        }


        uint256 initialSupply = 1_000_000 * 10**18; // 1,000,000 tokens with 18 decimals

        console.log("Deployer address:", vm.addr(deployerPrivateKey));

        vm.startBroadcast(deployerPrivateKey);

        MyToken myToken = new MyToken(initialSupply);

        vm.stopBroadcast();

        console.log("MyToken deployed to:", address(myToken));
        // Transaction hash is available in the command output from forge script
    }
} 