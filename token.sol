// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 < 0.9.0;

contract Token {

    string public tokenName = "MY_TOKEN";
    string public tokenSymbol = "MTK";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    // mint function
    function mint(address recipient, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        totalSupply += amount;
        balances[recipient] += amount;
    }

    // burn function
    function burn(address sender, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[sender] >= amount, "You don't have enough balance");
        totalSupply -= amount;
        balances[sender] -= amount;
    }
}
