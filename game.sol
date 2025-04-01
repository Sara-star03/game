pragma solidity ^0.8.0;

contract NumberGuessingGame {
    address payable public owner;
    bytes32 private constant secretHash = keccak256(abi.encodePacked(uint256(42))); // Properly hashed value
    uint256 public prizePool;
    
    event GuessMade(address indexed player, bool won);
    event PrizeWon(address indexed winner, uint256 amount);
    
    function makeGuess() public payable {
        require(msg.value > 0, "Must send some Ether to participate");
        prizePool += msg.value;
        uint256 predefinedGuess = 42; // Fixed guess value
        
        if (keccak256(abi.encodePacked(predefinedGuess)) == secretHash) {
            uint256 prize = prizePool;
            prizePool = 0;
            payable(msg.sender).transfer(prize);
            emit PrizeWon(msg.sender, prize);
            emit GuessMade(msg.sender, true);
        } else {
            emit GuessMade(msg.sender, false);
        }
    }
    
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        uint256 amount = address(this).balance;
        owner.transfer(amount);
    }
}
