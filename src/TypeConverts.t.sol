// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";
import "./TypeConverts.sol";

contract TypeConvertsTest is DSTest, TypeConverts {
    function setUp() public {
        // Tested contract is inherited
    }

    function test_addressConvert() public {
        string memory out = addressToString(address(this));
    }
}
