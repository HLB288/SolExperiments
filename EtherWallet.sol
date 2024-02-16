// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract EtherWallet {

    address payable public owner;

    constructor (address payable _owner)  {
        owner = _owner;
    }
    function deposit() payable public {

    }

    function withdraw(address payable receiver, uint amount) public {
        require(msg.sender == owner, "Only owner can withdraw the Ether");
        receiver.transfer(amount);
    }

    function balanceOf() view public returns(uint) {
        return address(this).balance;
    }

   
}