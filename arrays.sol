pragma solidity^0.8.0;

contract MyContract{
    // There are two types of arrays in solidity
    // 1- Storage (Not saved in blockchain)
    // 2- Memory (Stored in Blockchain)


    // Storage 
    uint[] myArr;
    function foo() external{
        myArr.push(1);
        myArr.push(2); // We can use push meathod in storage arrays

        myArr[0];
        myArr[1];

        myArr[0] = 10;

        delete myArr[0]; // length of array will remain same it will put 0 on index

        for(uint i=0;i<2;i++)
        {
            myArr[i];
        }
    }

    // Memory array
    function bar() external pure{
    uint[] memory arr = new uint[](5);
    arr[0] = 1;
    arr[1] = 2;
    }

    function foobar(uint[] calldata myarg) pure external returns(uint[] memory){
        return myarg;
    }


}
