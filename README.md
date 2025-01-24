# Unhandled Exception in Dapp Ownership Transfer

This repository demonstrates a common error in decentralized applications (Dapps): unhandled exceptions during ownership transfer.  The `transferOwnership` function lacks proper error handling, potentially leading to unexpected application behavior or failure.  The solution showcases how to improve the function to handle potential issues robustly.

## Bug Description
The provided Solidity code implements ownership transfer functionality for a smart contract. However, it does not gracefully handle exceptions that might occur during the ownership transfer process. This could result in the transaction failing silently or causing unexpected behavior in the Dapp. 

## Solution
The solution adds robust error handling. This involves using a `try-catch` block to handle potential exceptions during the `transferOwnership` and `_transferOwnership` processes. This ensures that the Dapp doesn't crash unexpectedly.