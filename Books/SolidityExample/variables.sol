// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // Here are some global variables
        // see docs https://docs.soliditylang.org/en/v0.4.24/units-and-global-variables.html#special-variables-and-functions
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller // https://stackoverflow.com/questions/48562483/solidity-basics-what-msg-sender-stands-for#:~:text=message%20(current%20call)-,msg.,call%20would%20be%20the%20msg.
        //uint value = msg.value; // value transferred with the message
    }
}
