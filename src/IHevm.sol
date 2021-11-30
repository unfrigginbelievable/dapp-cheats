// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface Hevm {
    // sets the block timestamp to x
    function warp(uint256 x) external;

    // sets the block number to x
    function roll(uint256 x) external;

    // reads the slot loc of contract c
    function store(
        address c,
        bytes32 loc,
        bytes32 val
    ) external;

    function load(address, bytes32) external view returns (bytes32);

    function ffi(string[] calldata) external returns (bytes memory);
}
