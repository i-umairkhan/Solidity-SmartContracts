pragma solidity^0.8.0;
contract MyContract{
    function sendEather(address payable recipent) external{
        recipent.transfer(1 ether);
    }
}
