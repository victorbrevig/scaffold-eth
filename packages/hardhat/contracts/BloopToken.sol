pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BloopToken is ERC20 {
    constructor() ERC20("Bloop", "BLP") {
        // 1_000_000_000 BLP total supply
        _mint(msg.sender, 1_000_000_000 * 10 ** 18);
    }
}
