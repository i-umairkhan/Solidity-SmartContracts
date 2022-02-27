pragma solidity ^0.8.0;

contract MyContract{
    uint[] public arr = [1,2,3,4,5];
    uint[] public arr2;
    function addVal()external returns(uint[] memory){
        for(uint i=0;i<5;i++){
            arr2.push(arr[i] + 2);
        }
    return arr2;
    }

}
