⏳ TimeLockedMessage Smart Contract
Overview

The TimeLockedMessage contract allows users to send messages that remain locked until a specified unlock time. Only after the unlock time has passed can the message be revealed. This can be used for delayed announcements, secure message delivery, or time-based communication on the blockchain.

🧱 Smart Contract Details

Language: Solidity ^0.8.0

Network: Ethereum (EVM-compatible)

Contract Name: TimeLockedMessage

Contract Address: 0x759c05730609719a8BfFAc523375eF3fAEBb78

Deployed Block: 74317330

⚙️ Features

Send Time-Locked Messages:
Users can send a message with a specific unlock timestamp.

Reveal After Unlock:
The sender or anyone can reveal the message once the unlock time has passed.

Transparency:
All messages are publicly viewable on-chain after unlocking.

📜 Structure
struct Message {
    address sender;
    string text;
    uint256 unlockTime;
    bool revealed;
}

View Function Example:
function getMessage(uint256 _messageId) 
    public view 
    returns (
        address sender,
        uint256 unlockTime,
        bool revealed
    );

🚀 Deployment Info
Property	Value
Transaction Hash	0x8b533e8bfaeed6b2017cde2ccf7624b751b672bbbd65ca678fb20c2b97adbb
Block Hash	0xf879a1bedf588c93fcc801523b47b54b3220ef2c468c95d3fe63d741f887189d
Block Number	74317330
Status	✅ Transaction mined and execution succeeded
🧪 Example Usage
1️⃣ Send a Message
sendMessage("Hello Future!", 1734567890);


Stores a message that can be revealed after the UNIX timestamp 1734567890.

2️⃣ Reveal a Message
revealMessage(1);


Reveals the message with ID 1 once its unlock time has passed.

3️⃣ View Message Metadata
getMessage(1);


Returns the sender, unlock time, and reveal status.

🛠️ Development Setup
Prerequisites

Node.js >= 18

Hardhat or Remix

MetaMask (for testing/deployment)

Steps
git clone https://github.com/yourusername/TimeLockedMessage.git
cd TimeLockedMessage
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network <network_name>

🔒 Security

Uses Solidity 0.8+ with built-in overflow protection.

Message unlocking is strictly enforced by timestamp.

No external dependencies, ensuring low attack surface.

📄 License

This project is licensed under the MIT License.
Feel free to modify and use it in your own decentralized applications.
