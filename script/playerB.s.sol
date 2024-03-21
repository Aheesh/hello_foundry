//SPDX-License Identifier: MIT

pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "src/playerB.sol";

contract PlayerBScript is Script {
    PlayerB playerB;

    function setUp() public {
        //playerB = new PlayerB(address(this));
    }

    function run() public {
        vm.startBroadcast();
        playerB = new PlayerB(address(this));
        //playerB.pause();
        vm.stopBroadcast();
    }
}
