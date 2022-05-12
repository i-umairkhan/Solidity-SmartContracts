pragma solidity 0.8.7;

contract SimpleStorage{
    struct People{
        uint256 favNumber;
        string name;
    }
    People[] public allPeoplels;
    mapping(string=>uint256) public myPeopels;

    function addPeople(uint256 _num,string memory _name) public{
        allPeoplels.push(People(_num,_name));
        myPeopels[_name] = _num;
    }
}   
