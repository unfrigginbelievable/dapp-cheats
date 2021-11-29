// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./DappCheats.sol";

contract DappCheatsTest is DSTest {
    DappCheats cheats;

    function setUp() public {
        cheats = new DappCheats();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
