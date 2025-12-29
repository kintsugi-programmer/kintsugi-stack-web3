// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.30;
contract Arrays {
    // Arrays: Collection of items of the same type
    uint[] public numbers;// Dynamic Arrays
    uint[2] public pair;// Fixed Size Arrays
    uint[] public Quad = [1,2,3,4];// Initialized Arrays
    string[] public Names = ["Bali","Biswas"];
    // Names.push("Bhaskar"); // only variable declarations are allowed at contract scope // NO

    // Sample Func. for Names
    function PUSH_TEXT(string memory _text) public{
        Names.push(_text);
    }
    function GET_LENGTH() public view returns(uint){
        return Names.length;
    }
    function GET_TEXT(uint _INDEX) public view returns(string memory){
        return Names[_INDEX];
    }

}