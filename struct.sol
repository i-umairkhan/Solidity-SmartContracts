pragma solidity^0.8.0;

contract MyContract{
    struct User{
        string name;
        address addr;
    }
    // Array of structs
    User[] users;
    // Mapping of Structs
    mapping(uint => User) userlist;

    function foo()external {
        User memory user1 = User("Umair",msg.sender);
        User memory user2 = User("khan",msg.sender);
        user1.name;
        user1.addr;
        delete user1;
        users.push(user2);
        userlist[1]= user1;
    }
}
