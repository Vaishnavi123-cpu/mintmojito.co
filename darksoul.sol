pragma solidity ^0.8.0;

contract TimeLockedMessage {
    struct Message {
        address sender;
        string text;
        uint256 unlockTime;
        bool revealed;
    }
…        address sender,
        uint256 unlockTime,
        bool revealed
    ) {
        Message storage msgData = messages[_messageId];
        return (msgData.sender, msgData.unlockTime, msgData.revealed);
    }
}
