// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import './Simple_Storage.sol';


contract StorageFactory {
SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public{
        SimpleStorage simplestorage = new SimpleStorage();
        simpleStorageArray.push(simplestorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _num,string memory _name)public{
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).addPeople(_num,_name);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(string memory){
      return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).getPeople(0);
    }

}
