// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.16;

contract Soludion {
    uint myValue =0;

    function controlStructureFunc(uint x) public pure returns(uint) {
        if(x==0) return 100;
        uint result =x;
        uint i =0;
        while (i< 10) {
            result += result;
            i++;
        }
        return result;

    }
}

// contract Boucles {
//     uint myValue = 10;

//     function isLessThanOrEqual(uint testValue) view public returns (bool) {
//         if(testValue <= myValue) {
//         return true;
//         } else {}
//             return false;
//     }
// }

// contract LoopWhil {
//     uint public myValue = 10;

//     function incrementer() public {
//         while(myValue <= 100) {
//             myValue++;
//         }
//     }
// }

// contract LoopFor {
//     uint public myValue = 10;

//     function incrementer() public {
//         for(uint i=0; i<=100; i++) {
//             myValue++;
//         }
//     }
// }

// contract LoopBreak {
//     uint public myValue =0;

//     function incrementer () public {
//         for(uint i=0; i <= 100; i++) {
//             myValue++;
//             if(myValue == 5) {
//                 break;
//             }
//         }
//     }
// }

// contract LoopContinue {
//     uint public myValueFor =0;
//     uint public myValueWhile =0;

//     function forIncrementer() public {
//         for(uint i=0; i < 5; i++) {
//             if(i ==1) {
//                 continue;
//                 }
//             myValueFor++;
//         }
//     }
//     function whileIncrementer() public {
//         uint i =0;
//         while(i <5) {
//             i++;
//             if(i==1) {
//                 continue;
//             }
//             myValueWhile++;
//         }
//     }
// }
// contrat ReturnContract {
// uint public =0;

// function returnerWithNoValue() public {
//     myValue =1;
//     return; 
//     myValue =2;
// }
