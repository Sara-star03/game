# Number Guessing Game Smart Contract

This Solidity smart contract implements a simple number guessing game with automated prize distribution. Players submit a fixed guess and send Ether to participate. If the guess matches the pre-defined secret number, the player wins the prize pool.

## Features

- Players can participate by sending Ether.
- If the predefined number matches the secret hash, the player wins the entire prize pool.
- The contract owner can withdraw any remaining funds.

## How It Works

1. A fixed secret number is hashed and stored in the contract.
2. Players send Ether along with their guess.
3. If the guess is correct, they receive the accumulated prize pool.
4. The contract owner can withdraw any unclaimed funds.

## Deployment

- Ensure you have Solidity 0.8.x installed.
- Deploy the contract on Ethereum or a compatible blockchain.
- Interact with the contract using a Web3 provider like MetaMask or Hardhat.

## Security Considerations

- The secret number should be securely chosen and hashed.
- The owner should periodically update the hash to maintain fairness.
- Ensure proper gas estimation when interacting with the contract.

## Contact

For questions or collaborations, contact:

**Contact Address:** 

0xD1767dD9bc6D77Be05C31c206992D3c1134040F7
