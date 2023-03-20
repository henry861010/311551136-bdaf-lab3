//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract lab3 {

	mapping(address => mapping(address => uint256)) account_record;  //first: client, second: token(smart contract)
	event transfer(address from,address to,address token,uint256 amount);
	
	constructor() {
    	}
    	
    	
    	modifier IFlegal(address token,uint256 amount){
    		require(account_record[msg.sender][token]>=amount,"the amount of token in the account is not enough!");
    		_;
    	}
    	
    	
    	function deposit(address token, uint256 amount) external {
    		try ERC20(token).transferFrom(msg.sender,address(this),amount){
    			account_record[msg.sender][token]+=amount;
    			emit transfer(msg.sender,address(this),token,amount);
    		}catch{
    			revert("transfer failed");
    		}

    	}

	function withdraw(address token, uint256 amount) IFlegal(token,amount) external {
		try ERC20(token).transfer(msg.sender,amount){
			account_record[msg.sender][token]-=amount;
			emit transfer(address(this),msg.sender,token,amount);
		}catch{
			revert("transfer failed");
		}
	}
}
