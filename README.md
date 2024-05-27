# Error Handling In Solidity

Metacrafters ETH + AVAX Module - 1

## Description

This Solidity file, Module_One_Assessment.sol, demonstrates the use of require, assert, and revert for error handling in Solidity contracts. It includes a simple contract named errorDemo with functions for minting tokens and transferring tokens between addresses.

## Getting Started

### Compilation and Deployment

* Head over to https://remix.ethereum.org/
* Upload the file on to the editor.
* Press Ctrl/Command + S to compile the file.
* Then deploy the contract from the deployment section of the remix platform. The section is present just below the compilation section.
* Now, You will be able to interact with the contract "errorDemo".

### Understanding the statements

```
require (msg.sender == owner, "Only owner can perform this operation.");
```
* The line is defined inside a function modifier and the modifier is implemented on mintFor function.
* It will allow the function to be executed only when the deployer is trying to execute it.
* Else "Only owner can perform this operation." will be shown to the interactor.
```
revert lackOfFunds(balanceMapping[_senderAddress], _howMany);
```
* This reverts the state of the blockchain state variables when a user tries to transfer the amount of coins greater than the amount present in his wallet.

```
error lackOfFunds (uint _amountYouHave, uint _amountRequired);
```
* The error revert statement throws is a custom error designed to inform the user about the amount required and amount present.
```
assert (trxCount >= 1);
```
* Finally, assert statement is executed if there is some internal error present in the contract. What if due to some problem trxCount doesn't gets incremented.
* To maintain correctness in data again the changes in state variables gets reverted.


## Help

You can reach out to the author through [email.](bimaltyagi333@gmail.com)

## Authors
Bimal Tyagi


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
