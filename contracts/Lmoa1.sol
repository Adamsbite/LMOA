// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BITE is ERC20 {
    address owner;

    constructor() ERC20("Lmoa", "LMO") {
        _mint(owner, 1000e18);
    }
        
 function _transfer(address from, address to, uint256 amount) internal virtual override {  
                 uint feeOnTransfer = (8 * amount) / 100;      
                  uint remainder = amount - feeOnTransfer;    
                super._transfer(from, to, remainder);    
                super._transfer(from, owner, feeOnTransfer); } };
                
        // if (from == address(0)) {
        //     revert ERC20InvalidSender(address(0));
        // }
        // if (to == address(0)) {
      
}
