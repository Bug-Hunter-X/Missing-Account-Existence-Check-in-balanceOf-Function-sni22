# Missing Account Existence Check in balanceOf Function

This example demonstrates a common error in Dapps: forgetting to handle cases where an account does not exist in a balance mapping. The `balanceOf` function should gracefully return 0 if the account is not found, instead of reverting the transaction.

## Bug

The `balanceOf` function directly accesses the `balances` mapping without checking if the account exists. This will throw an error if an account is not found.

## Solution

The solution involves adding a simple check to see if the account exists in the `balances` mapping before returning its balance. If the account is not found, the function will return 0.

## How to reproduce the bug

1. Deploy the contract with the buggy `balanceOf` function.
2. Attempt to check the balance of an address that has not interacted with the contract (doesn't have an entry in the balances mapping)