// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 public count;  // This Variable stored permanently on the Blockchain ( Storage )
    function increment() public {
        count += 1;

    }
    
    function decrement() public {
        require(count > 0, "can not go below zero");
        count -= 1;
    }
    function rese() public{
        count = 0;
    }
}