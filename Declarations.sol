// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;
contract delcation {
    uint public a;
    bool public b;
    string public c;
    address public d;
    bytes32 public e;

    function VazriableSclop() pure public {
        {
            uint sameVar;
            sameVar =1;
        }
        {
            uint sameVar; 
            sameVar =2;
        }
    }
}