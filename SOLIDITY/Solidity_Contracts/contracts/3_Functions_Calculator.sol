// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Functions_Calculator{
    uint256 result = 0;
    function get() public view returns (uint256){ return result ; }
    function addition(uint256 num) public { result+=num; }
    function multiply(uint256 num) public { result*=num; }
    function subtract(uint256 num) public { result-=num; } // will revert if num > result
    function division(uint256 num) public { require(num!=0,"Division by Zero");result/=num; }
    function power(uint256 num) public { result=result**num; }
    //  function power(uint256 num) public { result^=num; }//NO
    //  function power(uint256 num) public { result**=num; }//NO
    function mod(uint256 num) public {require(num!=0,"Modulo by Zero");result %=num;}
    function reset() public { result=0; }
}