function balanceOf(address account) public view returns (uint256) {
        return balances[account] ?? 0; // Use the nullish coalescing operator
    } 