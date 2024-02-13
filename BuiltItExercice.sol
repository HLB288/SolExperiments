// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

/*
Write a constructor that takes in 2 arguments of types uint and string and sets the state 
variable values to these passed-in values in the constructor.
*/
contract Exercise {

  // TODO: The function declaration may not be fully complete
  // HINT: Look at how to handle the type "address"
  function addition() public payable returns(uint) {
    uint blockNumber = block.number;
    uint etherSent = msg.value;
    return (blockNumber + etherSent);

  }
}