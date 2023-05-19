/*
Joint Savings Account
---------------------

To automate the creation of joint savings accounts, you will create a solidity smart contract that accepts two user addresses that are then able to control a joint savings account. Your smart contract will use ether management functions to implement various requirements from the financial institution to provide the features of the joint savings account.

The Starting file provided for this challenge contains a `pragma` for solidity version `5.0.0`.
You will do the following:

1. Create and work within a local blockchain development environment using the JavaScript VM provided by the Remix IDE.

2. Script and deploy a **JointSavings** smart contract.

3. Interact with your deployed smart contract to transfer and withdraw funds.

*/

pragma solidity ^0.5.0;

// Define a new contract named `JointSavings`
contract JointSavings {

    // Define the variables as per the instructions
    address payable public accountOne;
    address payable public accountTwo;
    address public lastToWithdraw;
    uint public lastWithdrawAmount;
    uint public contractBalance;

    function withdraw(uint amount, address payable recipient) public {
        // Check if the recipient owns the account
        require(recipient == accountOne || recipient == accountTwo, "You don't own this account!");

        // Check if there are sufficient funds
        require(amount <= contractBalance, "Insufficient funds!");

        // Check and set the lastToWithdraw
        if (lastToWithdraw != recipient) {
            lastToWithdraw = recipient;
        }

        // Transfer the amount and update the lastWithdrawAmount and contractBalance
        recipient.transfer(amount);
        lastWithdrawAmount = amount;
        contractBalance = address(this).balance;
    }

    function deposit() public payable {
        // Update the contractBalance
        contractBalance = address(this).balance;
    }

    function setAccounts(address payable account1, address payable account2) public{
        // Set the accounts
        accountOne = account1;
        accountTwo = account2;
    }

    // Default fallback function
    function() external payable {
        // Call the deposit function when ether is sent
        deposit();
    }
}
