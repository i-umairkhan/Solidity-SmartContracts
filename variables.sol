pragma solidity ^0.8.7;

contract VariablesInSolidity{
    //1.  Fixed size types
    bool IsReady;
    uint age;
    address recipent;
    bytes32 data;
    //2.  Variables size types
    string name;
    bytes _data;
    uint[] amounts;
    mapping(uint => string) users;
    //3. User defined types
    struct usersForm{
        uint id;
        string name;
        uint[] friendlist;
    }
    enum Color{
        red,blue,green
    }

}
