pragma solidity ^0.4.17;
  
// Asset test files, like from my Comp Intro course
// DeployedAddresses is when a fresh instance of the contract is tested on BC + gets address of contrkt
// Testing our own adoption contract

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
	Adoption adoption = Adoption(DeployedAddresses.Adoption());

	// assert test to see if user can adopt pet (POST)
	// setting the expected value of returns to be 8
	function testUserCanAdoptPet() public {
		uint returnedId = adoption.adopt(8);

		uint expected = 8;

		Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded.");
	}

	// Testing the retrieval of a single pet's Owner (GET)
	// Expected owner of contract is 'this'
	// Asset equal to the Owner ID
	function testGetAdopterAddressByPetId() public {
		address expected = this;

		address adopter = adoption.adopters(8);

		Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");

	}

	
}

