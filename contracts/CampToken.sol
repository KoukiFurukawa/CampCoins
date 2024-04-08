// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// import "hardhat/console.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract CampToken is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, OwnableUpgradeable, UUPSUpgradeable
{
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) initializer public {
        __ERC20_init("CampToken", "CTK");
        __ERC20Burnable_init();
        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        onlyOwner
        override
    {}

    // SCの説明を返す
    function description()
        external
        view
        virtual
        override
        returns (string memory)
    {
        return "CampToken <-> ETH. CampToken is StableCoin that relating ETH <-> JPY";
    }

    // Version を返す
    function version() external view virtual override returns (uint256) {
        return 1;
    }

    // 計算に使う
    function decimals() external view virtual override returns (uint8) {
        // For both ETH/USD and JPY/USD, decimals are static being 8
        return 8;
    }

    // todo --impl ETHをCTKに変換
    function Exchange_ETH_to_CTK(address user) public
    {

    }

    // todo --impl ETH <-> JPY を取得
    function Get_exchange_rate() private
    {

    }

    // todo --impl 手数料を減らした鋳造量を返す
    function Get_mint_quantity(uint256 deposit) private
    {
        
    }

    // todo --impl 送信された CTK を burnする
    function Burn_CTK(
        address _sender,
        uint256 quantity
    ) public
    {
        
    }
    
}