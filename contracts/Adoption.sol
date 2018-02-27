//pragma solidity just mean additional info only compiler cares about
pragma solidity ^0.4.17;

//Creating first contract for Adoption of your pet
contract Adoption {
	//public have automatic getters for later access
	address[16] public adopters;
	
	//this function just checks the validity of the petID
	//requires certain params. In this case, it is array between 0 and 15
	//if ID is okay, then address is denoted in msg.sender function 
	//return petID as a confirmation
	function adopt(uint petID) public returns (uint) {
		require(petID >= 0 && petID <= 15);

		adopters[petID] = msg.sender;

		return petID;
	}

	//this function call just makes it easier so we don't have to makes
	//16 API calls in the above function
	function getAdopters () public view returns(address[16]) {
		return adopters;
	}
	
}

