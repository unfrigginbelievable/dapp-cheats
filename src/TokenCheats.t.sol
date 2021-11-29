// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./TokenCheats.sol";

contract TokenCheatsTest is DSTest {
    TokenCheats tc;
    // NOTE: Address is for polygon DAI
    IERC20 DAI = IERC20(0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063);

    function setUp() public {
        tc = new TokenCheats();
    }

    function test_tokenCheats() {
        assertEq(DAI.balanceOf(address(this)), 0);
        setTokens(address(this), address(DAI), 100 ether);
        assertEq(DAI.balanceOf(address(this)), 100 ether);
        DAI.transfer(0xBdEf5Ac3144deAeb9df6F56e86b0AD9C2dBDE530, 10 ether);
        assertEq(DAI.balanceOf(address(this)), 90 ether);
    }
}
