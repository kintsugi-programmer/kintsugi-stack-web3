// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
contract Mapping{
    // Mapping from address to uint
    // Think of this like a dictionary: myMap[address] = uint
    mapping(address => uint256) myMap;
    
    /**
    * @notice Stores a value for the caller's address.
    *
    * @dev `msg.sender` is the address that invokes this function.
    * - If a user wallet calls the function, `msg.sender` is that wallet address.
    * - If another contract calls the function, `msg.sender` is that contract’s address.
    *
    * `msg.sender` is automatically provided by the EVM in every transaction
    * and is commonly used to associate data with the caller.
    */
    function createAuto(uint256 value) public {
        myMap[msg.sender]=value;

    }
    
    //msg.sender = the address that called the function
    //if a user wallet calls → it’s the user’s address
    //if a contract calls → it’s that contract’s address
    //It is automatically provided by Ethereum in every transaction.

    function getMyAddress() public view returns (address) {
        return msg.sender;
    }


    /**
     * @dev Retrieves the value for a specific address.
     * If the value was never set, it returns the default value (0).
     */
    function get(address _address) public view returns (uint256){
        // `view` will make contract more gas efficient, declaring that we are just getting the data, not modification
        return myMap[_address];
    }

    /**
     * @dev Updates or sets the value for a specific address.
     */
    function set(address _address, uint256 _newVal) public {
        myMap[_address]=_newVal;
    }

    /**
     * @dev Resets the value back to the default (0).
     */
    function reset(address _address) public{
        delete myMap[_address];
    }

}