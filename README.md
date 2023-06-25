# Metacrafters-Solidity-EVM-Beginner

## About
This project showcases how to create a new token within Solidity.

## Getting Started

### Running of the program
- Go to [Remix Ethereum](remix.ethereum.org)
- Add the repository to the workspace.
- Compile the program and run the script. With this, you are able to burn, mint, and check the balance of a specific address.

### Functions
#### Mint
- Adds new tokens to the address given, the address should be the same to the one requesting the mint. The number of tokens added to the address should also be sent as a parameter
#### Send
- Transfers tokens from one address to the other. This function takes in the address the token would be sent and the number of tokens to be sent. If the sender does not have enough tokens, the transaction does not proceed.
#### Burn
- Removes tokens from the sender, the amount of tokens to be removed should be less than or equal to the amount that the sender currently has.

### Authors
Contributors of this project includes:
- Aron Nick Santos
- [Metacrafters](academy.metacrafters.io/home)
