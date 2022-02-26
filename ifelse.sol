pragma solidity ^0.8.7;

contract MyContract{
    uint num;
    bool public isEvan;
    function SetVal(uint _num)public returns(uint){
        num = _num;
        return num;
    }
    function GetVal() public view returns(uint){
        return num;
    }

    function CheakEven(uint _num,bool _isEvan) public pure returns(bool){
        if(_num % 2 ==0)
        {
            _isEvan = true;
            return _isEvan;
        } else{
            _isEvan = false;
            return _isEvan;
        }
    }

}
