// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "./IHevm.sol";

contract TokenCheats {
    Hevm hevm = Hevm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);

    // Gives an arbitrary amount of specified ERC20 token to arbitrary address
    function setTokens(
        address _recipient,
        address _token,
        uint256 _amount
    ) public {
        hevm.store(
            _token,
            keccak256(abi.encode(_recipient, uint256(0))),
            bytes32(_amount)
        );
    }
}
