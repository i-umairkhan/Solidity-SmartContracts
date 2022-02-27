pragma solidity^0.8.0;

contract MyContract{
    mapping (address=>uint) balances;
    function invest() external payable{
        if(msg.value < 1000 ){
            revert();
        }
        balances[msg.sender] = msg.value;
    }
    function balanceof() external view returns(uint){
        return address(this).balance;
    }
}
