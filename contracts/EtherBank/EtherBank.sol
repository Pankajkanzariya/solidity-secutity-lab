// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

contract EtherBank {

    mapping (address => uint256) public balances;

    function deposit() public payable{
        require(msg.value > 0, " Must send ETH");
        balances[msg.sender] += msg.value;


    } 
    function withdraw() public {
        uint256 amount = balances[msg.sender];
        require(amount > 0, "No balance ");
        balances[msg.sender] = 0;
        (bool success,) = msg.sender.call{value: amount } ();
        require(success,"transfer failed");

    }
    function getContractBalance() public view return (uint256) {
        
    }
     }

        
    
