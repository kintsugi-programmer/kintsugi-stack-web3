// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Twitter_Basic{
    mapping(address => string) tweets;
    function createTweet (string memory _tweet) public {
        // memory :
        // - Required for complex types (strings, arrays)
        // - Stores data temporarily
        // - Cleared after function execution
        // - Tells Solidity where to store data
        tweets[msg.sender]=_tweet;
    } 
    function getTweet(address _owner) public view returns (string memory){
        // memory &
        // `view` : will make contract more gas efficient, declaring that we are just getting the data, not modification
        return tweets[_owner];    
    }
}