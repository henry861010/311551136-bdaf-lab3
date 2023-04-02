# 311551136-bdaf-lab2  
This smart contract is like the bank, which you can deposit and withdraw the different ERC20-token in. and it provides two functions to call:  
* 1. `deposit(address token, uint256 amount)`: deposit the specific token with amount what you want.  
* 2. `withdraw(address token, uint256 amount)`: withdraw the specific token with amount what you want.  
  
Please note, When use `deposit(token,amount)` method, you need to set the `allowance(THIS_CONTRACT_ADRESS,amount)` method blong to what the token you want to store, to allow the contract transfer token from your account.

## 1. set the enviroment  
going to the folder of the program and running the following instructions in the shell:  
* 1. create the package.json file: `npm init`
* 2. install hardhat pachage: `npm install hardhat --save-dev`
* 3. install or upgrade the package: `npm install`
* 4. add the following enviroment variable into `.env` file:  
      1. API_URL = [YOUR_API_URL]   
      2. API_KEY = [YOUR_API_KEY]   
      3. PRIVATE_KEY = [YOUR_PRIVATE_KEY]   
      4. ETHERSCAN_API_KEY = [YOUR_ETHERSCAN_API_KEY]   
* 5. make sure the version of node.js up to v16.0.0
## 2. run program  
* 1. compile the contract with hardhat: `npx hardhat compile`
* 2. deploy the contract to goerli network with hardhat: `npx hardhat run scripts/deploy.js --network goerli`, and then you get the address of the deployed contract.
* 3. verify the contract on the goerli network with hardhat: `npx hardhat verify --network goerli [DEPLOYED_CONTRACT_ADDRESS]`
## 3. reference
* 1. how to deploy the contract with hardhat: https://docs.alchemy.com/docs/hello-world-smart-contract
* 2. how to verify the contract with hardhat: https://docs.alchemy.com/docs/submitting-your-smart-contract-to-etherscan

