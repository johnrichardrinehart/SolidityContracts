// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _idx, uint256 _simpleStorageNumber) public {
        SimpleStorage con = SimpleStorage(address(simpleStorageArray[_idx]));
	con.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _idx) public view returns (uint256) {
        SimpleStorage con = SimpleStorage(address(simpleStorageArray[_idx]));
	return con.retrieve();
    }
}
