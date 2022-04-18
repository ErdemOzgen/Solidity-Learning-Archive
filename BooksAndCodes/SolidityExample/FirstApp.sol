// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Counter {
    uint public count;

    // Function to get the current count
    // For Function State look that link ==> 
    //https://medium.com/coinmonks/function-state-mutability-in-solidity-acb850eedccc
    /**
    The two major state mutability modifiers in solidity are:
        * View
        * Pure

        View functions are read-only functions and are declared 
        with the view keyword. They do not modify the state of 
        the blockchain. This means that functions declared with 
        the view keyword cannot contain code that potentially modify
        state variables or data stored on the blockchain.Additionally,
        view functions cannot  receive or send ether and can only call other view or pure
        functions

        Functions marked as pure neither read from nor write to the blockchain. 
        They cannot receive or send ether, cannot use members of msg or
        members of block and can only call other pure functions


    
     */
    function get() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        count -= 1;
    }
}
