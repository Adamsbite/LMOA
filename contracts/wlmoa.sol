
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WLMAOToken is ERC20("IERC20", "WTK"){
    IERC20 LMAO;
      constructor(address _Bite) {
            // bite = IERC20(_LMAO);
      }

      function deposit(uint _amount) public {
        LMAO.transferFrom(msg.sender, address(this), _amount);
        uint calcAmountall = (92 * _amount) / 100;
        _mint(msg.sender, calcAmountall);
      }

      function WithdrawToken (uint _amount) public {
        require (balanceOf (msg.sender) >= _amount, "balance must be greater than amount");
        LMAO.transfer(msg.sender, _amount);
        _burn(msg.sender, _amount);


      }


}
