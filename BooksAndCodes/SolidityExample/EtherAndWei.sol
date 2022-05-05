// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
//Similar to how one dollar is equal to 100 cent, one ether is equal to 1018 wei.
// 1ETH = 1Ether = 1E18 wei = 1000000000 Gwei

contract EtherUnits {
    uint public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;
}
