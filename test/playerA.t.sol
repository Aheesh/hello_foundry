// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "src/playerA.sol";

contract PlayerATest is Test {
    PlayerA playerA;

    function setUp() public {
        playerA = new PlayerA(address(this));
    }

    function testMint() public view {
        //playerA.mint(address(this), 600);
        assertEq(playerA.balanceOf(address(this)), 600000000000000000000);
    }
}
