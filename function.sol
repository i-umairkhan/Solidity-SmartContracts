pragma solidity ^0.8.7;

contract Mycontract{
    uint value;
    function getValue() public view returns(uint){
        return value;
    }
    function setValue(uint _value) public{
        value = _value;
    } 
}
