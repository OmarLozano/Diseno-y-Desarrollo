pragma solidity ^0.4.25;
contract Counter {
 	uint256 T;
	uint256 P;
	uint256 R;
	constructor () public {
   		 T = 10;
    		P = 5;
	}

	function producto() public{
    		R = T*P;
	}

	function multiplicacion() public{
    	R = R*2;
	}
}
