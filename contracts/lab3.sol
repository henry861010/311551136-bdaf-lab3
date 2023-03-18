//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract lab3 is ERC20 {
	constructor() ERC20("311551136-bdaf-lab3", "lab3") {
    	}
    	
    	
 
    	modifier IFenough(address account,uint256 amount){
    		require(balanceOf(account)>=amount,"The balance of account is not enough.");
    		_;
    	}
    	
    	modifier IFowner(address account){
    		require(msg.sender==account,"This account is not belong to you.So you can't do it");
    		_;
    	}
    	
    	
    	function deposit(address account, uint256 amount) IFowner(account) public {
    		_mint(account, amount);
    	}

	function withdraw(address account, uint256 amount) IFowner(account)  IFenough(account,amount) public {
		_burn(account, amount);
	}
}
