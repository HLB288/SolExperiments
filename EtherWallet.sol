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

//multiple person can interact

// pragma solidity ^0.8.16;

// contract Solution {
//     mapping(address => uint256) private wallets;

//     function deposit() public payable {
//         wallets[msg.sender] += msg.value;
//     }

//     function transfer(address payable receiver, uint amount) public {
//         require(
//             wallets[msg.sender] >= amount,
//             "Not enough money in the wallet"
//         );
//         wallets[msg.sender] -= amount;
//         wallets[receiver] += amount;
//     }

//     function withdraw(uint amount) public {
//         address payable receiver = payable(msg.sender);
//         require(
//             wallets[msg.sender] >= amount,
//             "Not enough money in the wallet"
//         );
//         wallets[msg.sender] -= amount;
//         receiver.transfer(amount);
//     }

//     function myBalance() public view returns (uint) {
//         return wallets[msg.sender];
//     }
// }