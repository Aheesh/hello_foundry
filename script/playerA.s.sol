// SPDX-license-Identifier: MIT

pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "src/playerA.sol";

contract PlayerAScript is Script {
    PlayerA playerA;

    function setUp() public {
        //playerA = new PlayerA(address(this));
    }

    function run() public {
        vm.startBroadcast();
        playerA = new PlayerA(address(this));
        //playerA.mint(address(this), 600);
        vm.stopBroadcast();
    }
}
