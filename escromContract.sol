//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Escrow {
    address public buyer ;
    address payable public seller;
    address public escrowParty;
    uint public amount;

    constructor(address _buyer, address payable _seller, uint _amount) {
        buyer = _buyer;
        seller = _seller;
        escrowParty = msg.sender;
        amount = _amount;

    }
    
    function deposit () payable public {
        require(msg.sender == buyer, "Sender must be the buyer of the item");
        require(address(this).balance <= amount, "Cannot send more thant the amount required by the escrow");
    }

    function release () public onlyEscrowParty (){
        require(address(this).balance == amount, "Cannot release funds before full amount is sent");
        seller.transfer(amount);

    }
    modifier onlyEscrowParty() {
        require(msg.sender == escrowParty, "Only escrow party can perform this operation");
        _;
    }
}