# impl list
## CampToken(CTK)
Transfer 可能な Token. 基本的に支払いはこれで行われる。
* ChainLink から ETH <-> JPY を取得する機能
  * 残念ながら JPY <-> ETH はないので、 USD <-> ETH で代用
* ETH をユーザーから取得して、レートを基に CTK を転送する機能
  * その際、手数料を取る
  * TCKは burn する
* CTK をユーザーから取得して、レートを基に ETH を転送する機能

## CampingGround
キャンプ場用の SC. CTK がここに集まる。Pool 的存在
* ユーザーから支払を受け取る機能
* Check to Earn ユーザーへ報酬を支払う機能
* 預入金をユーザーと紐づけして管理する機能
  * address, token

## TrustToken(TTK)
Transfer 不可能な Token. 信頼スコアとして付与
* 綺麗に利用して帰ったのが確認できた時、付与する機能
  * 良質なレビューを書く で付与
* 預入金を回収しない選択をした時、付与する機能


* https://qiita.com/ryu-yama/items/4c37d5ff0fbc5364e569
* [Payable , Withdraw](https://cattail.co.jp/techcode/2784/)

# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```
