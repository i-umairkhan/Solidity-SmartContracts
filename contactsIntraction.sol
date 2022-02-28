pragma solidity^0.8.0;
// Calling a function of B contact in A contract

contract A{
    address addressB;
    function setaddressB(address _addressB) external{
        addressB = _addressB;
    }
    function callhelloworld() view external returns(string memory){
        B b = B(addressB);
        return b.helloworld();
    }

}
contract B{
    function helloworld() pure external returns (string memory){
        return 'helloworld';
    }
}
