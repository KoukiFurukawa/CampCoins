// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract CampingGround is IERC20
{
    IERC20 public token;
    mapping(address, uint256) private deposit_list;

    // IERC20規格のCampTokenを利用する
    constructor(address tokenAddress) {
        token = IERC20(tokenAddress);
    }

    // todo --impl ユーザーに報酬を渡す
    function Send_Token(address _sender) public
    {
        
    }

    // todo --impl 支払機能
    function Pay_camp_fee(address _sender, uint256 fee) public
    {

    }

    // todo --impl 預り金実装
    function Deposit(address _sender, uint256 _amount) private
    {
        
    }

}