
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract CHESS {
   // public variables here
   string public tokenName = "CHESS";
   string public tokenAbbrv = "CHS";
   uint public totalSupply = 0;

   address public minter;
   mapping(address => uint) public balances;


   event Sent(address from, address to, uint amount);

   constructor() {
      minter = msg.sender;
   }

   function mint(address receiver, uint amount) public {
      require(msg.sender == minter);
      balances[receiver] += amount;
      totalSupply += amount;
   }

   error InsufficientBalance(uint requested, uint available);

   function send(address receiver, uint amount) public {
      if (amount > balances[msg.sender])
      revert InsufficientBalance({
         requested: amount,
         available: balances[msg.sender]
      });

      balances[msg.sender] -= amount;
      balances[receiver] += amount;

      emit Sent(msg.sender, receiver, amount);
   }

   function burn(uint amount) public {
      require(balances[minter] >= amount);
      balances[minter] -= amount;
      totalSupply -= amount;
   }

}
