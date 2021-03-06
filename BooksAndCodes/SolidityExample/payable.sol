// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
//https://blog.finxter.com/what-is-payable-in-solidity/
//https://www.youtube.com/watch?v=A4VMhRIWSs0&t=3s
contract Payable {
    // Payable address can receive Ether
    address payable public owner;

    // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether into this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
    function deposit() public payable {}

    // Call this function along with some Ether.
    // The function will throw an error since this function is not payable.
    function notPayable() public {}

    // Function to withdraw all Ether from this contract.
    function withdraw() public {
        // get the amount of Ether stored in this contract
        uint256 amount = address(this).balance;

        // send all Ether to owner
        // Owner can receive Ether since the address of owner is payable
        (bool success, ) = owner.call{value: amount}(""); 
        //https://kushgoyal.com/ethereum-solidity-how-use-call-delegatecall/#:~:text=Solidity%20has%20the%20call%20function,to%20transfer%20ether%20to%20addresses.
        require(success, "Failed to send Ether");
    }

    // Function to transfer Ether from this contract to address from input
    //"0xaddress", "100000000000000000000" use in remix
    function transfer(address payable _to, uint256 _amount) public {
        // Note that "to" is declared as payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
    //use this

        function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
        // What is msg ==> https://medium.com/upstate-interactive/what-you-need-to-know-about-msg-global-variables-in-solidity-566f1e83cc69
    }
}
