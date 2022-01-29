pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BlobToken is ERC20 {
    constructor() ERC20("Blob", "BLB") {
        // 1_000_000_000 BLB total supply
        _mint(msg.sender, 1_000_000_000 * 10 ** 18);
    }
}


