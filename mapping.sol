pragma solidity^0.8.0;

contract MyContract{
    // Mapping are key : value pair data structures

    // Declaration

    mapping (uint => bool) students;
    mapping(uint => mapping(uint => bool))  approvel; // Nested Mapping
    mapping(uint => uint[]) scores; // Array mapping

    function foo() external{
        students[1] = true;
        students[2] = false;

        students[1];

        students[2] = true;

        delete students[2];

        students[3]; // Students 3 not exsists so it will have default value

        // Nested Mapping

        approvel[1][1] = true;
        approvel[1][2] = false;
        delete approvel[1][2];

        // Array Mapping

        scores[1].push(1);
        scores[2].push(2);
        scores[1][0];
        scores[1][2] = 3;
        delete scores[1][2];
    }

}
