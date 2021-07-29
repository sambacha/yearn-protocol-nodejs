
<!-- copyright 2020 yearn.finance && the contributors -->
<p align="center">
 <img src="https://raw.githubusercontent.com/gist/sambacha/9a62174a080ead34271ff5d187a24343/raw/02cad2900f4cedb87895cc57729030e095d2869f/gh_banner.svg" align="right" width="350">
	<h1 align="left">Yearn Protocol</h1>
 <h3 align="center"> </h3>
 <p align="center">
<align="center">
 </center>

> NodeJS Version

```
npm i yearn-finance-vaults@1.0.0
```


[![GitHub license](https://img.shields.io/badge/license-AGPL-blue.svg)](https://github.com/iearn-finance/yearn-protocol/blob/master/LICENSE)
![Lint](https://github.com/iearn-finance/yearn-protocol/workflows/Lint/badge.svg)
![Test](https://github.com/iearn-finance/yearn-protocol/workflows/Test/badge.svg)


[![Twitter Follow](https://img.shields.io/twitter/follow/iearnfinance.svg?label=iearnfinance&style=social)](https://twitter.com/iearnfinance) [![Discord](https://img.shields.io/discord/734804446353031319.svg?color=768AD4&label=discord&logo=https%3A%2F%2Fdiscordapp.com%2Fassets%2F8c9701b98ad4372b58f13fd9f65f966e.svg)](https://discordapp.com/channels/734804446353031319/) [![Telegram](https://img.shields.io/badge/chat-on%20Telegram-blue.svg)](https://t.me/yearnfinance) <img alt="Discourse users" src="https://img.shields.io/discourse/users?server=https%3A%2F%2Fgov.yearn.finance%2F">


Yearn Protocol is a set of Ethereum Smart Contracts focused on creating a simple way to generate high risk-adjusted returns for depositors of various assets via best-in-class lending protocols, liquidity pools, and community-made yield farming strategies on Ethereum.

Before getting started with this repo, please read:

-   [Andre's Overview Blog Post](https://medium.com/iearn/yearn-finance-v2-af2c6a6a3613), describing how yearn.finance works.
-   The [Delegated Vaults Blog Post](https://medium.com/iearn/delegated-vaults-explained-fa81f1c3fce2), explaining how the delegated vaults work.
-   [yETH Vault Explained](https://medium.com/iearn/yeth-vault-explained-c29d6b93a371), describing how the yETH vault works.

### Requirements

To run the project you need:

-   Python 3.8 local development environment and Node.js 10.x development environment for Ganache.
-   Brownie local environment setup. See instructions: [ETH Brownie](https://github.com/eth-brownie/brownie).
-   Local env variables for [Etherscan API](https://etherscan.io/apis) and [Infura](https://infura.io/) (`ETHERSCAN_TOKEN`, `WEB3_INFURA_PROJECT_ID`).
-   Local Ganache environment installed with `npm install -g ganache-cli@6.11`.


## Resources

- [Yearn Finance](https://yearn.finance)
- [Ethereum token lists](https://tokenlists.org/)
- [https://github.com/Uniswap/token-lists](https://github.com/Uniswap/token-lists)
- [Semantic versioning](https://github.com/Uniswap/token-lists/blob/master/README.md#semantic-versioning)

## Deployed Contracts Registry

Below is a list of relevant smart contracts and Github repositories for using and interacting with the Yearn product suite.

## Token Contracts

### YFI

The Yearn ecosystem is controlled by YFI token holders who submit and vote on proposals that govern the ecosystem.

| Token                                                                        | Address                                    |
| ---------------------------------------------------------------------------- | ------------------------------------------ |
| [YFI](https://etherscan.io/token/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e) | 0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e |

### v2 Yield Tokens

The v2 yield tokens can be used in one lender at a time. Currently being used on Curve’s Y Pool, Yearn’s yBTC pool and sUSD pool.

| Token                                                                              | Address                                    | Github                                                                           |
| ---------------------------------------------------------------------------------- | ------------------------------------------ | -------------------------------------------------------------------------------- |
| [yDAIv2](https://etherscan.io/address/0x16de59092dAE5CcF4A1E6439D611fd0653f0Bd01)  | 0x16de59092dAE5CcF4A1E6439D611fd0653f0Bd01 | [YDAIv2.sol](https://github.com/yearn/itoken/blob/master/contracts/YDAIv2.sol)   |
| [yUSDCv2](https://etherscan.io/address/0xd6aD7a6750A7593E092a9B218d66C0A814a3436e) | 0xd6aD7a6750A7593E092a9B218d66C0A814a3436e | [YUSDCv2.sol](https://github.com/yearn/itoken/blob/master/contracts/YUSDCv2.sol) |
| [yUSDTv2](https://etherscan.io/address/0x83f798e925BcD4017Eb265844FDDAbb448f1707D) | 0x83f798e925BcD4017Eb265844FDDAbb448f1707D | [YUSDTv2.sol](https://github.com/yearn/itoken/blob/master/contracts/YUSDTv2.sol) |
| [ysUSDv2](https://etherscan.io/address/0xF61718057901F84C4eEC4339EF8f0D86D2B45600) | 0xF61718057901F84C4eEC4339EF8f0D86D2B45600 | [YSUSDv2.sol](https://github.com/yearn/itoken/blob/master/contracts/YSUSDv2.sol) |
| [yTUSDv2](https://etherscan.io/address/0x73a052500105205d34daf004eab301916da8190f) | 0x73a052500105205d34daf004eab301916da8190f | [YTUSDv2.sol](https://github.com/yearn/itoken/blob/master/contracts/YTUSDv2.sol) |
| [yWBTCv2](https://etherscan.io/address/0x04Aa51bbcB46541455cCF1B8bef2ebc5d3787EC9) | 0x04Aa51bbcB46541455cCF1B8bef2ebc5d3787EC9 | [YWBTCv2.sol](https://github.com/yearn/itoken/blob/master/contracts/YWBTCv2.sol) |

### v3 Yield Tokens

The v3 yield tokens allow the underlying assets to be spread across multiple lenders. Currently being used on Curve’s BUSD pool.

| Token                                                                              | Address                                    | Github                                                                           |
| ---------------------------------------------------------------------------------- | ------------------------------------------ | -------------------------------------------------------------------------------- |
| [yDAIv3](https://etherscan.io/address/0xC2cB1040220768554cf699b0d863A3cd4324ce32)  | 0xC2cB1040220768554cf699b0d863A3cd4324ce32 | [YDAIv3.sol](https://github.com/yearn/itoken/blob/master/contracts/YDAIv3.sol)   |
| [yUSDCv3](https://etherscan.io/address/0x26EA744E5B887E5205727f55dFBE8685e3b21951) | 0x26EA744E5B887E5205727f55dFBE8685e3b21951 | [YUSDCv3.sol](https://github.com/yearn/itoken/blob/master/contracts/YUSDCv3.sol) |
| [yUSDTv3](https://etherscan.io/address/0xE6354ed5bC4b393a5Aad09f21c46E101e692d447) | 0xE6354ed5bC4b393a5Aad09f21c46E101e692d447 | [YUSDCv3.sol](https://github.com/yearn/itoken/blob/master/contracts/YUSDCv3.sol) |
| [yBUSDv3](https://etherscan.io/address/0x04bC0Ab673d88aE9dbC9DA2380cB6B79C4BCa9aE) | 0x04bC0Ab673d88aE9dbC9DA2380cB6B79C4BCa9aE | [YBUSDv3.sol](https://github.com/yearn/itoken/blob/master/contracts/YBUSDv3.sol) |

## Vault Contracts

Vaults follow unique strategies that are designed to maximize yield of the deposited asset and minimize risk. The vaults are maintained by a `Controller` which oversees the strategy execution. Strategies' generated profits are used to buy respective vault underlying asset.

The `Controller` contract can be found [here](https://etherscan.io/address/0x9e65ad11b299ca0abefc2799ddb6314ef2d91080#code) and the source code can be found [here](https://github.com/yearn/yearn-protocol/blob/develop/contracts/controllers/Controller.sol).

### Vaults

| Vault                                                                                             | Address                                    | GitHub                                                                                         |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------ | ---------------------------------------------------------------------------------------------- |
| [WETH](https://etherscan.io/address/0xe1237aa7f535b0cc33fd973d66cbf830354d16c7)                   | 0xe1237aa7f535b0cc33fd973d66cbf830354d16c7 | [yWETH.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yWETH.sol)   |
| [YFI](https://etherscan.io/address/0xba2e7fed597fd0e3e70f5130bcdbbfe06bb94fe1)                    | 0xba2e7fed597fd0e3e70f5130bcdbbfe06bb94fe1 | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [curve.fi/3pool LP](https://etherscan.io/address/0x9cA85572E6A3EbF24dEDd195623F188735A5179f#code) | 0x9cA85572E6A3EbF24dEDd195623F188735A5179f | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [curve.fi/y LP](https://etherscan.io/address/0x5dbcf33d8c2e976c6b560249878e6f1491bca25c)          | 0x5dbcf33d8c2e976c6b560249878e6f1491bca25c | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [curve.fi/busd LP](https://etherscan.io/address/0x2994529c0652d127b7842094103715ec5299bbed)       | 0x2994529c0652d127b7842094103715ec5299bbed | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [curve.fi/sbtc LP](https://etherscan.io/address/0x7ff566e1d69deff32a7b244ae7276b9f90e9d0f6)       | 0x7ff566e1d69deff32a7b244ae7276b9f90e9d0f6 | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [DAI](https://etherscan.io/address/0xacd43e627e64355f1861cec6d3a6688b31a6f952)                    | 0xacd43e627e64355f1861cec6d3a6688b31a6f952 | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [TUSD](https://etherscan.io/address/0x37d19d1c4e1fa9dc47bd1ea12f742a0887eda74a)                   | 0x37d19d1c4e1fa9dc47bd1ea12f742a0887eda74a | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [USDC](https://etherscan.io/address/0x597ad1e0c13bfe8025993d9e79c69e1c0233522e)                   | 0x597ad1e0c13bfe8025993d9e79c69e1c0233522e | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [USDT](https://etherscan.io/address/0x2f08119c6f07c006695e079aafc638b8789faf18)                   | 0x2f08119c6f07c006695e079aafc638b8789faf18 | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [GUSD](https://etherscan.io/address/0xec0d8d3ed5477106c6d4ea27d90a60e594693c90)                   | 0xec0d8d3ed5477106c6d4ea27d90a60e594693c90 | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [curve.fi/compound LP](https://etherscan.io/address/0x629c759d1e83efbf63d84eb3868b564d9521c129)   | 0x629c759D1E83eFbF63d84eb3868B564d9521C129 | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |
| [curve.fi/mUSD LP](https://etherscan.io/address/0x1AEf73d49Dedc4b1778d0706583995958Dc862e6)       | 0x1AEf73d49Dedc4b1778d0706583995958Dc862e6 | [yVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yVault.sol) |

### Strategies

| Strategy                                                                                                   | Address                                    | GitHub                                                                                                                                               | Vault                                                                                           |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| [StrategyCurve3CrvVoterProxy](https://etherscan.io/address/0xC59601F0CC49baa266891b7fc63d2D5FE097A79D)     | 0xC59601F0CC49baa266891b7fc63d2D5FE097A79D | [StrategyCurve3CrvVoterProxy.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyCurve3CrvVoterProxy.sol)         | [curve.fi/3pool LP](https://etherscan.io/address/0x9ca85572e6a3ebf24dedd195623f188735a5179f)    |
| [StrategyMKRVaultDAIDelegate](https://etherscan.io/address/0x932fc4fd0eee66f22f1e23fba74d7058391c0b15)     | 0x932fc4fd0eee66f22f1e23fba74d7058391c0b15 | [StrategyMKRVaultDAIDelegate.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyMKRVaultDAIDelegate.sol)         | [WETH](https://etherscan.io/address/0xe1237aa7f535b0cc33fd973d66cbf830354d16c7)                 |
| [StrategyYFIGovernance](https://etherscan.io/address/0x395f93350d5102b6139abfc84a7d6ee70488797c)           | 0x395f93350d5102b6139abfc84a7d6ee70488797c | [StrategyYFIGovernance.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyYFIGovernance.sol)                     | [YFI](https://etherscan.io/address/0xba2e7fed597fd0e3e70f5130bcdbbfe06bb94fe1)                  |
| [StrategyCurveYCRVVoter](https://etherscan.io/address/0xc999fb87aca383a63d804a575396f65a55aa5ac8)          | 0xc999fb87aca383a63d804a575396f65a55aa5ac8 | [StrategyCurveYCRVVoter.sol](https://github.com/yearn/yearn-protocol/blob/master/contracts/strategies/StrategyCurveYCRVVoter.sol)                    | [curve.fi/y LP](https://etherscan.io/address/0x5dbcf33d8c2e976c6b560249878e6f1491bca25c)        |
| [StrategyCurveYBUSD](https://etherscan.io/address/0xb15ee8e74dac2d77f9d1080b32b0f3562954aee9)              | 0xb15ee8e74dac2d77f9d1080b32b0f3562954aee9 | [StrategyCurveYBUSD.sol](https://github.com/yearn/yearn-protocol/blob/master/contracts/strategies/StrategyCurveYBUSD.sol)                            | [curve.fi/busd LP](https://etherscan.io/address/0x2994529c0652d127b7842094103715ec5299bbed)     |
| [StrategyCurveSBTC](https://etherscan.io/address/0x4feeaeced575239b46d70b50e13532ecb62e4ea8)               | 0x4feeaeced575239b46d70b50e13532ecb62e4ea8 | [StrategyCurveSBTC.sol](https://github.com/yearn/yearn-protocol/blob/master/contracts/strategies/StrategyCurveSBTC.sol)                              | [curve.fi/sbtc LP](https://etherscan.io/address/0x7ff566e1d69deff32a7b244ae7276b9f90e9d0f6)     |
| [StrategyDAICurve](https://etherscan.io/address/0xaa880345a3147a1fc6889080401c791813ed08dc)                | 0xaa880345a3147a1fc6889080401c791813ed08dc | [StrategyDAICurve.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyDAICurve.sol)                               | [DAI](https://etherscan.io/address/0xacd43e627e64355f1861cec6d3a6688b31a6f952)                  |
| [StrategyTUSDypool](https://etherscan.io/address/0xe3a711987612bfd1dafa076506f3793c78d81558)               | 0xe3a711987612bfd1dafa076506f3793c78d81558 | [StrategyTUSDypool.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyTUSDypool.sol)                             | [TUSD](https://etherscan.io/address/0x37d19d1c4e1fa9dc47bd1ea12f742a0887eda74a)                 |
| [StrategyUSDC3pool](https://etherscan.io/address/0x4720515963a9d40ca10b1ade806c1291e6c9a86d)               | 0x4720515963a9d40ca10b1ade806c1291e6c9a86d | [StrategyUSDC3pool.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyUSDC3pool.sol)                             | [USDC](https://etherscan.io/address/0x597ad1e0c13bfe8025993d9e79c69e1c0233522e)                 |
| [StrategyUSDT3pool](https://etherscan.io/address/0xc7e437033d849474074429cbe8077c971ea2a852)               | 0xc7e437033d849474074429cbe8077c971ea2a852 | [StrategyUSDT3pool.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyUSDT3pool.sol)                             | [USDT](https://etherscan.io/address/0x2f08119c6f07c006695e079aafc638b8789faf18)                 |
| [StrategyCurveCompoundVoterProxy](https://etherscan.io/address/0x530da5aef3c8f9ccbc75c97c182d6ee2284b643f) | 0x530da5aef3c8f9ccbc75c97c182d6ee2284b643f | [StrategyCurveCompoundVoterProxy.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyCurveCompoundVoterProxy.sol) | [curve.fi/compound LP](https://etherscan.io/address/0x845838df265dcd2c412a1dc9e959c7d08537f8a2) |
| [StrategyCurvemUSDVoterProxy](https://etherscan.io/address/0xBA0c07BBE9C22a1ee33FE988Ea3763f21D0909a0)     | 0xBA0c07BBE9C22a1ee33FE988Ea3763f21D0909a0 | [StrategyCurvemUSDVoterProxy.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyCurvemUSDVoterProxy.sol)         | [curve.fi/mUSD LP](https://etherscan.io/address/0x1aef73d49dedc4b1778d0706583995958dc862e6)     |

## Delegated Vault Contracts

Volatile assets can also participate in yield farming strategies as part of the Delegated Vaults. Currently, there is only one Delegated Vault: aLINK. The `Controller` deposits LINK into AAVE and borrows stable coins \(USDC\). The initial health factor of these loans is always above 4, and if the health factor drops below 4 at any time the `Controller` repays a portion of the debt in order to maintain a health factor above 4.

The stable coins borrowed \(e.g., USDC, DAI, USDT, etc.\) depend on the strategy selected by the `Controller`. After obtaining stable coins the `Controller` will deposit them into one of the yVaults identified above.

The aLINK vault uses the `StrategyControllerV2` [contract](https://etherscan.io/address/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b#code). The source code for `StrategyControllerV2` is [here](https://github.com/yearn/vaults/blob/master/contracts/controllers/StrategyControllerV2.sol).

| Strategy                                                                                     | Strategy                                   | GitHub                                                                                                                   |
| -------------------------------------------------------------------------------------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| [StrategyVaultUSDC](https://etherscan.io/address/0x25faca21dd2ad7edb3a027d543e617496820d8d6) | 0x25faca21dd2ad7edb3a027d543e617496820d8d6 | [StrategyVaultUSDC.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/strategies/StrategyVaultUSDC.sol) |

| Vault                                                                            | Address                                    | GitHub                                                                                                           |
| -------------------------------------------------------------------------------- | ------------------------------------------ | ---------------------------------------------------------------------------------------------------------------- |
| [aLINK](https://etherscan.io/address/0x29e240cfd7946ba20895a7a02edb25c210f9f324) | 0x29e240cfd7946ba20895a7a02edb25c210f9f324 | [yDelegatedVault.sol](https://github.com/yearn/yearn-protocol/blob/develop/contracts/vaults/yDelegatedVault.sol) |

## Governance Contracts

YFI holders govern the Yearn ecosystem and are eligible to receive a portion of protocol profits. Therefore, YFI represents a right to govern the platform and a claim on earnings. Profits are obtained from each of Yearn's products. In order to claim profits, YFI holders stake their tokens into the Governance contract.

| Contract                                                                                                         | Status | Address                                    |
| ---------------------------------------------------------------------------------------------------------------- | ------ | ------------------------------------------ |
| [Governance Staking \(v2\)](https://etherscan.io/address/0xba37b002abafdd8e89a1995da52740bbc013d992#code)        | Live   | 0xba37b002abafdd8e89a1995da52740bbc013d992 |
| [YearnGovernance \(Balancer v1\)](https://etherscan.io/address/0x3a22df48d84957f907e67f4313e3d43179040d6e#code)  | Old    | 0x3a22df48d84957f907e67f4313e3d43179040d6e |
| [YearnRewards \(Yearn v1\)](https://etherscan.io/address/0x0001fb050fe7312791bf6475b96569d83f695c9f#code)        | Old    | 0x0001fb050fe7312791bf6475b96569d83f695c9f |
| [YearnRewards \(Balancer v1\)](https://etherscan.io/address/0x033e52f513f9b98e129381c6708f9faa2dee5db5#code)     | Old    | 0x033e52f513f9b98e129381c6708f9faa2dee5db5 |
| [YearnRewards \(Gov. Staking v1\)](https://etherscan.io/address/0xb01419e74d8a2abb1bbad82925b19c36c191a701#code) | Old    | 0xb01419e74d8a2abb1bbad82925b19c36c191a701 |

## Status and Info Contracts

| Utility                                                                                           | Summary                                                                                                                                                                                                                               |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [YRegistry](https://etherscan.io/address/0x3ee41c098f9666ed2ea246f4d2558010e59d63a0#code)         | The Vault Registry is the single source of truth for active Yearn vaults. The registry allows users to query for active Yearn vaults and vault metadata \(details [here](https://hackmd.io/JDWZ6BAuSmm-VRQRp-bZXw#Vault-Registry-)\). |
| [UniswapROI](https://etherscan.io/address/0xd04ca0ae1cd8085438fdd8c22a76246f315c2687#code)        | On-chain uniswap pool ROI calculator                                                                                                                                                                                                  |
| [APROracle](https://etherscan.io/address/0x97ff4a1b787ade6b94cca95b61f79417c673331d#code)         | Allows on-chain rate comparison between Compound, Fulcrum, Aave, and dYdX.                                                                                                                                                            |
| [UniswapAPR](https://etherscan.io/address/0x4c70D89A4681b2151F56Dc2c3FD751aBb9CE3D95#code)        | An on-chain uniswap pool APR calculator. It calculates all values in ETH adjusted for the last year.                                                                                                                                  |
| [IEarnAPR](https://etherscan.io/address/0x9cad8ab10daa9af1a9d2b878541f41b697268eec#code)          | Contract for on-chain APR decision trees between Compound, Fulcrum, Aave, and dYdX.                                                                                                                                                   |
| [IEarnManager](https://etherscan.io/address/0x318135fbd0b40d48fcef431ccdf6c7926450edfb#code)      | On-chain stateless execution. Recommendations based on IearnAPR.                                                                                                                                                                      |
| [APRWithPoolOracle](https://etherscan.io/address/0xAE8F37F0e8AD690486bFA2495113d7E94B7a7Ba6#code) | APR used for stateless `recommend()` function. Can be used to change the recommended provider.                                                                                                                                        |
| [IEarnAPRWithPool](https://etherscan.io/address/0xcD5F61c392B61F440991DEf98FF6Af07FC6900D4#code)  | APR used for stateless `recommend()` function. Can be used to change the recommended provider.                                                                                                                                        |

## Utility Contracts

| Utility                                                                                       | Address                                    |
| --------------------------------------------------------------------------------------------- | ------------------------------------------ |
| [Curve's yPool](https://etherscan.io/address/0xdF5e0e81Dff6FAF3A7e52BA697820c5e32D806A8#code) | 0xdF5e0e81Dff6FAF3A7e52BA697820c5e32D806A8 |
