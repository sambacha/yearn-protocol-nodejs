import '@typechain/hardhat';
import 'dotenv/config';
import 'hardhat-deploy';
import 'hardhat-deploy-ethers';
import 'hardhat-contract-sizer';
import {
    utils
} from 'ethers';
import {
    HardhatUserConfig
} from 'hardhat/types';

function node(networkName: string) {
    const fallback = 'http://localhost:8545';
    const uppercase = networkName.toUpperCase();
    const uri = process.env[`ETHEREUM_NODE_${uppercase}`] || process.env.ETHEREUM_NODE || fallback;
    return uri.replace('{{NETWORK}}', networkName);
}

function accounts(networkName: string) {
    const uppercase = networkName.toUpperCase();
    const accounts =
        process.env[`ETHEREUM_ACCOUNTS_${uppercase}`] || process.env.ETHEREUM_ACCOUNTS || '';
    return accounts
        .split(',')
        .map((account) => account.trim())
        .filter(Boolean);
}

const mnemonic = 'test test test test test test test test test test test junk';

const config: HardhatUserConfig = {
    solidity: {
        version: '0.5.17',
        settings: {
            metadata: {
                bytecodeHash: "none",
            },
            optimizer: {
                enabled: true,
                runs: 200,
                details: {
                    yul: false,
                },
            },
        },
    },
    networks: {
        hardhat: {
            accounts: {
                mnemonic,
                count: 10,
                accountsBalance: utils.parseUnits('1', 36).toString(),
            },
            forking: {
                url: node('mainnet'),
                blockNumber: 11621050, // Jan 9, 2021
            },
        },
        mainnet: {
            url: node('mainnet'),
            accounts: accounts('mainnet'),
        },
        kovan: {
            url: node('kovan'),
            accounts: accounts('kovan'),
        },
    },
    namedAccounts: {
        deployer: 0,
    },
    contractSizer: {
        disambiguatePaths: false,
    },
    typechain: {
        outDir: 'src/types',
        target: 'ethers-v5',
    },
};

export default config;
