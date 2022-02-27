pragma solidity^0.8.0;

contract MyContract{
    event NewTrade(
        uint date,
        address from,
        address to,
        uint amount
    );
    function Trade(uint amount,address to) external{
        emit  NewTrade(block.timestamp,msg.sender,to,amount);
    }
}
