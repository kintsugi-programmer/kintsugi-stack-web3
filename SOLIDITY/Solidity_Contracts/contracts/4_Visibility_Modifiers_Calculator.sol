// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
contract Calculator_Basic{
    uint256 result =0;
    function add(uint256 num) internal {
        result+=num;
    }
    function sub(uint256 num) private  {
        result-=num;
    }
}
contract Calculator_Advanced is Calculator_Basic{ // inheritance
    function mul(uint256 num) public {
        result*=num;
    }    

    function div(uint256 num) external  {
        result/=num;
    }

    function performOperation(uint256 x)public {
        add(x);// from parent contract // internal, used within contract or by inherit
        // sub(x);// from parent contract // private, so can't used externally // NO
        mul(1000);// from this contract
        // div(10);// external, can't use inside contract, only be used outside the contract // NO
    }
}
