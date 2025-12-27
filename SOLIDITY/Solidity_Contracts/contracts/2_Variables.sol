// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Variables {
    address public add1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;
    string public name = "Bali";
    bool public isActive = true;
    uint8 public maxSupply = 255;
    // uint8 public maxSupply = 256; // throws error
    uint16 public count = 65000;
    uint128 public largeNum = 1234567654321234567654321;
    uint256 public veryLargeNum = 12345678909876543222221234567890294378543750348507890298985790238999;
    uint256 public timeWaited = 1 days; // 1 day = 86400 (seconds) 
}