// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.16;

contract SimpleContract {
    uint storedData; 

    function  getstoredData() public view returns(uint) {
        return storedData;
    }

function square(uint x) public pure returns(uint) {
    return x * x;
}
}