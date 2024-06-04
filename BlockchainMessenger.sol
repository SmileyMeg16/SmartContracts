//SPDX-License-Identifier: MIT

// Contract that allows any user to see the message on the chain
// but only allows the owner to write to the chain. Counts how many
// times the message was updated.

// Megan Steeves
// Last Updated 06/04/2024

pragma solidity 0.8.15;

contract BlockchainMessenger {

    uint public changeCounter;

    address public owner;

    string public message;

    constructor() {
        owner = msg.sender;
    }

    function UpdateMessage(string memory _newMessage) public {
        if(msg.sender == owner) {
            message = _newMessage;
            changeCounter++;
        }
    }
}
