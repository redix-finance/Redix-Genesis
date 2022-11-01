// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TOKEN is ERC20, Ownable {
    uint256 public _totalSupply = 100000000 * (10**18);
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        _mint(msg.sender, _totalSupply);
    }

    function burn(address account, uint256 amount) external {
        require(account == msg.sender, "You can't burn token of other address");
        _burn(account, amount);
    }

}