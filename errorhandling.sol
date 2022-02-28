pragma solidity^0.8.0;

contract MyContract{
    function willthrowERROR() public {
        B b = new B();
        // b.bar();
        address(b).call(abi.encodePacked("bar()"));
    }
}

contract B{
    function bar() external pure{
        revert("ERROR 404");
    }
}
