// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IERC20 {
    function _transfer(
        address _to,
        uint256 _value
    ) external returns (bool success);

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) external returns (bool success);
    
}
