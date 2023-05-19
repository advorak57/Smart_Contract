# Smart_Contract

# Joint Savings Account Smart Contract Activity

## Overview
This activity involves creating, deploying, and interacting with a Solidity smart contract for a joint savings account on a local blockchain development environment. This Smart Contract allows two users to control a joint savings account, track withdrawals, and balance.

## Steps

1. **Environment Setup:** Use the JavaScript VM provided by the Remix IDE for local blockchain development.

2. **Smart Contract Creation:** Write a `JointSavings` smart contract in Solidity. The contract should define necessary variables and functions for managing the joint savings account. This includes functions for withdrawal, deposit, and setting the account owners.

3. **Smart Contract Deployment:** Deploy your `JointSavings` smart contract on the local blockchain environment.

4. **Interaction:** Interact with the deployed smart contract to transfer and withdraw funds. This can be done within the Remix IDE using the deployed contract interface.

## Features
- The `withdraw` function allows one of the account owners to withdraw a specific amount from the contract. It checks for ownership and sufficient balance before making a transfer.
- The `deposit` function allows anyone to deposit funds into the contract. It updates the contract balance accordingly.
- The `setAccounts` function allows setting the addresses of the two account owners.

## Tools Required
- [Remix IDE](https://remix.ethereum.org)

## Completion Criteria
- Smart Contract compiles without any errors
- Smart Contract is successfully deployed on the JavaScript VM
- Functions work as expected without any errors
