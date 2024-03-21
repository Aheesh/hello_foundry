//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "src/playerB.sol";

contract PlayerBTest is Test {
    PlayerB playerB;

    function setUp() public {
        playerB = new PlayerB(address(this));
    }

    function testPause() public {
        playerB.pause();
        assertEq(playerB.paused(), true);
    }

    function testUnpause() public {
        playerB.pause();
        playerB.unpause();
        assertEq(playerB.paused(), false);
    }
}
