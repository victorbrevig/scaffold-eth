pragma solidity >=0.6.0 <0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Bloop is ERC20 {
    constructor() public ERC20("Bloop", "BLP") {
        // 1_000_000 BLP
        _mint(msg.sender, 1_000_000 * 10 ** 18);
    }
}